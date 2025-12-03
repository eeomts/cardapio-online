<?php
class Main
{


    public $db;

    /* construct */
    function __construct()
    {

        $this->db = new DB();
    }

    // crud users

    public function createUser($post)
    {


        $verify_tel_telefone = $this->db->executeSql("SELECT * FROM custom_usuarios WHERE tel_telefone = :tel_telefone", [
            ':tel_telefone' => $post['tel_telefone']
        ]);

        if (count($verify_tel_telefone) > 0) {
            return  [
                'type' => 'error',
                'message' => 'Telefone já cadastrado!'
            ];
        } else {

            $nome = $post['nome'] ?? null;
            $tel_telefone = $post['tel_telefone'] ?? null;
            $cargo = $post['cargo'] ?? null;
            $senha = password_hash($post['senha'], PASSWORD_BCRYPT) ?? null;
            $created = date('Y-m-d H:i:s');
            $sql = "INSERT INTO custom_usuarios (nome, tel_telefone, cargo, senha, created) VALUES (:nome, :tel_telefone, :cargo, :senha, :created)";

            $this->db->executeSql($sql, [
                ':nome' => $nome,
                ':tel_telefone' => $tel_telefone,
                ':cargo' => $cargo,
                ':senha' => $senha,
                ':created' => $created
            ]);

            return  [
                'type' => 'success',
                'message' => 'Usuário cadastrado com sucesso!'
            ];
        }
    }

    public function getAllUsers()
    {
        $sql = "SELECT * FROM custom_usuarios ORDER BY id DESC";
        return $this->db->executeSql($sql);
    }

    public function deleteUser($id)
    {
        $sql = "UPDATE custom_usuarios SET deleted = 1 WHERE id = :id";
        $this->db->executeSql($sql, [
            ':id' => $id
        ]);

        return  [
            'type' => 'success',
            'message' => 'Usuário deletado com sucesso!'
        ];
    }

    public function editUser($post, $id)
    {
        $nome = $post['nome'] ?? null;
        $tel_telefone = $post['tel_telefone'] ?? null;
        $cargo = $post['cargo'] ?? null;

        $sql = "UPDATE custom_usuarios SET nome = :nome, tel_telefone = :tel_telefone, cargo = :cargo WHERE id = :id";
        $this->db->executeSql($sql, [
            ':nome' => $nome,
            ':tel_telefone' => $tel_telefone,
            ':cargo' => $cargo,
            ':id' => $id
        ]);

        return  [
            'type' => 'success',
            'message' => 'Usuário editado com sucesso!'
        ];
    }

    public function adminLogin($post)
    {

        global $ses;

        $tel_telefone = $post['tel_telefone'] ?? null;
        $senha = $post['senha'] ?? null;

        if (!$tel_telefone || !$senha) {
            return [
                'type' => 'error',
                'message' => 'Preencha todos os campos.'
            ];
        }


        $user = $this->db->executeSql(
            "SELECT id, nome, tel_telefone, senha, nivel, deleted 
         FROM custom_usuarios 
         WHERE tel_telefone = :tel_telefone AND deleted = 0 LIMIT 1",
            [':tel_telefone' => $tel_telefone]
        );

        if (empty($user)) {
            return [
                'type' => 'error',
                'message' => 'Usuário não encontrado.'
            ];
        }

        $user = $user[0];


        if (!password_verify($senha, $user['senha'])) {
            return [
                'type' => 'error',
                'message' => 'Senha incorreta.'
            ];
        }


        $ses->init(36000);
        $ses->addSession('admin_id', $user['id']);
        $ses->addSession('admin_nome', $user['nome']);
        $ses->addSession('admin_tel_telefone', $user['tel_telefone']);
        $ses->addSession('admin_nivel', $user['nivel']);
        $ses->addSession('logado_admin', true);

        return [
            'type' => 'success',
            'message' => 'Login realizado com sucesso!',
            'redirect' => BASE_URL . "admin/home"
        ];
    }



    //gerenciar pedidos

}
