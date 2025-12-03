$(document).ready(function () {

    // SUBMIT FORMS PELO ID USANDO AJAX JQUERY 2025
    $('#frm_teste, #frm-login, #frm-modal, #frm-perfil, #frm-faccoes, #frm-cadastro-new').submit(function (e) {

        e.preventDefault(); // avoid to execute the actual submit of the form.
        var form = $(this);
        var actionUrl = form.attr('action');
        $.ajax({
            type: "POST",
            url: actionUrl,
            data: form.serialize(), // serializes the form's elements.
                             
            success: function (retorno) {
                retorno = $.parseJSON(retorno);
                Default.message(retorno['message'], false, retorno['type']);
                if (retorno['type'] == 'success' || 'warning') {
                    Default.redirect(retorno['url'], 1500);
                }
                if (retorno['reload'] == 'reload') {
                    location.reload(2000);
                }
            }
        });
    });


    // CHAMADA DE MODALS -> adicione o atributo data-modal="id-do-modal" no botao de chamada
    document.querySelectorAll("[data-modal]").forEach(btn => {
        btn.addEventListener("click", () => {
            const modalId = btn.getAttribute("data-modal");
            const modal = document.getElementById(modalId);

            if (modal) modal.classList.add("active");
        });
    });

    document.querySelectorAll("[data-close]").forEach(btn => {
        btn.addEventListener("click", () => {
            const modal = btn.closest(".modal-overlay");
            modal.classList.remove("active");
        });
    });

    document.querySelectorAll(".modal-overlay").forEach(overlay => {
        overlay.addEventListener("click", (e) => {
            if (e.target === overlay) overlay.classList.remove("active");
        });
    });
    // exemplo 
    // <button data-modal="modalNovoUsuario">+ Novo Usuário</button>
    // *chama ->
    //     <div class="modal-overlay" id="modalNovoUsuario">
    //     <div class="modal">
    //         <button class="modal-close" data-close>X</button>
    //         <h2>Novo Usuário</h2>
    //     </div>
    // </div>





});
