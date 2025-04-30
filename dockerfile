FROM node:12-alpine

# Installation de Git
RUN apk add --no-cache git

# Clonage du dépôt GitHub
RUN git clone -q https://github.com/chK1717/todo-app.git

# Définition du répertoire de travail
WORKDIR /todo-app

# Installation des dépendances avec Yarn
RUN yarn install --production

# Commande d'exécution de l'application
CMD ["node", "/src/index.js"]