set -eux

apk add sudo

echo "Defaults exempt_group=wheel" > /etc/sudoers
echo "%wheel ALL=NOPASSWD:ALL" >> /etc/sudoers
