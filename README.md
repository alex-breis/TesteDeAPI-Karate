# Trabalho Prático S206 - Testes de API com Karate

Repositório para entrega do trabalho prático de S206-L1 sobre testes de API utilizando a ferramenta Karate.

## Descrição do projeto:

Os seguintes testes foram elaborados utilizando uma API sobre o universo Harry Potter. Ela contém várias informações sobre inúmeros personagens da saga, livros, casas, etc. A API é somente para consumo, ou seja so podem ser feitas requisições GET. Os testes desenvolvidos para a API são os seguintes:

1. Requisitar à API as informações do livro de ID = 3 e então, verificar se houve um retorno positivo, além de comparar o nome.

2. Requisitar à API todos os personagens salvos e então, verificar se houve um retorno positivo, além de checar se o retorno foi um array.

3. Requisitar à API todos os livros da saga e então, verificar se houve um retorno positivo, além de testar se o total presente no array está correto.

4. Requisitar à API as informações da casa Sonserina e então, verificar se houve um retorno positivo,além de comparar se o nome do fundador presente dentro array de resposta está correto.

5. Requisitar à API as informações das espécies, porém acessando uma página que não existe, e então verificar se houve um retorno negativo.

6. Requisitar à API as informações dos personagens, porém tentando acessar um ID inexistente, e então verificar se houve um retorno negativo e comparar a mensagem de erro.

Link da API testada: http://www.theboywholivedapi.fun/

## Executando o projeto:

Siga os seguintes passos para executar o projeto:

1. Clone esse repositório na sua máquina.

2. Baixe e configure o Maven por meio do link: https://maven.apache.org/

3. Na pasta que contém o arquivo "pom.xml" execute o seguinte comando por meio do terminal:

```
mvn clean install
```

4. Para executar os testes via terminal utilize o comando:

```
mvn test –Dtest=HpRunner
```

### Relatório HTML com os resultados dos testes:

O relatório HTML contendo os resultados é gerado automaticamente ao final da execução dos testes. Basta abrir o link mostrado no terminal no navegador para visualizá-lo.

## Questão 2:

1. Foi desenvolvida somente uma suíte de teste, sendo ela o arquivo harry_potter.feature com todos os testes a serem executados.

2. Todos os testes são automatizados, já que não se trata de alguém realizando cada um dos testes mas sim a máquina que os executa e valida a saída.

3. Eles se classificam como testes de Integração ou de Serviço. Já que realizam uma verificação completa de requisição e resposta, ou seja, de uma funcionalidade isolada do sistema.

4. São testes funcionais, pois testam o comportamento que é esperado, verificando somente a saída e não comportamento interno.

5. Nenhum pode ser considerado end-to-end, pois não há um sistema real como todo a ser testado, seria preciso outras partes ausentes.

6. Seria necessário executa-los e verificar se seus resultados estão adequados. Então atualizar o software em questão, nesse caso a API, e por fim executar os mesmos testes para confirmar se as mudanças não quebraram recursos que já estavam funcionando adequadamente.