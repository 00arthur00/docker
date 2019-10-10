FROM ubuntu:18.04

COPY snmp/snmp_exporter /bin/snmp_exporter

CMD [ "snmp_exporter","--config.file=/etc/exporter/snmp.json" ]

EXPOSE 9116