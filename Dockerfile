FROM openjdk:11-jdk

ENV TALEND_URL="https://download-mirror2.talend.com/tos/release/V8.0.1/TOS_DI-20211109_1610-V8.0.1.zip?mkt_tok=MzQ3LUlBVC02NzcAAAGLWQGRumrG8klT4RRQiQOs01DSPFe-4ZMR4Qini4mBLZGKWc5jAUXnaxhlGWoHlhyuB2qipVV4s5daD5skjHwNx4KqtC01IQHHDC8Odpv"

RUN apt-get update && \
    apt-get install -y --no-install-recommends libwebkit2gtk-4.0-37 libswt-gtk-4-java libswt-cairo-gtk-4-jni libswt-webkit-gtk-4-jni && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget "${TALEND_URL}" -O /tmp/talend.zip && \
    unzip /tmp/talend.zip -d /opt && \
    rm /tmp/talend.zip

ENV PATH="/opt/TOS_DI-20211109_1610-V8.0.1:${PATH}"

CMD ["/opt/TOS_DI-20211109_1610-V8.0.1/TOS_DI-linux-gtk-x86_64"]

