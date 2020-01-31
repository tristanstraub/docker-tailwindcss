#! /usr/bin/env bash
docker build -t docker-tailwindcss .

TAILWIND=$(pwd)/tailwindcss

mkdir -p $TAILWIND/dist

for part in base components utilities; do
    docker run -v $(pwd)/tailwindcss:$TAILWIND -ti docker-tailwindcss \
           yarn tailwind build $TAILWIND/$part.css -c $TAILWIND/tailwind.config.js -o $TAILWIND/dist/tailwind-$part.css
done
