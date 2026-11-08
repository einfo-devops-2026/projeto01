# Imagem base do Node
FROM node:22-alpine

# Diretório de trabalho
WORKDIR /app

# Copia os arquivos de dependências
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do projeto
COPY . .

# Porta da aplicação
EXPOSE 3000

# Inicia a aplicação
CMD ["npm", "start"]