# arma3

![Version: 0.1.7](https://img.shields.io/badge/Version-0.1.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

A Helm chart for ARMA 3 on LinuxGSM.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Britton Hayes |  | <https://github.com/brittonhayes> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.admins | list | `[]` | List of administrators |
| config.alerts | object | `{"discord":""}` | Webook alerts configurations |
| config.alerts.discord | string | `""` | Discord webhook URL |
| config.battleeye | int | `1` | 1=enabled, 0=disabled |
| config.commonConfigPath | string | `"/linuxgsm/lgsm/config-lgsm/arma3server/common.cfg"` | Common config path |
| config.env | object | `{"ARMA_CDLC":"","ARMA_LIMITFPS":"60","MODS_PRESET":"","STEAM_BRANCH":""}` | Environment parameters for the game container |
| config.env.ARMA_CDLC | string | `""` | Specify a creators DLC, e.g. 'vn' |
| config.env.ARMA_LIMITFPS | string | `"60"` | Specify the FPS limit for the server |
| config.env.MODS_PRESET | string | `""` | Use a preset from /modpresets/<presetname> |
| config.env.STEAM_BRANCH | string | `""` | Select the steam branch, e.g. 'creatordlc' |
| config.headlessClients | list | `[]` | Set the headlessClients and localClient, set to 127.0.0.1 when .Values.headlessclient.enabled |
| config.hostname | string | `"arma3.example.com"` | External Hostname of server |
| config.maxPlayers | int | `20` | Set the maximum number of player clients able to connect to the server |
| config.mods | list | `[]` | List of mods |
| config.networkConfigPath | string | `"/linuxgsm/lgsm/config-lgsm/arma3server/arma3server.network.cfg"` | Network config path |
| config.serverConfigPath | string | `"/linuxgsm/lgsm/config-lgsm/arma3server/arma3server.server.cfg"` | Server config path |
| config.serverMods | list | `[]` | List of server mods |
| credentials | object | `{"adminPassword":"","serverPassword":"","steamPassword":"","steamUser":"","useExistingSecret":{"adminPasswordKey":"admin-password","enabled":false,"name":"","namespace":"","serverPasswordKey":"server-password","steamPasswordKey":"steam-password","steamUserKey":"steam-user"}}` | Specify credentials for the server |
| credentials.useExistingSecret.adminPasswordKey | string | `"admin-password"` | The Server ADMIN Password |
| credentials.useExistingSecret.enabled | bool | `false` | Use a dedicated, already existing secret for credentials, any key already specified under 'credentials.' directly will be ignored |
| credentials.useExistingSecret.name | string | `""` | The credential is looked up from a secret with this name |
| credentials.useExistingSecret.namespace | string | `""` | The credential is looked up from a secret, which resides in this namespace if empty, use Release.Namespace |
| credentials.useExistingSecret.serverPasswordKey | string | `"server-password"` | The Server Password |
| credentials.useExistingSecret.steamPasswordKey | string | `"steam-password"` | The Steam API to Login to the Steam API |
| credentials.useExistingSecret.steamUserKey | string | `"steam-user"` | The Steam User to Login to the Steam API |
| deploymentAnnotations."reloader.stakater.com/auto" | string | `"true"` | To automatically reload the container on configuration changes, use |
| fullnameOverride | string | `""` |  |
| headlessclient | object | `{"affinity":{},"antiAffinity":{"enabled":true},"enabled":false,"initResources":{},"name":"hc","nodeSelector":{},"replicas":null,"resources":{},"tolerations":[]}` | Headless clients only work when persistence.data.accessMode is set to 'ReadWriteMany' |
| headlessclient.antiAffinity.enabled | bool | `true` | Enable podAntiAffinity so that server and headless clients get scheduled on different nodes if possible |
| headlessclient.initResources | object | `{}` | We usually recommend not to specify default resources and to leave this as a conscious choice for the user. |
| headlessclient.replicas | string | `nil` | Launch the given number of headless clients in separate pods |
| headlessclient.resources | object | `{}` | We usually recommend not to specify default resources and to leave this as a conscious choice for the user. |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/brittonhayes/arma3server"` |  |
| image.tag | string | `"latest"` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.data.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.data.annotations | object | `{}` |  |
| persistence.data.enabled | bool | `true` |  |
| persistence.data.size | string | `"40Gi"` | Size of the persistent volume claim (set this closer to 100Gi if you want to use quite a few mods) |
| persistence.data.storageClass | string | `"hostpath"` |  |
| persistence.headlessclient.accessMode | string | `"ReadWriteMany"` | Volume access mode, if you want to use more than one headless client, this must be ReadWriteMany |
| persistence.headlessclient.annotations | object | `{}` |  |
| persistence.headlessclient.enabled | bool | `false` | enable persistence for ARMA3 Headless Client data (all game assets except the config/profiles/main) |
| persistence.headlessclient.sharedFilesystem | bool | `true` | use the same filesystem for both the server and the headless clients |
| persistence.headlessclient.size | string | `"40Gi"` |  |
| persistence.headlessclient.storageClass | string | `"hostpath"` |  |
| persistence.profile.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.profile.annotations | object | `{}` |  |
| persistence.profile.enabled | bool | `true` | WARNING: if you set this to false, your progress in Antistasi will be lost on a server restart |
| persistence.profile.size | string | `"2Gi"` |  |
| persistence.profile.storageClass | string | `"hostpath"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | string | `nil` |  |
| replicas | int | `1` | Only one replica is supported at this time |
| resources | object | `{}` |  |
| rsync.enabled | bool | `false` | Use rsync to synchronize the game data from the server to the headless clients on startup |
| rsync.image.pullPolicy | string | `"IfNotPresent"` |  |
| rsync.image.repository | string | `"fbuchmeier/rsync-server"` |  |
| rsync.image.tag | string | `"2.0.1"` | Overrides the image tag whose default is the chart appVersion. |
| rsync.resources | object | `{}` |  |
| rsync.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| rsync.securityContext.runAsGroup | int | `0` |  |
| rsync.securityContext.runAsNonRoot | bool | `false` |  |
| rsync.securityContext.runAsUser | int | `0` |  |
| securityContext | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.type | string | `"NodePort"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| serviceMonitor.enabled | bool | `false` | - If true, a ServiceMonitor CRD is created for a prometheus operator |
| serviceMonitor.interval | string | `"5s"` |  |
| serviceMonitor.labels | object | `{}` |  |
| serviceMonitor.path | string | `"/metrics"` |  |
| serviceMonitor.relabelings | list | `[]` |  |
| serviceMonitor.scheme | string | `"http"` |  |
| serviceMonitor.scrapeTimeout | string | `"2s"` |  |
| tolerations | list | `[]` |  |
| tunnel | object | `{"image":{"pullPolicy":"IfNotPresent","repository":"envoyproxy/envoy","tag":"v1.24-latest"},"resources":{}}` | Use envoy to tunnel requests from headless clients and whitelist only 127.0.0.1, automatically enabled with .Values.headlessclient.enabled |
| tunnel.image.tag | string | `"v1.24-latest"` | Overrides the image tag whose default is the chart appVersion. |
| tunnel.resources | object | `{}` | We usually recommend not to specify default resources and to leave this as a conscious choice for the user. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
