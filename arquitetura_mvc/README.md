# Modelo MVC  
&nbsp;&nbsp;&nbsp;&nbsp;
A análise do modelo MVC do projeto que está sendo desenvolvido pelo grupo Dellvelopers revela duas perspectivas distintas dentro do mesmo padrão MVC: a do administrador e a do funcionário. Na primeira perspectiva, desenvolveu-se uma aplicação web que inclui um sistema de kanban para gerenciamento de tarefas, no qual os funcionários podem movimentar as atividades designadas para eles. Por outro lado, o administrador tem a capacidade de atribuir tarefas com base em grupos específicos de funcionários, como linhas de montagem ou estações de trabalho. Este arranjo proporciona uma estrutura flexível e eficiente para o gerenciamento de projetos, permitindo uma distribuição precisa de responsabilidades e tarefas dentro da equipe.
## Arquitetura
MVC (Model-View-Controller)
## Ferramenta de Diagramação 
Draw.io
## Modelos (Models):
&nbsp;&nbsp;&nbsp;&nbsp;
 O modelo desempenha um papel central no sistema, lidando com a manipulação de dados e a lógica de negócios. Ele se comunica com o banco de dados para recuperar, modificar e armazenar informações relevantes para o funcionamento do sistema.

* Usuário: Este modelo representa os usuários do sistema, incluindo funcionários e administradores. Ele armazena informações como nome, email, linha de montagem e estação de trabalho.
* Produto: manuais disponíveis no sistema; manuais favoritos de cada usuário (mantém uma relação entre usuários e manuais marcados como favoritos); atividades dos usuários no sistema, como visualização de manuais; informações estatísticas sobre o uso do sistema, incluindo a porcentagem de engajamento dos funcionários e dados sobre os manuais menos acessados.

## Controladores (Controllers):
&nbsp;&nbsp;&nbsp;&nbsp;
Os controladores são responsáveis por gerenciar as interações do usuário com o sistema, controlando a lógica de negócios e coordenando as operações entre o modelo e as visualizações.

&nbsp;&nbsp;&nbsp;&nbsp;
São 7 os controllers principais concebidos para este projeto: Digitar, Selecionar, Favoritar, Adicionar, Excluir e Editar. Eles são divididos entre as telas funcionais relacionadas ao View.

* Digitar: Este controller é acionado quando há um campo de texto a ser preenchido, como na página de login. Quando o usuário insere suas informações para entrar, o Model busca os dados no banco de dados para verificar a validade das informações fornecidas e permitir o acesso ao site.

* Selecionar: Responsável por permitir que os usuários selecionem manuais, esta função está presente em carrosséis de manuais recentes ou populares. O Model coordena a exibição desses manuais com base nas preferências do usuário e nas tendências de acesso.

* Favoritar: Esta função permite aos usuários marcar certos manuais como favoritos, adicionando-os a uma lista especial armazenada no banco de dados e vinculada ao usuário específico. O controller garante que os manuais favoritos sejam facilmente acessíveis e gerenciáveis pelo usuário.

* Adicionar: Relacionado à edição de manuais, o controller de adição permite que administradores ou usuários autorizados adicionem novos manuais ao sistema. Os arquivos relevantes são extraídos do banco de dados e adicionados conforme necessário, com o Model coordenando o processo de adição e atualização.

* Excluir: Esta função permite a exclusão de manuais do sistema. Os controllers garantem que apenas administradores ou usuários autorizados possam realizar essa ação, evitando exclusões acidentais ou não autorizadas. O Model supervisiona a remoção segura dos manuais do banco de dados.

* Editar: O controller de edição permite que administradores façam alterações nos manuais existentes, como correções de erros ou atualizações de conteúdo. Essa função garante que os manuais permaneçam precisos e relevantes ao longo do tempo, com o Model garantindo a consistência e integridade dos dados durante o processo de edição.

&nbsp;&nbsp;&nbsp;&nbsp;
Esses controllers são essenciais para garantir a funcionalidade completa e eficiente do sistema de gestão de manuais, proporcionando uma experiência de usuário fluida e robusta. Cada um desempenha um papel crucial no acesso, organização e manutenção dos manuais, facilitando o uso e a administração do sistema para todos os usuários envolvidos. 

