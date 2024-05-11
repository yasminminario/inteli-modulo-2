# Modelagem

## Esquema do Banco de Dados

O esquema do banco de dados consiste em várias tabelas inter-relacionadas para armazenar informações sobre usuários, manuais, linhas de montagem, produtos e tarefas.

### Tabelas e Relações

1. **users**: Armazena informações sobre os usuários do sistema.
   - A chave primária é `id`, que é uma chave primária autoincrementada.
   - Possui uma conexão de chave estrangeira com a tabela `assembleLines` através da coluna `Emails`.

2. **manuais**: Contém detalhes sobre os manuais de montagem.
   - A chave primária é `id`, uma chave primária autoincrementada.

3. **assembleLines**: Descreve as linhas de montagem disponíveis.
   - A chave primária é `id`, uma chave primária autoincrementada.
   - Possui uma conexão de chave estrangeira com a tabela `users` através da coluna `Nomes`.

4. **products**: Armazena informações sobre os produtos em produção.
   - A chave primária é `id`, uma chave primária autoincrementada.
   - Possui uma conexão de chave estrangeira com a tabela `assembleLines` através da coluna `LinhaDeMontagemAssociada`.

5. **tasks**: Registra tarefas atribuídas aos usuários.
   - A chave primária é `id`, uma chave primária autoincrementada.
   - Possui conexões de chave estrangeira com as tabelas `users` (coluna `idMontadorAssociado`) e `manuais` (coluna `idManualAssociado`).

## Relações de Cardinalidade

1. Um usuário pode estar associado a várias linhas de montagem (assembleLines), mas uma linha de montagem está associada a apenas um usuário.
2. Um manual pode ter várias tarefas associadas a ele, enquanto uma tarefa está associada a apenas um manual.
3. Um produto é associado a apenas uma linha de montagem, mas uma linha de montagem pode ter vários produtos associados.
4. Cada tarefa está associada a um usuário (montador), e um usuário pode ter várias tarefas associadas a ele.

