sudo echo node_modules/ > .dockerignore


echo ".dockerignore ~> Criado"
echo 


echo - Qual a porta desejada?
read porta_imagem;
echo 

echo 'FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
EXPOSE $porta_imagem
CMD ["yarn", "serve"]' > Dockerfile

echo - Qual o nome da imagem que deseja?
read imagem_nome;

docker build -t $imagem_nome .

echo
echo Imagem criada:
echo 

docker image ls $imagem_nome

echo
echo - Qual a porta do container?
read porta_container;
echo

docker run -p 0.0.0.0:$porta_container:3000 -d --name $imagem_nome $imagem_nome