## Views (Views):
&nbsp;&nbsp;&nbsp;&nbsp;
As visualizações são as interfaces através das quais os usuários interagem com o sistema, apresentando informações e permitindo a entrada de dados. 

&nbsp;&nbsp;&nbsp;&nbsp;
O projeto consiste em oito telas principais: Login, Progresso, Perfil, Busca, Funcionários, Linha de Montagem, Edição de Manuais e Estatísticas.

* Login: Esta tela permite que funcionários e administradores entrem no site.
* Progresso: Disponível apenas para funcionários, é a página principal onde podem visualizar informações essenciais, como o kanban com suas atividades pendentes designadas pelo administrador. Também possui uma barra de ferramentas com informações e um botão para acessar o perfil.
* Perfil: Acesso tanto para funcionários quanto para administradores, esta tela exibe informações básicas, como nome, email, linha de montagem e estação de trabalho, além de uma área para listar favoritos.
* Busca: Exclusiva para funcionários, permite buscar manuais específicos e mostra tendências com os manuais mais acessados.
* Funcionários: Reservada para administradores, oferece acesso a informações específicas de cada funcionário.
* Linha de Montagem: Acesso restrito a administradores, fornece dados concretos sobre a linha, incluindo tempo de aprendizagem da equipe e número de erros.
* Edição de Manuais: Disponível apenas para administradores, permite direcionar manuais para grupos específicos de funcionários (linhas), além de oferecer opções para excluir ou editar manuais.
* Estatísticas: Revela números sobre o processo de aprendizagem dos funcionários, mostrando a porcentagem de engajamento e os manuais menos acessados.

&nbsp;&nbsp;&nbsp;&nbsp;
As telas de login e homepage se conectam através do botão 'Entrar', enquanto o ícone Perfil dá acesso à página de Perfil do projeto.

## Infraestrutura:

* Banco de Dados Relacional: O banco de dados armazenaria informações como usuários, manuais, atividades e estatísticas. O Model se comunica diretamente com o banco de dados para recuperar e armazenar dados. Os Controllers utilizam consultas ao banco de dados para acessar e modificar informações conforme necessário. As views exibem os dados recuperados do banco de dados aos usuários.
* API Externa para Estatísticas: Uma API externa pode ser utilizada para obter estatísticas adicionais, como dados demográficos dos usuários ou informações sobre tendências do setor. Os contollers podem fazer chamadas à API externa para obter dados relevantes. Esses dados são então processados pelo Modelo e enviados às visualizações para exibição aos usuários.
* Serviço de Armazenamento de Arquivos: Um serviço de armazenamento em nuvem, como Amazon S3 ou Google Cloud Storage, pode ser utilizado para hospedar os manuais e outros arquivos necessários. O Modelo gerencia o armazenamento e a recuperação de arquivos no serviço de armazenamento. Os Controllers coordenam as operações de upload, download e exclusão de arquivos, enquanto as visualizações exibem os arquivos aos usuários conforme necessário.

&nbsp;&nbsp;&nbsp;&nbsp;
Escolhidos pela sua capacidade de lidar com dados estruturados de forma eficiente e pela sua ampla adoção na indústria. Impacta positivamente o projeto ao fornecer uma maneira confiável de armazenar e recuperar dados essenciais para o sistema de gestão de manuais.

&nbsp;&nbsp;&nbsp;&nbsp;
Em relação a arquitetura do MVC, para garantir uma diferenciação clara entre as telas e suas respectivas ações, optei por utilizar cores diferentes e representar as ações relacionadas a essas telas por setas da mesma cor.

## Implicações da Arquitetura:
&nbsp;&nbsp;&nbsp;&nbsp;
A arquitetura MVC implica em considerações essenciais para aplicativos web. Ela demanda escalabilidade no modelo para lidar com aumento de dados e usuários, modularidade nos controladores para adição de recursos, organização para facilitar a manutenção do modelo, separação clara de lógica de apresentação, e testabilidade com testes de unidade e integração. É vital proteger o sistema contra vulnerabilidades e otimizar o código para garantir desempenho.
 
&nbsp;&nbsp;&nbsp;&nbsp;
Nesse projeto desenvolvido, decidi focar em conseguir ajustar sempre que se muda de ideia em relação ao fluxo das páginas e ao navegar pelo site. Por isso, usei nomes fáceis e intuitivos tanto nas tabelas, quanto nos itens adicionados. 
