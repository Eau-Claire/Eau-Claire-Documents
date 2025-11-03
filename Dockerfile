# Sử dụng image chính thức của MinIO
FROM minio/minio:latest

# Đặt thư mục làm việc
WORKDIR /data

# Thiết lập biến môi trường
ENV MINIO_ROOT_USER=minioadmin \
    MINIO_ROOT_PASSWORD=minioadmin

# Mở port 9000 (API) và 9001 (Console)
EXPOSE 9000 9001

# Command mặc định khi container chạy
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--console-address", ":9001"]
