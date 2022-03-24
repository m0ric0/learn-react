FROM node:16.13.0-alpine
WORKDIR /app
# COPY package.json .
# RUN npm install
# COPY . .
# RUN npm run build

# FROM nginx
# COPY --from=builder /app/build /usr/share/nginx/html
# # COPY --from=build /app/build /usr/share/nginx/html

COPY package.json .
COPY yarn.lock .
RUN yarn install
COPY . .
EXPOSE 3000
CMD [ "yarn", "dev" ]
