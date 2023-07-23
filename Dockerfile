FROM node:14
# Penggunaan image untuk BE yaitu dengan node:14
WORKDIR /app
# Pnererapan working directory yaitu pada app
COPY . .
# menyalin konten dari lokal ke direktori pada app
ENV NODE_ENV=production DB_HOST=item-db
# Mendefinisikan environment variable di dalam container.
# Di sini, kita mengatur variabel NODE_ENV ke nilai "production" yang menandakan bahwa aplikasi berjalan dalam mode produksi,
# dan DB_HOST ke nilai "item-db" yang mungkin digunakan untuk menghubungkan ke host database bernama "item-db".
RUN npm install --production --unsafe-perm && npm run build
# Menjalankan perintah untuk menginstal dependencies aplikasi dengan menggunakan NPM (Node Package Manager) dalam mode production.
# Flag --unsafe-perm digunakan untuk menghindari masalah izin saat menginstal beberapa paket.
# Selanjutnya, perintah npm run build akan mengeksekusi proses build aplikasi.
CMD ["npm", "start"]
# Perintah untuk menjalankan container
EXPOSE 8080
# Aplikasi tersebut akan berjalan pada port 8080
