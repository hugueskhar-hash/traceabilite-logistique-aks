# Utiliser une image de base légère Python
FROM python:3.9-slim

# Définir le dossier de travail dans le conteneur
WORKDIR /app

# Créer un fichier de dépendances vide pour le test (si absent)
RUN touch requirements.txt

# Installer les dépendances (vide pour l'instant)
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le reste du code source du projet
COPY . .

# Exposer le port par défaut (ex: Flask)
EXPOSE 5000

# Commande pour lancer l'application
CMD ["python", "app.py"]
