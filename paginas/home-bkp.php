<?php
include_once('../includes/header.php');
    if(isset($_GET['acao'])){

        $acao = $_GET['acao'];
         if($acao == 'dashboard'){
            include_once('../paginas/conteudo/dashboard.php');
         }elseif($acao == 'editar_contato'){
            include_once('../paginas/conteudo/update_contato.php');
         }elseif($acao == 'cadastro_contato'){
            include_once('../paginas/conteudo/cadastro_contato.php');
         }elseif($acao == 'perfil'){
            include_once('../paginas/conteudo/perfil.php');
         }elseif($acao == 'relatorio'){
            include_once('../paginas/conteudo/relatorio.php');
         }elseif($acao == 'editar_contato_header'){
            include_once('../paginas/conteudo/editar_contato.php');
         }elseif($acao == 'cadastro_permissionario'){
            include_once('../paginas/conteudo/cadastro_permissionario.php');
         }elseif($acao == 'editar_permissionario_header'){
            include_once('../paginas/conteudo/editar_permissionario.php');
         }elseif($acao == 'editar_permissionario'){
            include_once('../paginas/conteudo/update_permissionario.php');
         }elseif($acao == 'relatorio_permissionario'){
            include_once('../paginas/conteudo/relatorio_permissionario.php');
         }elseif($acao == 'cadastro_dependente'){
            include_once('../paginas/conteudo/cadastro_dependentes.php');
         }elseif($acao == 'editar_dependentes_header'){
            include_once('../paginas/conteudo/editar_dependentes_header.php');
         }elseif($acao == 'update_dependente'){
            include_once('../paginas/conteudo/update_dependentes.php');
         }elseif($acao == 'relatorio_geral_permissionario'){
            include_once('../paginas/conteudo/relatorio_geral_permiss.php');
         }elseif($acao == 'relatorio_geral_depend'){
            include_once('../paginas/conteudo/relatorio_geral_depend.php');
         }elseif($acao == 'cadastro_bicicleta'){
            include_once('../paginas/conteudo/cadastro_bicicleta.php');
         }elseif($acao == 'update_bicicleta'){
            include_once('../paginas/conteudo/update_bicicleta.php');
         }elseif($acao == 'relatorio_bicicleta'){
            include_once('../paginas/conteudo/relatorio_bicicleta.php');
         }elseif($acao == 'relatorio_dependente'){
            include_once('../paginas/conteudo/relatorio_dependente.php');
         }elseif($acao == 'cadastro_veiculo'){
            include_once('../paginas/conteudo/cadastro_fila_espera.php');
         }elseif($acao == 'relatorio_garagem'){
            include_once('../paginas/conteudo/relatorio_garagem.php');
         }elseif($acao == 'editar_garagem'){
            include_once('../paginas/conteudo/update_garagem.php');
         }elseif($acao == 'cadastro_fila_espera'){
            include_once('../paginas/conteudo/cadastro_fila_espera.php');
         }elseif($acao == 'cadastro_fila_troca'){
            include_once('../paginas/conteudo/cadastro_fila_troca.php');
         }elseif($acao == 'editar_fila_garagem'){
            include_once('../paginas/conteudo/update_fila_garagem.php');
         }elseif($acao == 'editar_fila_troca'){
            include_once('../paginas/conteudo/update_fila_troca.php');
         }elseif($acao == 'cadastro_animais'){
            include_once('../paginas/conteudo/cadastro_animais.php');
         }elseif($acao == 'editar_animais'){
            include_once('../paginas/conteudo/editar_animais.php');
         }elseif($acao == 'update_animais'){
            include_once('../paginas/conteudo/update_animais.php');
         }elseif($acao == 'relatorio_animais'){
            include_once('../paginas/conteudo/relatorio_animais.php');
         }elseif($acao == 'cadastro_garagem_moto'){
            include_once('../paginas/conteudo/cadastro_garagem_moto.php');
         }elseif($acao == 'relatorio_garagem_motos'){
            include_once('../paginas/conteudo/relatorio_garagem_motos.php');
         }elseif($acao == 'update_garagem_motos'){
            include_once('../paginas/conteudo/update_garagem_motos.php');
         }elseif($acao == 'editar_garagem_motos'){
            include_once('../paginas/conteudo/update_garagem_motos.php');
         }elseif($acao == 'documentos_nadaconsta'){
            include_once('../paginas/imprimir/nada_consta/documentos_ndconsta.php');
         }elseif($acao == 'documentos_termoresp'){
            include_once('../paginas/imprimir/termo_resp/documentos_termoresp.php');
         }elseif($acao == 'gerar_termoresp'){
            include_once('../paginas/imprimir/termo_resp/gerar_termoresp.php');
         }elseif($acao == 'gerar_termotrocagaragem'){
            include_once('../paginas/imprimir/troca_garagem/troca_garagem.php');
         }elseif($acao == 'gerar_cautedamaterial'){
            include_once('../paginas/imprimir/cautela_material/cautela_material.php');
         }elseif($acao == 'relatorio_cautela_material'){
            include_once('../paginas/imprimir/cautela_material/relatorio_cautela_material.php');
         }elseif($acao == 'cadastro_fila_troca_moto'){
            include_once('../paginas/conteudo/cadastro_fila_troca_moto.php');
         }elseif($acao == 'editar_fila_troca_moto'){
            include_once('../paginas/conteudo/update_fila_troca_moto.php');
         }elseif($acao == 'relatorio_cautela_material_fechado'){
            include_once('../paginas/imprimir/cautela_material/relatorio_cautela_material_fechado.php');
         }elseif($acao == 'material_carga'){
            include_once('../paginas/conteudo/cadastro_material_carga.php');
         }elseif($acao == 'relatorio_material_carga'){
            include_once('../paginas/conteudo/relatorio_material_carga.php');
         }elseif($acao == 'gerar_notificacao'){
            include_once('../paginas/imprimir/notificacoes/notificacoes.php');
         }elseif($acao == 'delet_fila_espera_motos'){
            include_once('../paginas/method/delet_fila_espera_motos.php');
         }elseif($acao == 'delet_fila_espera_carros'){
            include_once('../paginas/method/delet_fila_espera.php');
         }elseif($acao == 'delet_contatos'){
            include_once('../paginas/method/delet_contato.php');
         }elseif($acao == 'delet_animais'){
            include_once('../paginas/method/delet_animal.php');
         }elseif($acao == 'recebe_objeto_cautelado'){
            include_once('../paginas/method/recebe_objeto_cautelado.php');
         }elseif($acao == 'delet_material_carga'){
            include_once('../paginas/method/delet_material_carga.php');
         }elseif($acao == 'delet_cautela_material'){
            include_once('../paginas/method/delet_objeto_cautelado.php');
         }elseif($acao == 'update_fila_garagem_motos'){
            include_once('../paginas/conteudo/update_fila_garagem_motos.php');
         }
         
    }else{
        include_once('../paginas/conteudo/dashboard.php');
    }
include_once('../includes/footer.php');