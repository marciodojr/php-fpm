cd 80
make build
make push
cd ..

cd 80-dev
make build
make push

cd ..
cd 80-dev-nginx
make build
make push

cd ..
cd 80-nginx
make build
make push

cd ..