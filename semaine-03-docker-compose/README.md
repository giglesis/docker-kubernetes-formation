# 🐳 Semaine 3 – Docker Compose & gestion multi-conteneurs

## 🎯 Objectifs pédagogiques
- Comprendre l’intérêt de Docker Compose
- Définir plusieurs services dans un fichier `docker-compose.yml`
- Gérer les dépendances entre conteneurs
- Simplifier les workflows de développement

---

## 1. 🔧 Introduction à Docker Compose

### 🔹 Installation
Docker Compose est intégré à Docker Desktop. Vérifie :
```bash
docker compose version
```

---

## 2. 🛠 Fichier `docker-compose.yml` de base

Exemple de structure :
```yaml
version: '3.8'
services:
  web:
    build: .
    ports:
      - "3000:3000"
  redis:
    image: redis
```

---

## 3. 📦 Lier des conteneurs

Les services sont connectés automatiquement au même réseau par défaut.

Dans l’app Node.js :
```js
const redis = require("redis");
const client = redis.createClient({ url: "redis://redis:6379" });
```

---

## 4. 🔄 Commandes utiles

```bash
docker compose up           # Lance tous les services
docker compose down         # Arrête et supprime tous les conteneurs/réseaux
docker compose logs         # Affiche les logs
docker compose ps           # Liste les services actifs
docker compose build        # Reconstruit les images
```

---

## 5. 🧪 Exercices

### ✅ Exercice – Web + Redis
- Construire une app Node.js qui stocke un compteur dans Redis
- Créer un `docker-compose.yml`
- Démarrer avec `docker compose up`

---

## 📘 Auto-évaluation

1. Quelle commande permet de lancer tous les services ?
2. Comment Docker Compose gère-t-il les réseaux ?
3. Pourquoi `redis` est utilisé comme hostname ?
4. Quelle est la commande pour reconstruire les images ?
5. Comment afficher les logs de tous les services ?
