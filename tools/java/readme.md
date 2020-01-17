# JDK安装步骤
1. 在官网下载jdk工具包
   1. [下载页面](https://www.oracle.com/technetwork/java/javase/downloads/index.html)
   2. ![20200117194343.png](https://raw.githubusercontent.com/hellochengkai/MyPicGo/master/20200117194343.png?token=AC4ZQY3U6H6DCMC3N7JN2226EGPC2)
   3. ![20200117194300.png](https://raw.githubusercontent.com/hellochengkai/MyPicGo/master/20200117194300.png?token=AC4ZQY3OVDHFHTHONV6TX4C6EGPAE)
2. 下载之后解压到`/home/chengkai/bin/jdk1.8.0_241`
3. 环境变量的设置
    ```bash
    export JAVA_HOME=/home/chengkai/bin/jdk1.8.0_241
    export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
    export PATH=$PATH:$JAVA_HOME/bin
    ```