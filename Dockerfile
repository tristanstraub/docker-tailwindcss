FROM node:latest

ENV TAILWIND=/usr/local/tailwindcss

# Add taobao registry if you live in China
# RUN yarn config set registry https://registry.npm.taobao.org 
RUN yarn add autoprefixer@latest cross-env --save-dev && \
    yarn add tailwindcss

WORKDIR $TAILWIND
