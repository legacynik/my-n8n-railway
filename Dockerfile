# Partiamo dall'immagine ufficiale di n8n che include già i worker
FROM n8nio/n8n:latest

# Cambiamo utente per avere i permessi di installare pacchetti
USER root

# Installiamo poppler-utils usando il comando 'apk' per Alpine Linux
RUN apk update && apk add --no-cache poppler-utils

# Restituiamo il controllo all'utente n8n per sicurezza
USER node
