FROM python:3.10.7-bullseye

LABEL maintainer "Toby Yan <me@tobyan.com>"

# 创建操作目录
RUN mkdir -p /fisco

WORKDIR /fisco

# 下载Pro版区块链构建工具BcosBuilder
RUN curl -#LO https://github.com/FISCO-BCOS/FISCO-BCOS/releases/download/v3.0.1/BcosBuilder.tgz && tar -xvf BcosBuilder.tgz

WORKDIR /fisco/BcosBuilder

# 安装构建工具依赖包
RUN pip3 install -r requirements.txt

# 进入操作目录
WORKDIR /fisco/BcosBuilder/pro

# 运行build_chain.py脚本下载二进制，二进制包默认下载到binary目录
RUN python3 build_chain.py download_binary

# 部署配置 - in
VOLUME /fisco/BcosBuilder/pro/config.toml
# deploy配置 - out
VOLUME /fisco/BcosBuilder/pro/generated
# build配置 - out
VOLUME /fisco/BcosBuilder/pro/output_dir

CMD ["python3", "build_chain.py", "--help"]
