

# KaliNetBox

KaliNetBox 是基于 Kali Linux Rolling 版本构建的 Docker 镜像，集成了多个常用的网络测试工具，适用于网络诊断、故障排除、渗透测试等任务。该项目旨在提供一个轻量化且功能强大的网络测试环境，方便用户在容器内运行各种网络工具。


## 特性

- **基于 Kali Linux Rolling**：使用 Kali Linux 最新的开发版本，保证了工具和功能的持续更新。
- **多架构支持**：镜像支持 `amd64` 和 `arm64` 架构，兼容主流硬件平台。
- **集成常用网络测试工具**：包括网络诊断、渗透测试、抓包分析等多种工具。

## 集成的工具

该 Docker 镜像集成了以下常用的网络测试工具：

- **Net-tools (如 ifconfig)**: 用于配置或显示系统网络接口的信息。
- **Iproute2**: 现代 Linux 系统中用于管理路由和网络设备的工具集。
- **Iputils-ping**: 用于测试网络连接的可达性。
- **Telnet**: 进行远程通信和管理。
- **Tcpdump**: 抓取并分析经过网络接口的数据包。
- **Wget/Curl**: 从网络上下载文件，并进行网络连接测试。
- **Nmap**: 网络探测和端口扫描，用于发现网络连接的特性。
- **Traceroute**: 跟踪数据包经过的路由路径。
- **SSH**: 安全地远程访问其他系统。
- **Iptables**: 管理内核级防火墙规则。
- **Ethtool**: 查看和修改网络接口卡的设置。
- **Dnsutils (如 dig)**: 进行 DNS 查询和故障排除。
- **Netcat**: 用于读写网络连接，进行端口监听和扫描。

## 如何运行

### 使用 Docker 运行

1. **拉取镜像**  
   在 Docker 中，使用以下命令拉取镜像：

   ```shell
   docker pull freelabspace/kalinetbox:latest
   ```

2. **运行容器**  
   使用以下命令运行容器并进入交互模式：

   ```shell
   docker run -it --rm freelabspace/kalinetbox:latest
   ```

   上述命令会启动一个容器并将其放置在交互模式下，你可以开始使用网络测试工具。

### 多架构支持

该镜像支持 `amd64` 和 `arm64` 架构，你可以在 Docker 中通过指定平台来运行对应架构的容器。例如：

```bash
docker run --platform linux/amd64 -it --rm freelabspace/kalinetbox:latest
```

```bash
docker run --platform linux/arm64 -it --rm freelabspace/kalinetbox:latest
```

### 运行时参数

你可以根据需要为 Docker 容器添加额外的参数。例如，如果需要映射本地端口或挂载本地卷，可以使用以下命令：

```bash
docker run -it -p 2222:2222 --rm freelabspace/kalinetbox:latest
```

## 项目构建

### 构建镜像

如果你想自己构建该镜像，可以通过以下步骤进行操作：

1. 克隆本项目：

   ```shell
   git clone https://github.com/FreemanKevin/KaliNetBox.git
   cd KaliNetBox
   ```

2. 使用 `docker build` 命令构建镜像：

   ```shell
   docker build -t freelabspace/kalinetbox:latest .
   ```

3. 推送镜像到 GitHub 容器注册表（如果需要）：

   ```shell
   docker push freelabspace/kalinetbox:latest
   ```

## 许可证

本项目使用 [MIT License](LICENSE) 进行开源，详情请参阅 LICENSE 文件。

## 贡献

欢迎提出问题或提交 PR。如果你有任何功能请求或改进建议，欢迎通过 GitHub Issues 与我们联系。



