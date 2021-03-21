FROM cypress/base:12.19.0
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN npm install
RUN $(npm/bin)cypress verify
RUN SET PERCY_TOKEN=0130af9a824560c05648eb2248a4db30a5c298602e09b71375baca8cadf34ebb
RUN ["npm", "run","cy:run-dashboard"]
