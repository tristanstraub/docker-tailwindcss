FROM node:latest

ENV TAILWIND=/usr/local/tailwindcss

RUN yarn add tailwindcss

WORKDIR $TAILWIND
