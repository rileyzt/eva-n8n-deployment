FROM n8nio/n8n

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Set port
EXPOSE 5678

# Set webhook URL dynamically via Render's Environment Variable
ENV WEBHOOK_URL=${WEBHOOK_URL}

CMD ["n8n"]
