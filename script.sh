sudo echo node_modules/ > .dockerignore

echo ".dockerignore ~> Criado"
echo 

echo - Qual a porta desejada?
read porta;
echo 

echo 'FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
EXPOSE 3000
CMD ["yarn", "serve"]' > Dockerfile

echo - Qual o nome da imagem/container que deseja?
read imagem_nome;

a=$(docker build -t $imagem_nome .)

echo
echo Imagem criada:
echo 

docker image ls $imagem_nome

a=$(docker run -p 0.0.0.0:$porta:3000 -d --name $imagem_nome $imagem_nome)

echo
echo Container criado:
echo
docker ps --filter name=$imagem_nome

echo "
_____________________________________
|                  __               |
|  /\ /\___ _ __  / /_   ___ _ __   |
| / //_/ _ \ '_ \| '_ \ / _ \ '_ \  |
|/ __ \  __/ |_) | (_) |  __/ |_) | |
|\/  \/\___| .__/ \___/ \___| .__/  |
|          |_|              |_|     |
|___________________________________|"

