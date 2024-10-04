# Verwende ein offizielles Python-Image als Basis
FROM python:3.9-slim

# Setze das Arbeitsverzeichnis auf /app
WORKDIR /app

# Kopiere die requirements-Datei in das Image
COPY requirements.txt requirements.txt

# Installiere die Python-Abhängigkeiten
RUN pip install --no-cache-dir -r requirements.txt

# Kopiere den Rest der Anwendung in das Arbeitsverzeichnis
COPY . .

# Flask läuft standardmäßig auf Port 5000, mache diesen Port verfügbar
EXPOSE 5000

# Setze den Befehl zum Starten der Flask-Anwendung
CMD ["flask", "run", "--host=0.0.0.0"]
