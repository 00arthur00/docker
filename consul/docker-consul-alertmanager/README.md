## 配置
### docker-compose
``` yaml
    environment:
      ALERTMANAGERPREFIX: alertmanager
```

### consul
global:
``` json
{
    "resolve_timeout": "1h",
    "http_config": {
    },
    "smtp_hello": "localhost",
    "smtp_require_tls": true,
    "pagerduty_url": "https://events.pagerduty.com/v2/enqueue",
    "hipchat_api_url": "https://api.hipchat.com/",
    "opsgenie_api_url": "https://api.opsgenie.com/",
    "wechat_api_url": "https://qyapi.weixin.qq.com/cgi-bin/",
    "victorops_api_url": "https://alert.victorops.com/integrations/generic/20131114/alert/"
  }
```

route:
``` json
{
    "receiver": "web.hook",
    "group_by": [
      "job",
      "alertname"
    ],
    "routes": [
      {
        "match": {
          "domain": "hardware_snmp"
        },
        "group_wait": "0s",
        "group_interval": "5m",
        "repeat_interval": "12h"
      }
    ],
    "group_wait": "0s",
    "group_interval": "5m",
    "repeat_interval": "5m"
  }
```

inhibit_rules:
``` json
[
    {
      "source_match": {
        "severity": "critical"
      },
      "target_match": {
        "severity": "warning"
      },
      "equal": [
        "alertname",
        "job",
        "instance"
      ]
    }
  ]
```

receivers:
``` json
[
    {
      "name": "web.hook",
      "webhook_configs": [
        {
          "send_resolved": true,
          "http_config": {
          },
          "url": "http://127.0.0.1/accounts/receiver/"
        }
      ]
    }
  ]
```
templates:
``` json
[
    "default.tmpl"
]
```

