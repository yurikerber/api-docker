# 🔨 Subir API usando container do docker

```bash
git clone https://github.com/yurikerber/api-docker && cd api-docker && sudo chmod 555 script.sh && sudo cp script.sh <local-projeto>
```

  - **_Dockerfile_** conteúdo 👾
  
``` Dockerfile
FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
EXPOSE 3000
CMD ["yarn", "serve"]
```
  
  - **_.dockerignore_** conteúdo 👾

```
node_modules/
```
 
 > **_Nota:_** Dockerfile e .dockerignore deve estar dentro do projeto e os comandos a seguir também devem ser executados a partir do projeto, onde está localizado o **_package.json_**

<br>

  - [Script automatizado para subir API em um container](https://github.com/yurikerber/api-docker/blob/main/script.sh)

> **_Nota:_** Basta colocar o script dentro da pasta do projeto de API onde está localizado o **_package.json_** e executar o seguinte comando:

```bash
./script.sh
```

<br>

## 📌 Comandos:

#### **1.** Buildar a imagem pro docker:

```bash
docker build -t <nome> .
```

#### **2.** Rodar a imagem e colocar no ar:

```bash
docker run -p [host]:[porta externa]:[porta interna] -d [background] –name [nome] [imagem:tag]

...

docker run -p 0.0.0.0:3000:3000 -d --name <nome-container> <imagem-a-ser-usada>
```

## 📌 Comandos docker:

- Lista os containers
```bash
docker ps
```

- Para um container
```bash
docker stop <nome>
```

- Inicia o container parado
```bash
docker start <nome>
```

- Remove um container
```bash
docker rm <nome>
```

