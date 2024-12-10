FROM telegraf:1.33.0

# Install smartmontools and nvme-cli
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    smartmontools nvme-cli sudo && \
    rm -rf /var/lib/apt/lists/*

RUN echo "telegraf ALL=(ALL) NOPASSWD: /usr/sbin/smartctl, /usr/sbin/nvme" >> /etc/sudoers.d/telegraf

RUN smartctl --version && nvme --version

LABEL description="Telegraf with SMART monitoring and NVMe CLI tools"
