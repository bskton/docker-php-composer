# Docker image for PHP with Composer

Docker image with PHP 7.3 and Composer 1.10.19

Build image
```
docker build -t bskton/php-composer .
```

Usage
```
docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) bskton/php-composer
```

Using bash
```
docker run --rm -it -v $PWD:/app -u $(id -u):$(id -g) bskton/php-composer bash
```