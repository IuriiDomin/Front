FROM nginx:stable-alpine
RUN apk update
WORKDIR /app
COPY dist/ /app
COPY nginx.conf /etc/nginx/conf.d
EXPOSE 8083
ENTRYPOINT ["nginx", "-g", "daemon off;"]
