set -exu

cat <<_EOF > /etc/apk/repositories
http://dl-cdn.alpinelinux.org/alpine/v3.5/main
http://dl-cdn.alpinelinux.org/alpine/v3.5/community
http://dl-cdn.alpinelinux.org/alpine/edge/testing
_EOF

apk update
apk add cloud-init
apk add sfdisk
apk add util-linux
apk add bash
rc-update add cloud-init
