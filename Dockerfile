FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html
EXPOSE 80
USER nginx
RUN chown -R nginx:nginx /usr/share/nginx/html
CMD ["niginx", "-g", "daemon off;"]
