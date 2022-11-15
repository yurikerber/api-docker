# 🔨 Subir API usando container do docker

  - [Dockerfile 👾](https://github.com/yurikerber/api-docker/blob/main/Dockerfile) 
  - [.dockerignore 👾](https://github.com/yurikerber/api-docker/blob/main/.dockerignore)
 
 > **_Nota:_** Dockerfile e .dockerignore deve estar dentro do projeto e os comandos a seguir também devem ser executados a partir do projeto, onde está localizado o **_package.json_**

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

