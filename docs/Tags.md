# Tag List of dwchiang/nginx-php-fpm

- Starting from 2026-04-15, the maintained matrix is pruned to PHP 8.3 / 8.4 on Debian `trixie`, `bookworm` and `alpine3.22` only. Historical tags for removed OSes (`buster`, `bullseye`, `alpine3.13`–`alpine3.21`) and older PHP branches (`7.2`, `7.3`, `7.4`, `8.0`, `8.1`, `8.2`) remain available via Docker Hub / AWS ECR Public but are no longer rebuilt; their Dockerfiles live in git history.
- Starting from 2023-04-27, the project has decided to maintain the latest version of each PHP branch due to the increasing mixed results observed when combining different versions of PHP, OS, and Nginx.
- This project changed tag naming rule for easier maintanance and searching since 2021-07-25.
  - Current tag naming rule: {PHP version}-fpm-{OS code}-nginx-{NGINX version}
  - Previous tag naming rule (tags still on registries, no longer built): {PHP version}-fpm-{NGINX version}-nginx-{OS code}

# Tags with Current Naming Rule

## PHP 8.4

- [`8.4.20-fpm-trixie-nginx-1.30.0`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/trixie/Dockerfile-8.4.20-fpm-trixie-nginx-1.30.0), `latest`
- [`8.4.20-fpm-bookworm-nginx-1.30.0`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.4.20-fpm-bookworm-nginx-1.30.0)
- [`8.4.20-fpm-alpine3.22-nginx-1.30.0`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/alpine3.22/Dockerfile-8.4.20-fpm-alpine3.22-nginx-1.30.0)
- [`8.4.5-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.4.5-fpm-bookworm-nginx-1.27.4)
- [`8.4.4-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.4.4-fpm-bookworm-nginx-1.27.4)
- [`8.4.3-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.4.3-fpm-bookworm-nginx-1.27.4)
- [`8.4.2-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.4.2-fpm-bookworm-nginx-1.27.4)
- [`8.4.1-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.4.1-fpm-bookworm-nginx-1.27.4)

## PHP 8.3

- [`8.3.19-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.3.19-fpm-bookworm-nginx-1.27.4)
- [`8.3.17-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.3.17-fpm-bookworm-nginx-1.27.4)
- [`8.3.16-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.3.16-fpm-bookworm-nginx-1.27.4)
- [`8.3.15-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.3.15-fpm-bookworm-nginx-1.27.4)
- [`8.3.14-fpm-bookworm-nginx-1.27.4`](https://github.com/dwchiang/nginx-php-fpm/blob/master/Dockerfiles/bookworm/Dockerfile-8.3.14-fpm-bookworm-nginx-1.27.4)
