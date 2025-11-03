FROM minio/minio:latest AS minio

FROM nginx:latest

COPY --from=minio /usr/bin/minio /usr/bin/minio
COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir /data
ENV MINIO_ROOT_USER=minioadmin
ENV MINIO_ROOT_PASSWORD=minioadmin

CMD minio server /data --console-address ":9001" & nginx -g 'daemon off;'
