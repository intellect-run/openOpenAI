# Выберите подходящий базовый образ, например, официальный Node.js:
FROM node:20

# Установите глобально pnpm, если он не установлен:
RUN npm install -g pnpm

# Создайте директорию приложения
WORKDIR /usr/src/app

# Копируйте файлы package.json и возможно pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# Установите зависимости
RUN pnpm install

# Копируйте исходные файлы приложения
COPY . .

# Генерируйте файлы приложения
#RUN pnpm generate && pnpm prisma db push && pnpm build 

# Экспонируйте порт, если ваш REST API слушает его
#EXPOSE 3000

# Добавьте две команды для API сервера и обработчика задач
# Используйте `CMD` для указания инструкций по запуску, которые будут выполнены при запуске контейнера
#CMD ["sh", "-c", "npx tsx dist/server & npx tsx dist/runner"]
