# mairror

A helm chart to deploy mairror application

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.0.0](https://img.shields.io/badge/AppVersion-v1.0.0-informational?style=flat-square)

## Additional Information

## Installing the Chart

To install the chart with the release name `my-release`:

```console
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| mairror_api.affinity | object | `{}` |  |
| mairror_api.autoscaling | object | `{"enabled":false}` | Enable autoscaling |
| mairror_api.container.name | string | `"mairror-api"` |  |
| mairror_api.fullname | string | `"Mairror API"` | This is the fullname |
| mairror_api.image.pullPolicy | string | `"IfNotPresent"` |  |
| mairror_api.image.repository | string | `"mairror/mairror-api"` |  |
| mairror_api.image.tag | string | `"v1.1.0"` |  |
| mairror_api.ingress.annotations | object | `{}` |  |
| mairror_api.ingress.enabled | bool | `false` |  |
| mairror_api.ingress.hosts | list | `[]` |  |
| mairror_api.ingress.tls | list | `[]` |  |
| mairror_api.nodeSelector | object | `{}` |  |
| mairror_api.podAnnotations | object | `{}` |  |
| mairror_api.podSecurityContext.fsGroup | int | `1000` |  |
| mairror_api.replicaCount | int | `1` |  |
| mairror_api.resources.limits.cpu | string | `"100m"` |  |
| mairror_api.resources.limits.memory | string | `"128Mi"` |  |
| mairror_api.resources.requests.cpu | string | `"100m"` |  |
| mairror_api.resources.requests.memory | string | `"128Mi"` |  |
| mairror_api.secrets.create | bool | `false` |  |
| mairror_api.secrets.name | string | `"mairror-api-secret"` |  |
| mairror_api.secrets.values | object | `{}` |  |
| mairror_api.securityContext.runAsGroup | int | `1000` |  |
| mairror_api.securityContext.runAsUser | int | `1000` |  |
| mairror_api.service.annotations | object | `{}` |  |
| mairror_api.service.port | int | `8000` |  |
| mairror_api.service.type | string | `"ClusterIP"` |  |
| mairror_api.serviceAccount.create | bool | `true` |  |
| mairror_api.serviceAccount.name | string | `"mairror-api"` |  |
| mairror_api.tolerations | list | `[]` |  |
| mairror_bot.affinity | object | `{}` |  |
| mairror_bot.autoscaling.enabled | bool | `false` |  |
| mairror_bot.container.name | string | `"mairror-bot"` |  |
| mairror_bot.fullname | string | `"Mairror Bot"` |  |
| mairror_bot.image.pullPolicy | string | `"IfNotPresent"` |  |
| mairror_bot.image.repository | string | `"mairror/mairror-bot"` |  |
| mairror_bot.image.tag | string | `"v1.1.0"` |  |
| mairror_bot.nodeSelector | object | `{}` |  |
| mairror_bot.podAnnotations | object | `{}` |  |
| mairror_bot.podSecurityContext.fsGroup | int | `1000` |  |
| mairror_bot.replicaCount | int | `1` |  |
| mairror_bot.resources.limits.cpu | string | `"100m"` |  |
| mairror_bot.resources.limits.memory | string | `"128Milatest"` |  |
| mairror_bot.resources.requests.cpu | string | `"100m"` |  |
| mairror_bot.resources.requests.memory | string | `"128Mi"` |  |
| mairror_bot.secrets.create | bool | `false` |  |
| mairror_bot.secrets.name | string | `"mairror-bot-secret"` |  |
| mairror_bot.secrets.values | object | `{}` |  |
| mairror_bot.securityContext.runAsGroup | int | `1000` |  |
| mairror_bot.securityContext.runAsUser | int | `1000` |  |
| mairror_bot.serviceAccount.create | bool | `true` |  |
| mairror_bot.serviceAccount.name | string | `"mairror-bot"` |  |
| mairror_bot.tolerations | list | `[]` |  |
| mairror_predictor.affinity | object | `{}` |  |
| mairror_predictor.autoscaling | object | `{"enabled":false}` | Enable autoscaling |
| mairror_predictor.container.name | string | `"mairror-predictor"` |  |
| mairror_predictor.enabled | bool | `true` |  |
| mairror_predictor.fullname | string | `"Mairror Predictor"` | This is the fullname |
| mairror_predictor.image.pullPolicy | string | `"IfNotPresent"` |  |
| mairror_predictor.image.repository | string | `"mairror/mairror-api"` |  |
| mairror_predictor.image.tag | string | `"latest"` |  |
| mairror_predictor.nodeSelector | object | `{}` |  |
| mairror_predictor.podAnnotations | object | `{}` |  |
| mairror_predictor.podSecurityContext.fsGroup | int | `1000` |  |
| mairror_predictor.replicaCount | int | `1` |  |
| mairror_predictor.resources.limits.cpu | string | `"100m"` |  |
| mairror_predictor.resources.limits.memory | string | `"128Mi"` |  |
| mairror_predictor.resources.requests.cpu | string | `"100m"` |  |
| mairror_predictor.resources.requests.memory | string | `"128Mi"` |  |
| mairror_predictor.secrets.create | bool | `false` |  |
| mairror_predictor.secrets.name | string | `"mairror-predictor-secret"` |  |
| mairror_predictor.secrets.values | object | `{}` |  |
| mairror_predictor.securityContext.runAsGroup | int | `1000` |  |
| mairror_predictor.securityContext.runAsUser | int | `1000` |  |
| mairror_predictor.service.annotations | object | `{}` |  |
| mairror_predictor.service.port | int | `8000` |  |
| mairror_predictor.service.type | string | `"ClusterIP"` |  |
| mairror_predictor.serviceAccount.create | bool | `true` |  |
| mairror_predictor.serviceAccount.name | string | `"mairror-predictor"` |  |
| mairror_predictor.tolerations | list | `[]` |  |
| mairror_processor.affinity | object | `{}` |  |
| mairror_processor.autoscaling.enabled | bool | `false` |  |
| mairror_processor.container.name | string | `"mairror-processor"` |  |
| mairror_processor.fullname | string | `"Mairror Processor"` |  |
| mairror_processor.image.pullPolicy | string | `"IfNotPresent"` |  |
| mairror_processor.image.repository | string | `"mairror/mairror-processor"` |  |
| mairror_processor.image.tag | string | `"v1.0.0"` |  |
| mairror_processor.nodeSelector | object | `{}` |  |
| mairror_processor.podAnnotations | object | `{}` |  |
| mairror_processor.podSecurityContext.fsGroup | int | `1000` |  |
| mairror_processor.replicaCount | int | `1` |  |
| mairror_processor.resources.limits.cpu | string | `"100m"` |  |
| mairror_processor.resources.limits.memory | string | `"128Mi"` |  |
| mairror_processor.resources.requests.cpu | string | `"100m"` |  |
| mairror_processor.resources.requests.memory | string | `"128Mi"` |  |
| mairror_processor.secrets.create | bool | `false` |  |
| mairror_processor.secrets.name | string | `"mairror-processor-secret"` |  |
| mairror_processor.secrets.values | object | `{}` |  |
| mairror_processor.securityContext.runAsGroup | int | `1000` |  |
| mairror_processor.securityContext.runAsUser | int | `1000` |  |
| mairror_processor.serviceAccount.create | bool | `true` |  |
| mairror_processor.serviceAccount.name | string | `"mairror-processor"` |  |
| mairror_processor.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.7.0](https://github.com/norwoodj/helm-docs/releases/v1.7.0)
