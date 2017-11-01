FROM neo4j:3.2

MAINTAINER Martin Geldmacher 

RUN apk --no-cache add openssl libc6-compat \
    && wget https://www.yourkit.com/download/yjp-2016.02-b46-linux.tar.bz2 \
    && mkdir -p /usr/lib/yourkit \
    && tar jxvf yjp-2016.02-b46-linux.tar.bz2 -C /usr/lib/yourkit \
    && rm yjp-2016.02-b46-linux.tar.bz2

ENV NEO4J_dbms_jvm_additional="-agentpath:/usr/lib/yourkit/yjp-2016.02/bin/linux-x86-64/libyjpagent.so=disablestacktelemetry,disableexceptiontelemetry,probe_disable=*,delay=10000,sessionname=Neo4j"

EXPOSE 7474 7473 7687 10001
