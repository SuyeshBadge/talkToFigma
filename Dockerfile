FROM oven/bun:latest
WORKDIR /app
COPY package.json bun.lock ./
RUN bun install --production
COPY src/socket.ts ./src/socket.ts
EXPOSE 3055
CMD ["bun", "run", "src/socket.ts"]
