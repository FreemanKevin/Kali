# 使用 Kali Rolling 作为基础镜像
FROM kalilinux/kali-rolling:latest

# 设置环境变量
ENV DEBIAN_FRONTEND=noninteractive

# 更新系统并安装网络工具
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install --no-install-recommends -y \
    net-tools \
    iproute2 \
    iputils-ping \
    telnet \
    tcpdump \
    wget \
    curl \
    nmap \
    traceroute \
    openssh-client \
    iptables \
    ethtool \
    dnsutils \
    netcat \
    git \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


# 设置默认工作目录
WORKDIR /root

# 开放 SSH 默认端口
EXPOSE 2222

# 启动 Bash
CMD ["/bin/bash"]
