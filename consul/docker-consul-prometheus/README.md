## 配置
### docker-compose
``` yaml
    environment:
      PROMETHEUSPREFIX: prometheus
      RULEPREFIX: alert_rules/ops
```

### consul
### rule相关的key/value
ipmimonitor:
``` json
{"name":"ipmimonitor","interval":"5m","rules":[{"alert":"硬件监控 cpu 硬件Error (IERR)","expr":"min_over_time(ipmi_check_cpu[30m])==0","labels":{"monitor_domain":"ops","monitor_metric":"ipmimonitor","sender":"email","sender_group":"OPSTEST","severity":"warning","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控 cpu 硬件Error (IERR)","follower":"yapo.yang","is_callback":"0","metric_type":"ipmimonitor","summary":"硬件监控 cpu 硬件Error (IERR)","value":"{{ $value }}"}},{"alert":"硬件监控 hardisk 硬件Error (Drive Fault)","expr":"min_over_time(ipmi_check_hdisk[30m])==0","labels":{"monitor_domain":"ops","monitor_metric":"ipmimonitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控 hardisk 硬件Error (Drive Fault)","follower":"yapo.yang","is_callback":"0","metric_type":"ipmimonitor","summary":"硬件监控 hardisk 硬件Error (Drive Fault)","value":"{{ $value }}"}},{"alert":"硬件监控 memory 硬件Error(错误检查和纠正)","expr":"min_over_time(ipmi_check_mem[30m])==0","labels":{"monitor_domain":"ops","monitor_metric":"ipmimonitor","sender":"email","sender_group":"OPSTEST","severity":"warning","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控 memory 硬件Error(错误检查和纠正)","follower":"yapo.yang","is_callback":"0","metric_type":"ipmimonitor","summary":"硬件监控 memory 硬件Error(错误检查和纠正)","value":"{{ $value }}"}},{"alert":"硬件监控 No ipmitools data for \u003e 30 minutes","expr":"min_over_time(ipmi_up{job=\"ipmi\"}[30m])==0","labels":{"monitor_domain":"ops","monitor_metric":"ipmimonitor","sender":"email","sender_group":"OPSTEST","severity":"information","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控 No ipmitools data for \u003e 30 minutes","follower":"yapo.yang","is_callback":"0","metric_type":"ipmimonitor","summary":"硬件监控 No ipmitools data for \u003e 30 minutes","value":"{{ $value }}"}},{"alert":"硬件监控 非核心硬件有可能错误","expr":"min_over_time(ipmi_check_otherhardware[30m])==0","labels":{"monitor_domain":"ops","monitor_metric":"ipmimonitor","sender":"email","sender_group":"OPSTEST","severity":"warning","template_name":"通用模板","template_type":"系统应用"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控 非核心硬件有可能错误","follower":"yapo.yang","is_callback":"0","metric_type":"ipmimonitor","summary":"硬件监控 非核心硬件有可能错误","value":"{{ $value }}"}},{"alert":"硬件监控 电源有问题","expr":"min_over_time(ipmi_check_psu{nopsu!=\"yes\"}[30m])==0","labels":{"monitor_domain":"ops","monitor_metric":"ipmimonitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控 电源有问题","follower":"yang.shi","is_callback":"0","metric_type":"ipmimonitor","summary":"硬件监控 电源有问题","value":"{{ $value }}"}}]}
```
snmpminitor
```json
{"name":"snmpminitor","interval":"5m","rules":[{"alert":"硬件监控-No iDrac data for \u003e 30 minutes","expr":"min_over_time(up{job=\"snmp\"}[30m])==0","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"information","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-No iDrac data for \u003e 30 minutes","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-No iDrac data for \u003e 30 minutes","value":"{{ $value }}"}},{"alert":"硬件监控-Problem with CMOS Battery","expr":"min_over_time(CMOSBatteryStatus[30m])!=3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"information","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Problem with CMOS Battery","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Problem with CMOS Battery","value":"{{ $value }}"}},{"alert":"硬件监控-Storage System Status Error","expr":"min_over_time(GlobalSystemStorageStatus[30m])\u003e4","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"disaster","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"null","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Storage System Status Error","value":"{{ $value }}"}},{"alert":"硬件监控-Storage System Status Warning","expr":"min_over_time(GlobalSystemStorageStatus[30m])!=3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"information","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Storage System Status Warning","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Storage System Status Warning","value":"{{ $value }}"}},{"alert":"硬件监控-System is not online","expr":"min_over_time(GlobalSystemPowerState[30m])!=4 and min_over_time(GlobalSystemPowerState[30m])!=0","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-System is not online\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-System is not online","value":"{{ $value }}"}},{"alert":"硬件监控-Voltage Status Error","expr":"min_over_time(VoltageStatusCombined[30m]) != 3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Voltage Status Error\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Voltage Status Error","value":"{{ $value }}"}},{"alert":"硬件监控-ssd {#SNMPINDEX} 剩余额定写入耐久性小于30%","expr":"min_over_time(DiskRemainingRatedWriteEndurance[30m])\u003c3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"information","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-ssd {#SNMPINDEX} 剩余额定写入耐久性小于30%\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-ssd {#SNMPINDEX} 剩余额定写入耐久性小于30%","value":"{{ $value }}"}},{"alert":"硬件监控-Volume {#SNMPINDEX} Error","expr":"min_over_time(VolumeDiskState[30m])!=2","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Volume {#SNMPINDEX} Error\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Volume {#SNMPINDEX} Error","value":"{{ $value }}"}},{"alert":"硬件监控-Volume {#SNMPINDEX} Status Error","expr":"min_over_time(VolumeStatus[30m])!=3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Volume {#SNMPINDEX} Status Error\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Volume {#SNMPINDEX} Status Error","value":"{{ $value }}"}},{"alert":"硬件监控-Error on {#SNMPVALUE}","expr":"min_over_time(NetStatus[30m])!=3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"disaster","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Error on {#SNMPVALUE}\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Error on {#SNMPVALUE}","value":"{{ $value }}"}},{"alert":"硬件监控-Error on Processor {#SNMPVALUE}","expr":"min_over_time(ProcStatus[30m])!=3 and min_over_time(ProcStatus[30m])!=2 or ( min_over_time(ProcStatus[30m] offset 24h) !=2 and min_over_time(ProcStatus[30m])==2 )","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"disaster","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Error on Processor {#SNMPVALUE}\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Error on Processor {#SNMPVALUE}","value":"{{ $value }}"}},{"alert":"硬件监控-Problem with PSU 电源 {#SNMPINDEX}","expr":"min_over_time(PowerSupplyStatus{nopsu!=\"yes\"}[30m])!=3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Problem with PSU 电源 {#SNMPINDEX}\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Problem with PSU 电源 {#SNMPINDEX}","value":"{{ $value }}"}},{"alert":"硬件监控-Problem with 传感器温度{#SNMPVALUE}","expr":"min_over_time(TempStatus[30m])!=3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"warning","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Problem with 传感器温度{#SNMPVALUE}\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Problem with 传感器温度{#SNMPVALUE}","value":"{{ $value }}"}},{"alert":"硬件监控-Temperature on {#SNMPVALUE} critically low","expr":"min_over_time(TempValue[30m]) \u003c ignoring(name) min_over_time(TempCritLowLimit[30m])","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Temperature on {#SNMPVALUE} critically low\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Temperature on {#SNMPVALUE} critically low","value":"{{ $value }}"}},{"alert":"硬件监控-Temperature on {#SNMPVALUE} to low","expr":"min_over_time(TempValue[30m]) \u003c  ignoring(name) min_over_time(TempWarnLowLimit[30m]) and min_over_time(TempValue[30m]) \u003e ignoring(name) min_over_time(TempCritLowLimit[30m])","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"warning","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Temperature on {#SNMPVALUE} to low\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Temperature on {#SNMPVALUE} to low","value":"{{ $value }}"}},{"alert":"硬件监控-传感器温度 on {#SNMPVALUE} 太高","expr":"min_over_time(TempValue[30m]) \u003e  ignoring(name) min_over_time(TempWarnUpLimit[30m]) and min_over_time(TempValue[30m]) \u003c  ignoring(name) min_over_time(TempCritUpLimit[30m])","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-传感器温度 on {#SNMPVALUE} 太高\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-传感器温度 on {#SNMPVALUE} 太高","value":"{{ $value }}"}},{"alert":"硬件监控-温度 on {#SNMPVALUE} 超级超级高高","expr":"min_over_time(TempValue[30m]) \u003e ignoring(name) min_over_time( TempCritUpLimit[30m])","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-温度 on {#SNMPVALUE} 超级超级高高\n","follower":"yang.shi","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-温度 on {#SNMPVALUE} 超级超级高高","value":"{{ $value }}"}},{"alert":"硬件监控-Error on PSU 电源{#SNMPINDEX} State","expr":"min_over_time(PowerSupplySensorState{nopsu!=\"yes\"}[30m])!=1","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Error on PSU 电源{#SNMPINDEX} State","follower":"yapo.yang","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Error on PSU 电源{#SNMPINDEX} State","value":"{{ $value }}"}},{"alert":"硬件监控-Problem with Disk {#SNMPINDEX}","expr":"min_over_time(DiskStatus[30m])!=3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"disaster","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Problem with Disk {{ $labels.snmpindex }}","follower":"yapo.yang","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Problem with Disk {#SNMPINDEX}","value":"{{ $value }}"}},{"alert":"硬件监控-Problem with memory in slot {#SNMPVALUE}","expr":"min_over_time(MemStatus[30m])!=3","labels":{"monitor_domain":"ops","monitor_metric":"snmpminitor","sender":"email","sender_group":"OPSTEST","severity":"high","template_name":"硬件模板","template_type":"物理硬件"},"annotations":{"callback_parameter":"{}","callback_url":"","comment":"null","description":"硬件监控-Problem with memory in slot {{$labels.snmpindex}}\n","follower":"yapo.yang","is_callback":"0","metric_type":"snmpminitor","summary":"硬件监控-Problem with memory in slot {#SNMPVALUE}","value":"{{ $value }}"}}]}
```

