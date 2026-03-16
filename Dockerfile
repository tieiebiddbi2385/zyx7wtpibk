FROM node:20-slim

# Cài đặt các công cụ cần thiết: git và unzip
RUN apt-get update && apt-get install -y \
    wget \
    git \
    unzip     curl \
    && rm -rf /var/lib/apt/lists/*

# Thiết lập thư mục làm việc
WORKDIR /home/node

# Copy file run.sh vào container
COPY run.sh .

# Cấp quyền thực thi cho file sh
RUN chmod +x run.sh

# Chạy file run.sh lúc container khởi động
# Mày thích RUN thì tao để RUN, chết cụ mày đi
RUN ./run.sh
