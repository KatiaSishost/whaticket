FROM node
RUN mkdir -p /home/whatsapp
COPY whatsapp /home/whatsapp
WORKDIR /home/whatsapp/backend
RUN cd /home/whatsapp/backend
RUN npm install
RUN npm run build
WORKDIR /home/whatsapp/frontend
RUN cd /home/whatsapp/frontend
RUN npm install
RUN npm run build


EXPOSE 3000
EXPOSE 8080
CMD [ "node", "server.js" ]