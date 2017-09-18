docker exec -it test-api-docs /bin/bash -c "git config --global user.email ei08098@gmail.com"
docker exec -it test-api-docs /bin/bash -c "git config --global user.name \"TEST NAME\""
docker exec -it test-api-docs /bin/bash -c "rake publish"
