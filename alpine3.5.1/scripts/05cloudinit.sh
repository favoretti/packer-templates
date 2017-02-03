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
apk add patchelf
rc-update add cloud-init
patch -p0 -i /root/ci_growpath.patch /usr/lib/python2.7/site-packages/cloudinit/config/cc_growpart.py
