FROM scratch

# 下载 FreeBSD UFS 文件系统并添加到 Docker 镜像中
ADD https://download.freebsd.org/ftp/releases/VM-IMAGES/14.1-RELEASE/amd64/Latest/FreeBSD-14.1-RELEASE-amd64-ufs.qcow2.xz /freebsd-ufs.qcow2.xz

# 解压文件系统
RUN xz -d /freebsd-ufs.qcow2.xz

# 可选步骤：将 .qcow2 转换为 raw 格式
# RUN qemu-img convert /freebsd-ufs.qcow2 /freebsd-ufs.img

# 设置默认 shell
CMD ["/bin/sh"]
