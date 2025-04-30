# frontend.Dockerfile
FROM node:20-alpine
WORKDIR /app
COPY ./frontend/react-app ./
RUN npm install && npm run build

RUN npm install -g serve
CMD ["serve", "-s", "dist"]
EXPOSE 3000
