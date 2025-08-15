FROM node:16

# Tạo thư mục ứng dụng
WORKDIR /usr/src/app

# Cài đặt các phụ thuộc của ứng dụng
COPY package*.json ./
RUN npm install --production

# Đưa mã nguồn của ứng dụng vào container
COPY . .

# Mở cổng 3000 cho ứng dụng
EXPOSE 3000

# Chạy ứng dụng
CMD [ "npm", "start" ]