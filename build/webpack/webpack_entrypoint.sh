#!/bin/bash

if [ -n "$1" ]; then
    exec "$@"
fi

case "$NODE_ENV" in
    production)
        npm run build
        ;;
    *)
        exec npm start
        ;;
esac
