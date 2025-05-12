# 🐳 Semaine 2 – Docker avancé & Dockerfiles

## 🎯 Objectifs pédagogiques
- Comprendre comment construire ses propres images Docker avec un Dockerfile
- Optimiser une image avec les bonnes pratiques (multi-stage, .dockerignore, etc.)
- Utiliser les volumes et le réseau Docker
- Gérer des conteneurs dans un mini-environnement applicatif

---

## 1. 🔧 Construction d'image avec Dockerfile

### Exemple simple : serveur Node.js
Structure :
```
mon-app/
├── app.js
├── package.json
└── Dockerfile
```

Dockerfile :
```Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]
```

Commande de build :
```bash
docker build -t mon-app .
```

Exécution :
```bash
docker run -d -p 3000:3000 mon-app
```

---

## 2. 📁 Ignorer des fichiers inutiles

Créer un fichier `.dockerignore` :
```
node_modules
*.log
.env
```

---

## 3. 📦 Volumes

Créer un volume persistant :
```bash
docker volume create data_volume
```

Monter un volume dans un conteneur :
```bash
docker run -d -v data_volume:/data busybox
```

Monter un dossier local :
```bash
docker run -v $(pwd)/data:/data busybox
```

---

## 4. 🌐 Réseaux Docker

Créer un réseau :
```bash
docker network create mon-reseau
```

Connecter plusieurs conteneurs :
```bash
docker run -d --name db --network mon-reseau redis
docker run -d --name web --network mon-reseau nginx
```

---

## 5. 🧪 Exercices

### ✅ Exercice 1 – Construire une image Node.js
- Crée une app simple avec `app.js`
- Écris un `Dockerfile`
- Ignore `node_modules` avec `.dockerignore`

### ✅ Exercice 2 – Utiliser un volume
- Lance un conteneur Alpine qui écrit un fichier dans `/data`
- Monte un volume et vérifie la persistance

### ✅ Exercice 3 – Réseau personnalisé
- Lance deux conteneurs (Nginx + Redis) dans un même réseau
- Utilise `ping` ou `wget` pour tester la connectivité

---

## 📘 Auto-évaluation

1. Quelle est la différence entre `COPY` et `ADD` dans un Dockerfile ?
2. À quoi sert le fichier `.dockerignore` ?
3. Quelle est la commande pour construire une image Docker ?
4. Que permet un volume Docker ?
5. Comment plusieurs conteneurs peuvent-ils communiquer ensemble ?
