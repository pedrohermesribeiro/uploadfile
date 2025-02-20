uploadfile

Obs: Essa ferramenta foi desenvolvida no ChatGPT(com vários prompts) e organizado no Eclipse por mim.

# 📂 Upload de Arquivos com Spring Boot via API REST

Este projeto é uma API REST desenvolvida em **Spring Boot** para realizar **upload e download de arquivos**, armazenando-os no **banco de dados** (PostgreSQL ou MySQL).  

## 🚀 Funcionalidades

✅ Envio de arquivos via API REST  
✅ Armazenamento dos arquivos no banco de dados (BLOB)  
✅ Download de arquivos pelo ID  
✅ Configuração de tamanho máximo para upload  
✅ Integração com front-end  

---

## 📦 Tecnologias Utilizadas

- **Java 17+**
- **Spring Boot 3+**
- **Spring Data JPA**
- **Spring Web**
- **Banco de Dados:** PostgreSQL ou MySQL
- **Maven**

---

## 📌 Configuração do Banco de Dados

### 🔹 PostgreSQL (Recomendado)
Crie o banco de dados manualmente no PostgreSQL:
```sql
CREATE DATABASE uploadfile;
E adicione no arquivo application.properties:
properties
CopiarEditar
spring.datasource.url=jdbc:postgresql://localhost:5432/uploadfile
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
spring.datasource.driver-class-name=org.postgresql.Driver
spring.jpa.hibernate.ddl-auto=update


MySQL (Alternativa)
sql
CopiarEditar
CREATE DATABASE uploadfile;
E no application.properties:
properties
CopiarEditar
spring.datasource.url=jdbc:mysql://localhost:3306/uploadfile?useSSL=false&serverTimezone=UTC
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.hibernate.ddl-auto=update
________________________________________
📌 Como Executar o Projeto
🔹 1️⃣ Clonar o Repositório
sh
CopiarEditar
git clone https://github.com/seu-usuario/uploadfile-springboot.git
cd uploadfile-springboot
🔹 2️⃣ Construir o Projeto com Maven
sh
CopiarEditar
mvn clean install
🔹 3️⃣ Executar a Aplicação
sh
CopiarEditar
mvn spring-boot:run
A API será iniciada em http://localhost:8080.
________________________________________
📌 Testando a API
🔹 1️⃣ Testar o Upload de Arquivo
Endpoint: POST /arquivos/upload
Corpo: form-data (key: file, value: <escolher um arquivo>)
Resposta esperada:
json
CopiarEditar
{
  "mensagem": "Arquivo salvo com sucesso! ID: 1"
}
🔹 2️⃣ Testar o Download de Arquivo
Endpoint: GET /arquivos/download/{id}
Exemplo para baixar o arquivo com ID 1:
sh
CopiarEditar
http://localhost:8080/arquivos/download/1
________________________________________
📌 Estrutura do Projeto
bash
CopiarEditar
/uploadfile-springboot
│── src/main/java/com/exemplo/upload
│   ├── UploadApplication.java  # Classe principal
│   ├── controller
│   │   ├── ArquivoController.java  # API REST
│   ├── model
│   │   ├── Arquivo.java  # Entidade JPA
│   ├── repository
│   │   ├── ArquivoRepository.java  # Camada de persistência
│   ├── service
│   │   ├── ArquivoService.java  # Lógica de negócios
│── src/main/resources
│   ├── application.properties  # Configuração do banco de dados
│── pom.xml  # Dependências do Maven
________________________________________
📌 Melhorias Futuras
📌 Criar uma interface web para upload e listagem de arquivos.
📌 Adicionar suporte ao armazenamento na nuvem (AWS S3, Google Cloud Storage, Azure Blob).
📌 Implementar autenticação para proteger os endpoints.
________________________________________
📌 Autor
👤 Seu Pedro Hermes Ribeiro
📧 Email: pedrohermesr@live.com
🔗 LinkedIn: www.linkedin.com/in/pedro-hermes-ribeiro-1b352a99
