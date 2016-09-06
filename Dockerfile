FROM qnib/alpn-hdfs

ADD opt/qnib/hdfs/bin/healthcheck.sh /opt/qnib/hdfs/bin/
HEALTHCHECK --interval=30s --retries=20 --timeout=20s \
  CMD /opt/qnib/hdfs/bin/healthcheck.sh
