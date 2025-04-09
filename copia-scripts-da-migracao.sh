#!/usr/bin/bash

NOME_DO_CONTAINER="${1:-dspacedb}"

ls -1 *.sql | while read arquivo; do
  docker cp "$arquivo" "$NOME_DO_CONTAINER":/tmp
done
