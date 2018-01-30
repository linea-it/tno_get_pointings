#!/bin/sh

cd $APP_PATH
gunicorn --bind 0.0.0.0:$GUNICORN_PORT \
    $GUNICORN_MODULE:$GUNICORN_CALLABLE \
    --reload
