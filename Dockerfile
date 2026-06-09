FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Build aplikasi (berguna untuk mode production/preview)
RUN npm run build

EXPOSE 5173

# Default command (bisa di-override di docker-compose)
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
