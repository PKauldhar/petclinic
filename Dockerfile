FROM node:latest
 
WORKDIR /usr/src/app
 
COPY package*.json ./
RUN npm install -g npm-check-updates
RUN npm install -g @angular/cli@8.0.1
 
COPY . .
 
CMD ng serve --host 0.0.0.0 --port 4200
