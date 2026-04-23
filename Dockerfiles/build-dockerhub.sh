#!/usr/bin/env zsh
# vim:sw=4:ts=4:et

echo "-----------------------------------------------------------------------------------------------"
echo "Hihi starts releasing (Docker Hub)"
echo "-----------------------------------------------------------------------------------------------"
echo "\n"
date
pwd

# Load NAME_VENDOR / DOCKERHUB_USER (and any other overrides) from .env next to this script.
# Copy .env.example to .env and fill it in. .env is gitignored.
SCRIPT_DIR=${0:a:h}
if [ -f "$SCRIPT_DIR/.env" ]; then
    set -a
    source "$SCRIPT_DIR/.env"
    set +a
fi

# NAME_VENDOR is the Docker Hub namespace (e.g. `jhorie` -> jhorie/nginx-php-fpm).
if [ -z "$NAME_VENDOR" ]; then
    echo "ERROR: NAME_VENDOR is not set."
    echo "       Copy $SCRIPT_DIR/.env.example to $SCRIPT_DIR/.env and fill in NAME_VENDOR,"
    echo "       or export NAME_VENDOR in your shell before running this script."
    exit 1
fi

# Docker Hub username for login. Defaults to NAME_VENDOR if unset.
: ${DOCKERHUB_USER:=$NAME_VENDOR}
export NAME_VENDOR DOCKERHUB_USER

# Optional positional arg: target platform(s) for buildx.
# No arg -> Makefile default (linux/amd64,linux/arm64). CLI arg wins over .env.
case "${1:-}" in
    "")            : ;;
    amd64)         export PLATFORMS=linux/amd64 ;;
    arm64)         export PLATFORMS=linux/arm64 ;;
    linux/*)       export PLATFORMS="$1" ;;
    -h|--help)
        echo "Usage: $0 [amd64|arm64|linux/<arch>]"
        echo "  (no arg) : multi-arch (linux/amd64,linux/arm64) -- default"
        echo "  amd64    : linux/amd64 only (fastest on amd64 host)"
        echo "  arm64    : linux/arm64 only"
        echo "  linux/*  : any docker platform string, e.g. linux/arm/v7"
        exit 0 ;;
    *)
        echo "ERROR: unknown platform argument '$1'. Use amd64, arm64, or linux/<arch>."
        exit 1 ;;
esac

if [ -n "$PLATFORMS" ]; then
    echo "[] Building for platform(s): $PLATFORMS"
else
    echo "[] Building for platform(s): linux/amd64,linux/arm64 (Makefile default)"
fi

echo "[] Pushing to Docker Hub repo: $NAME_VENDOR/nginx-php-fpm (login user: $DOCKERHUB_USER)"
echo "[] Assuming 'docker login -u $DOCKERHUB_USER' has already been run in this shell."

if docker buildx ls | grep -q buildnginxphpfpm; then
    echo 'found'
    docker buildx rm buildnginxphpfpm
    echo 'buildnginxphpfpm removed'
else
    echo 'not found'
fi

export BUILD_CMD=releaseDockerHub

set -e



export VERSION_OS=trixie
export VERSION_NGINX=1.30.0
export VERSION_PHP=8.4.20
export IS_LATEST=true
make $BUILD_CMD