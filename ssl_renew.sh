#!/bin/bash

# Renew certificates
docker compose -f /path/to/docker-compose_ssl.yml up certbot-renew

# Reload nginx
docker compose -f /path/to/docker-compose.yml exec nginx-static nginx -s reload
