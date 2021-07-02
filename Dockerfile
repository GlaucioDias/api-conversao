# Inicializa o build de uma imagem a partir de uma imagem base 
# Dica: Utilize imagens oficiais publicadas no dockerhub
FROM node:14.16.1-alpine3.13

# Diretório corrente da aplicação no container
WORKDIR /app

# Copia os arquivos package.json e package-lock.json para o workdir informado acima
COPY package*.json ./

# Executa o comando npm install para baixar as dependências do projeto (listadas no package.json)
RUN npm install

# Copia os arquivos do diretório corrente do projeto para o diretório corrente do container (workdir)
COPY . .

# Expõe a porta 8080 
EXPOSE 8080

# Define o comando e/ou os parâmetros padrão
CMD ["npm", "start"]