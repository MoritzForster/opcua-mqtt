FROM node
WORKDIR /production/opcua-mqtt
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install 
COPY . .
EXPOSE 26543 1883
RUN chown -R node /production/opcua-mqtt
USER node
CMD ["npm", "start"]