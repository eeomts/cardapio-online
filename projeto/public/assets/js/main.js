$(document).ready(function () {

    // SUBMIT FORMS PELO ID USANDO AJAX JQUERY 2025
    $(document).on("submit", "#frm-cadastro, #frm-login, #formUsuario", function (e) {
        e.preventDefault();
        
        var form = $(this);
        var formId = form.attr('id');
        var actionUrl = form.attr('action');
        
        console.log("Form submit capturado:", formId, "Action:", actionUrl);

        // Desabilita o botão submit para evitar duplo envio
        var submitBtn = form.find('button[type="submit"], input[type="submit"]');
        if (formId === 'formUsuario') {
            submitBtn = $('#btnSalvar');
        }
        if (submitBtn.length) {
            submitBtn.prop('disabled', true);
        }

        $.ajax({
            type: "POST", 
            url: actionUrl, 
            data: form.serialize(), 
            dataType: "json",
            success: function (retorno) {
                console.log("Sucesso AJAX:", retorno);
                
                // Reabilita o botão
                if (submitBtn.length) {
                    submitBtn.prop('disabled', false);
                }
                
                // Mostra mensagem usando toastr via Default
                if (retorno && retorno.message) {
                    var msgType = retorno.type || 'success';
                    var msgTime = retorno.time || 3000;
                    // Sempre usa Default.message que usa toastr
                    if (typeof Default !== 'undefined' && Default.message) {
                        Default.message(retorno.message, msgTime, msgType);
                    } else if (typeof toastr !== 'undefined') {
                        // Fallback direto para toastr se Default não estiver disponível
                        toastr[msgType](retorno.message);
                    } else {
                        alert(retorno.message);
                    }
                }

                // Redirect apenas se tiver URL e NÃO for formUsuario
                if (retorno && retorno.url && formId !== 'formUsuario') {
                    if (retorno.type === 'success' && typeof Default !== 'undefined' && Default.redirect) {
                        Default.redirect(retorno.url, 3000);
                    }
                }

                // Reload
                if (retorno && retorno.reload === 'reload') {
                    // Para formUsuario, dispara evento customizado em vez de reload completo
                    if (formId === 'formUsuario') {
                        setTimeout(function() {
                            $(document).trigger('usuarioSalvo');
                        }, 500);
                    } else {
                        setTimeout(function() {
                            location.reload();
                        }, 2000);
                    }
                }
            }, 
            error: function (xhr, status, error) {
                console.log("ERRO AJAX:", xhr.responseText, "Status:", status, "Error:", error);
                
                // Reabilita o botão
                if (submitBtn.length) {
                    submitBtn.prop('disabled', false);
                }
                
                // Tenta parsear a resposta mesmo em erro (pode ser JSON válido com status HTTP diferente)
                var retorno = null;
                try {
                    if (xhr.responseText && xhr.responseText.trim() !== '') {
                        retorno = JSON.parse(xhr.responseText);
                    }
                } catch (e) {
                    console.log("Resposta não é JSON válido:", xhr.responseText);
                }
                
                if (retorno && retorno.message) {
                    // É JSON válido, trata como sucesso
                    var msgType = retorno.type || 'error';
                    // Sempre usa Default.message que usa toastr
                    if (typeof Default !== 'undefined' && Default.message) {
                        Default.message(retorno.message, 3000, msgType);
                    } else if (typeof toastr !== 'undefined') {
                        // Fallback direto para toastr se Default não estiver disponível
                        toastr[msgType](retorno.message);
                    } else {
                        alert(retorno.message);
                    }
                    
                    // Reload se necessário
                    if (retorno.reload === 'reload' && formId === 'formUsuario') {
                        setTimeout(function() {
                            $(document).trigger('usuarioSalvo');
                        }, 500);
                    }
                } else {
                    // Não é JSON válido, mostra erro genérico usando toastr
                    if (typeof Default !== 'undefined' && Default.message) {
                        Default.message("Erro inesperado ao enviar o formulário.", 3000, "error");
                    } else if (typeof toastr !== 'undefined') {
                        toastr.error("Erro inesperado ao enviar o formulário.");
                    } else {
                        alert("Erro inesperado ao enviar o formulário.");
                    }
                }
            }
        });
        
        return false;
    });

});
