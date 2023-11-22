# cd 82
# make build
# make push
# cd ..

# cd 82-dev
# make build
# make push
# cd ..

# cd 82-dev-nginx
# make build
# make push
# cd ..

# cd 82-nginx
# make build
# make push
# cd ..

# listar diretorios com shell script
find . -maxdepth 1 -type d -exec sh -c '(cd {} && pwd)' \;

# passar em cada diretorio e executar o comando "make build" e "make push"
find . -maxdepth 1 -type d -exec sh -c '(cd {} && make build)' \;
