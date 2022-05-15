#!/bin/bash

git clone $1 /app && code-server --config /code-server/config.yaml /app