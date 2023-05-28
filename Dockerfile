FROM ubuntu

# Install dependencies
RUN apt-get update &&  \
    apt-get install -y \
    libstdc++6 \
    libc6 \
    libuuid1 \
    wget

RUN wget https://download.java.net/java/GA/jdk20.0.1/b4887098932d415489976708ad6d1a4b/9/GPL/openjdk-20.0.1_linux-x64_bin.tar.gz && \
    tar xz -C /usr/local -f openjdk-20.0.1_linux-x64_bin.tar.gz && \
    rm openjdk-20.0.1_linux-x64_bin.tar.gz \
    && ln -s /usr/local/jdk-20.0.1/bin/java /usr/bin/java \
    && ln -s /usr/local/jdk-20.0.1/bin/javac /usr/bin/javac

# Set the working directory
WORKDIR /app

CMD java --version
