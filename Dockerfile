FROM node:22-alpine AS base
WORKDIR /app
ENV NODE_ENV=production

# This is a generic container scaffold; add your application's package files.
COPY package*.json ./
RUN if [ -f package-lock.json ]; then npm ci --omit=dev; else echo "No lockfile supplied"; fi

FROM node:22-alpine AS runtime
WORKDIR /app
ENV NODE_ENV=production
COPY --from=base /app /app
COPY . .
USER node
EXPOSE 8080
CMD ["node", "server.js"]
