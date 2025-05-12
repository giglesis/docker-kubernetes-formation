# 🐳 Semaine 1 – Introduction à Docker

## 🎯 Objectifs pédagogiques
- Comprendre les fondamentaux de la conteneurisation
- Installer Docker et vérifier son bon fonctionnement
- Utiliser les commandes de base Docker
- Lancer ses premiers conteneurs

---

## 1. 🔍 Concepts clés

- **Conteneur** : Environnement isolé pour exécuter une application.
- **Image Docker** : Modèle figé (template) pour créer des conteneurs.
- **Docker Engine** : Logiciel client-serveur qui gère les conteneurs.
- **Docker Hub** : Registre public où sont stockées les images Docker.

---

## 2. 🛠 Installation

Suivre la documentation officielle selon ton OS :

- [Windows](https://docs.docker.com/desktop/install/windows-install/)
- [Mac](https://docs.docker.com/desktop/install/mac-install/)
- [Linux (Ubuntu)](https://docs.docker.com/engine/install/ubuntu/)

Test :
```bash
docker --version
```

---

## 3. ⚙️ Commandes Docker de base

```bash
docker run hello-world                # Teste l'installation
docker run -d -p 8080:80 nginx        # Lance Nginx en arrière-plan
docker ps                             # Liste des conteneurs actifs
docker ps -a                          # Liste tous les conteneurs
docker stop <ID|nom>                  # Stoppe un conteneur
docker rm <ID|nom>                    # Supprime un conteneur
docker exec -it <ID|nom> bash         # Ouvre un terminal dans un conteneur
docker images                         # Liste des images locales
docker rmi <image_id>                 # Supprime une image
```

---

## 4. 🧪 Exercices pratiques

### 🔸 1. Serveur web Nginx
```bash
docker run -d -p 8080:80 --name web nginx
```
→ Visite [http://localhost:8080](http://localhost:8080)

---

### 🔸 2. Base de données Redis
```bash
docker run -d --name cache redis
```

---

### 🔸 3. Conteneur ultra-léger Alpine
```bash
docker run -it --name minimal alpine sh
```

---

## 5. 📘 Auto-évaluation

1. Quelle est la différence entre une image et un conteneur ?
2. Que signifie l’option `-p 8080:80` ?
3. Quelle commande permet de supprimer un conteneur arrêté ?
4. Comment accéder à un terminal dans un conteneur actif ?
5. Quelle commande permet de voir les logs d’un conteneur ?

---

## 📎 Ressources complémentaires
- [Play with Docker (sandbox en ligne)](https://labs.play-with-docker.com/)
- [Documentation officielle Docker](https://docs.docker.com/)
- [Docker cheatsheet](https://dockerlabs.collabnix.com/docker/cheatsheet/)
