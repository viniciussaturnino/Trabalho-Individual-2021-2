# Biblioteca Pessoal

Sistema para registro de livros pessoais

### Ruby and Rails version 
- Ruby `3.0.0p0`  
- Rails `7.0.2.3`
- Bundler

### Depndências
Banco de dados Postgres

### Configuração do Projeto
```
bundle install
```

### Configuração do Banco
Criar o banco com o usuario `postgres` e senha `postgres`

### Iniciatlização, criação do Banco com seed
```
rails db:create
rails db:migrate
rails db:seed
```

ou 

```
rails db:setup
```

### Reset do banco e seed
```
rails db:reset
```

### Como rodar a aplicação
Para executar a aplicação com o servidor web embutido basta rodar o comando abaixo que a mesma será inicializada no localhost na porta 3000.
```
rails server
```

### Como rodar testes
```
rails db:reset
rspec
```

