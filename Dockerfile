# Partiamo dall'immagine ufficiale di n8n che include già i worker
FROM n8nio/n8n:latest

# Cambiamo utente per avere i permessi di installare pacchetti
USER root

# Installiamo poppler-utils (che contiene il convertitore) e puliamo la cache
RUN apt-get update && apt-get install -y poppler-utils && rm -rf /var/lib/apt/lists/*

# Restituiamo il controllo all'utente n8n per sicurezza
USER node