### prometheus相关的key/value
global:
``` json
{
      "scrape_interval": "30s",
      "evaluation_interval": "15s",
      "external_labels": {
        "domain": "hardware_snmp"
      }
    }
```

rule_files:
``` json
[
      "etc/config/rules/ops/*.json"
    ]
```

scrape_configs/snmp:
``` json
{
        "job_name": "snmp",
        "params": {
          "module": [
            "if_mib"
          ]
        },
        "scrape_interval": "30m",
        "scrape_timeout": "5m",
        "metrics_path": "/snmp",
        "scheme": "http",
        "file_sd_configs": [
          {
            "files": [
              "targets/snmp/*.yml"
            ],
            "refresh_interval": "5m"
          }
        ],
        "relabel_configs": [
          {
            "source_labels": [
              "__address__"
            ],
            "separator": ";",
            "regex": "(.*)",
            "target_label": "__param_target",
            "replacement": "$1",
            "action": "replace"
          },
          {
            "source_labels": [
              "__param_target"
            ],
            "separator": ";",
            "regex": "(.*)",
            "target_label": "instance",
            "replacement": "$1",
            "action": "replace"
          },
          {
            "source_labels": [
              "__param_target"
            ],
            "separator": ";",
            "regex": "(.*)",
            "target_label": "ip",
            "replacement": "$1",
            "action": "replace"
          },
          {
            "source_labels": [
              "__param_target"
            ],
            "separator": ";",
            "regex": "(.*)",
            "target_label": "endpoint",
            "replacement": "$1",
            "action": "replace"
          },
          {
            "separator": ";",
            "regex": "(.*)",
            "target_label": "__address__",
            "replacement": "10.212.26.108:9116",
            "action": "replace"
          }
        ]
      }
```

