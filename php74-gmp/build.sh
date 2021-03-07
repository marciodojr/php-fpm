cd 74-gmp
make build
make push
cd ..

cd 74-gmp-dev
make build
make push

cd ..
cd 74-gmp-dev-nginx
make build
make push

cd ..
cd 74-gmp-nginx
make build
make push

cd ..