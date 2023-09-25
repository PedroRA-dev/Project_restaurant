FROM node:bullseye-slim
WORKDIR /code

EXPOSE 5173

COPY ./src/* /code/src/
COPY ./index.html /code/
COPY ./package.json /code/
COPY ./package-lock.json /code/

RUN npm install
CMD [ "npm", "run", "dev" ]