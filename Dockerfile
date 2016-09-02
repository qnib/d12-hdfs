FROM qnib/alpn-hdfs

ADD opt/qnib/hdfs/bin/healthcheck.sh /opt/qnib/hdfs/bin/
HEALTHCHECK --interval=2s --retries=120 --timeout=1s \
  CMD /opt/qnib/hdfs/bin/healthcheck.sh
