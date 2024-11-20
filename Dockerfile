FROM telegraf:1.32.2

# Install smartmontools and nvme-cli
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    smartmontools \
    nvme-cli && \
    rm -rf /var/lib/apt/lists/*

RUN smartctl --version && nvme --version

LABEL description="Telegraf with SMART monitoring and NVMe CLI tools"