scrape_configs/ipmi:
``` json
{
        "job_name": "ipmi",
        "file_sd_configs": [
          {
            "files": [
              "targets/ipmi/*.yml"
            ]
          }
        ],
        "params": {
          "module": [
            "default"
          ]
        },
        "scrape_interval": "30m",
        "scrape_timeout": "3m",
        "metrics_path": "/ipmi",
        "scheme": "http",
        "relabel_configs": [
          {
            "source_labels": [
              "__address__"
            ],
            "separator": ";",
            "regex": "(.*)",
            "target_label": "__param_target",
            "replacement": "${1}",
            "action": "replace"
          },
          {
            "source_labels": [
              "__param_target"
            ],
            "separator": ";",
            "regex": "(.*)",
            "target_label": "instance",
            "replacement": "${1}",
            "action": "replace"
          },
          {
            "source_labels": [
              "__param_target"
            ],
            "separator": ";",
            "regex": "(.*)",
            "target_label": "ip",
            "replacement": "${1}",
            "action": "replace"
          },
          {
            "source_labels": [
              "__param_target"
            ],
            "separator": ";",
            "regex": "(.*)",
            "target_label": "endpoint",
            "replacement": "${1}",
            "action": "replace"
          },
          {
            "separator": ";",
            "regex": ".*",
            "target_label": "__address__",
            "replacement": "10.212.26.108:9290",
            "action": "replace"
          }
        ]
      }
```

alert_relabel_configs:
``` json
[
    {
            "source_labels": [
              "__param_target"
            ],
            "separator": ";",
            "regex": "(.*)",
            "target_label": "ip",
            "replacement": "${1}",
            "action": "replace"
          }
]
```

alertmanagers:
``` json
[
        {
          "static_configs": [
            {
              "targets": [
                "127.0.0.1",
                "10.212.26.101:9095"
              ]
            }
          ]
        }
      ]
```

remote_write:
``` json
 [
      {
        "url": "http://localhost:8086/api/v1/prom/write?db=prometheus"
      },
      {
        "url": "http://10.212.11.56:7201/api/v1/prom/remote/write"
      }
    ]
```

remote_read:
``` json
[
      {
        "url": "http://localhost:8086/api/v1/prom/read?db=prometheus",
        "read_recent": true
      }
    ]
```