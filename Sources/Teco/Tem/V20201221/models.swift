//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tem {
    /// Cos token
    public struct CosToken: TCOutputModel {
        /// 唯一请求 ID
        public let requestId: String

        /// 存储桶桶名
        public let bucket: String

        /// 存储桶所在区域
        public let region: String

        /// 临时密钥的SecretId
        public let tmpSecretId: String

        /// 临时密钥的SecretKey
        public let tmpSecretKey: String

        /// 临时密钥的 sessionToken
        public let sessionToken: String

        /// 临时密钥获取的开始时间
        public let startTime: String

        /// 临时密钥的 expiredTime
        public let expiredTime: String

        /// 包完整路径
        public let fullPath: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
            case bucket = "Bucket"
            case region = "Region"
            case tmpSecretId = "TmpSecretId"
            case tmpSecretKey = "TmpSecretKey"
            case sessionToken = "SessionToken"
            case startTime = "StartTime"
            case expiredTime = "ExpiredTime"
            case fullPath = "FullPath"
        }
    }

    /// 分批发布策略配置
    public struct DeployStrategyConf: TCInputModel, TCOutputModel {
        /// 总分批数
        public let totalBatchCount: Int64?

        /// beta分批实例数
        public let betaBatchNum: Int64?

        /// 分批策略：0-全自动，1-全手动，beta分批一定是手动的，这里的策略指定的是剩余批次
        public let deployStrategyType: Int64?

        /// 每批暂停间隔
        public let batchInterval: Int64?

        public init(totalBatchCount: Int64? = nil, betaBatchNum: Int64? = nil, deployStrategyType: Int64? = nil, batchInterval: Int64? = nil) {
            self.totalBatchCount = totalBatchCount
            self.betaBatchNum = betaBatchNum
            self.deployStrategyType = deployStrategyType
            self.batchInterval = batchInterval
        }

        enum CodingKeys: String, CodingKey {
            case totalBatchCount = "TotalBatchCount"
            case betaBatchNum = "BetaBatchNum"
            case deployStrategyType = "DeployStrategyType"
            case batchInterval = "BatchInterval"
        }
    }

    /// 版本pod列表
    public struct DescribeRunPodPage: TCOutputModel {
        /// 分页下标
        public let offset: Int64

        /// 单页条数
        public let limit: Int64

        /// 总数
        public let totalCount: Int64

        /// 请求id
        public let requestId: String

        /// 条目
        public let podList: [RunVersionPod]

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
            case podList = "PodList"
        }
    }

    /// eks service info
    public struct EksService: TCInputModel, TCOutputModel {
        /// service name
        public let name: String?

        /// 可用端口
        public let ports: [Int64]?

        /// yaml 内容
        public let yaml: String?

        /// 服务名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceName: String?

        /// 版本名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionName: String?

        /// 内网ip
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterIp: [String]?

        /// 外网ip
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let externalIp: String?

        /// 访问类型，可选值：
        /// - EXTERNAL（公网访问）
        /// - VPC（vpc内访问）
        /// - CLUSTER（集群内访问）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        /// 子网ID，只在类型为vpc访问时才有值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetId: String?

        /// 负载均衡ID，只在外网访问和vpc内访问才有值，默认自动创建
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalanceId: String?

        /// 端口映射
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let portMappings: [PortMapping]?

        public init(name: String? = nil, ports: [Int64]? = nil, yaml: String? = nil, serviceName: String? = nil, versionName: String? = nil, clusterIp: [String]? = nil, externalIp: String? = nil, type: String? = nil, subnetId: String? = nil, loadBalanceId: String? = nil, portMappings: [PortMapping]? = nil) {
            self.name = name
            self.ports = ports
            self.yaml = yaml
            self.serviceName = serviceName
            self.versionName = versionName
            self.clusterIp = clusterIp
            self.externalIp = externalIp
            self.type = type
            self.subnetId = subnetId
            self.loadBalanceId = loadBalanceId
            self.portMappings = portMappings
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case ports = "Ports"
            case yaml = "Yaml"
            case serviceName = "ServiceName"
            case versionName = "VersionName"
            case clusterIp = "ClusterIp"
            case externalIp = "ExternalIp"
            case type = "Type"
            case subnetId = "SubnetId"
            case loadBalanceId = "LoadBalanceId"
            case portMappings = "PortMappings"
        }
    }

    /// 弹性伸缩配置
    public struct EsInfo: TCInputModel, TCOutputModel {
        /// 最小实例数
        public let minAliveInstances: Int64

        /// 最大实例数
        public let maxAliveInstances: Int64

        /// 弹性策略,1:cpu，2:内存
        public let esStrategy: Int64

        /// 弹性扩缩容条件值
        public let threshold: UInt64

        /// 版本Id
        public let versionId: String?

        public init(minAliveInstances: Int64, maxAliveInstances: Int64, esStrategy: Int64, threshold: UInt64, versionId: String? = nil) {
            self.minAliveInstances = minAliveInstances
            self.maxAliveInstances = maxAliveInstances
            self.esStrategy = esStrategy
            self.threshold = threshold
            self.versionId = versionId
        }

        enum CodingKeys: String, CodingKey {
            case minAliveInstances = "MinAliveInstances"
            case maxAliveInstances = "MaxAliveInstances"
            case esStrategy = "EsStrategy"
            case threshold = "Threshold"
            case versionId = "VersionId"
        }
    }

    /// 健康检查配置
    public struct HealthCheckConfig: TCInputModel, TCOutputModel {
        /// 支持的健康检查类型，如 HttpGet，TcpSocket，Exec
        public let type: String

        /// 仅当健康检查类型为 HttpGet 时有效，表示协议类型，如 HTTP，HTTPS
        public let `protocol`: String?

        /// 仅当健康检查类型为 HttpGet 时有效，表示请求路径
        public let path: String?

        /// 仅当健康检查类型为 Exec 时有效，表示执行的脚本内容
        public let exec: String?

        /// 仅当健康检查类型为 HttpGet\TcpSocket 时有效，表示请求路径
        public let port: Int64?

        /// 检查延迟开始时间，单位为秒，默认为 0
        public let initialDelaySeconds: Int64?

        /// 超时时间，单位为秒，默认为 1
        public let timeoutSeconds: Int64?

        /// 间隔时间，单位为秒，默认为 10
        public let periodSeconds: Int64?

        public init(type: String, protocol: String? = nil, path: String? = nil, exec: String? = nil, port: Int64? = nil, initialDelaySeconds: Int64? = nil, timeoutSeconds: Int64? = nil, periodSeconds: Int64? = nil) {
            self.type = type
            self.`protocol` = `protocol`
            self.path = path
            self.exec = exec
            self.port = port
            self.initialDelaySeconds = initialDelaySeconds
            self.timeoutSeconds = timeoutSeconds
            self.periodSeconds = periodSeconds
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case `protocol` = "Protocol"
            case path = "Path"
            case exec = "Exec"
            case port = "Port"
            case initialDelaySeconds = "InitialDelaySeconds"
            case timeoutSeconds = "TimeoutSeconds"
            case periodSeconds = "PeriodSeconds"
        }
    }

    /// Ingress 配置
    public struct IngressInfo: TCInputModel, TCOutputModel {
        /// tem namespaceId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let namespaceId: String?

        /// eks namespace
        public let eksNamespace: String

        /// ip version
        public let addressIPVersion: String

        /// ingress name
        public let name: String

        /// rules 配置
        public let rules: [IngressRule]

        /// clb ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clbId: String?

        /// tls 配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tls: [IngressTls]?

        /// eks clusterId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterId: String?

        /// clb ip
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vip: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 是否混合 https，默认 false，可选值 true 代表有 https 协议监听
        public let mixed: Bool?

        public init(namespaceId: String, eksNamespace: String, addressIPVersion: String, name: String, rules: [IngressRule], clbId: String? = nil, tls: [IngressTls]? = nil, clusterId: String? = nil, vip: String? = nil, createTime: String? = nil, mixed: Bool? = nil) {
            self.namespaceId = namespaceId
            self.eksNamespace = eksNamespace
            self.addressIPVersion = addressIPVersion
            self.name = name
            self.rules = rules
            self.clbId = clbId
            self.tls = tls
            self.clusterId = clusterId
            self.vip = vip
            self.createTime = createTime
            self.mixed = mixed
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case eksNamespace = "EksNamespace"
            case addressIPVersion = "AddressIPVersion"
            case name = "Name"
            case rules = "Rules"
            case clbId = "ClbId"
            case tls = "Tls"
            case clusterId = "ClusterId"
            case vip = "Vip"
            case createTime = "CreateTime"
            case mixed = "Mixed"
        }
    }

    /// ingress rule 配置
    public struct IngressRule: TCInputModel, TCOutputModel {
        /// ingress rule value
        public let http: IngressRuleValue

        /// host 地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let host: String?

        /// 协议，选项为 http， https，默认为 http
        public let `protocol`: String?

        public init(http: IngressRuleValue, host: String? = nil, protocol: String? = nil) {
            self.http = http
            self.host = host
            self.`protocol` = `protocol`
        }

        enum CodingKeys: String, CodingKey {
            case http = "Http"
            case host = "Host"
            case `protocol` = "Protocol"
        }
    }

    /// Ingress 规则 backend 配置
    public struct IngressRuleBackend: TCInputModel, TCOutputModel {
        /// eks service 名
        public let serviceName: String

        /// eks service 端口
        public let servicePort: Int64

        public init(serviceName: String, servicePort: Int64) {
            self.serviceName = serviceName
            self.servicePort = servicePort
        }

        enum CodingKeys: String, CodingKey {
            case serviceName = "ServiceName"
            case servicePort = "ServicePort"
        }
    }

    /// Ingress Rule Path 配置
    public struct IngressRulePath: TCInputModel, TCOutputModel {
        /// path 信息
        public let path: String

        /// backend 配置
        public let backend: IngressRuleBackend

        public init(path: String, backend: IngressRuleBackend) {
            self.path = path
            self.backend = backend
        }

        enum CodingKeys: String, CodingKey {
            case path = "Path"
            case backend = "Backend"
        }
    }

    /// Ingress Rule Value 配置
    public struct IngressRuleValue: TCInputModel, TCOutputModel {
        /// rule 整体配置
        public let paths: [IngressRulePath]

        public init(paths: [IngressRulePath]) {
            self.paths = paths
        }

        enum CodingKeys: String, CodingKey {
            case paths = "Paths"
        }
    }

    /// ingress tls 配置
    public struct IngressTls: TCInputModel, TCOutputModel {
        /// host 数组, 空数组表示全部域名的默认证书
        public let hosts: [String]

        /// secret name，如使用证书，则填空字符串
        public let secretName: String

        /// SSL Certificate Id
        public let certificateId: String?

        public init(hosts: [String], secretName: String, certificateId: String? = nil) {
            self.hosts = hosts
            self.secretName = secretName
            self.certificateId = certificateId
        }

        enum CodingKeys: String, CodingKey {
            case hosts = "Hosts"
            case secretName = "SecretName"
            case certificateId = "CertificateId"
        }
    }

    /// 日志输出配置
    public struct LogOutputConf: TCInputModel, TCOutputModel {
        /// 日志消费端类型
        public let outputType: String

        /// cls日志集
        public let clsLogsetName: String?

        /// cls日志主题
        public let clsLogTopicId: String?

        /// cls日志集id
        public let clsLogsetId: String?

        /// cls日志名称
        public let clsLogTopicName: String?

        public init(outputType: String, clsLogsetName: String? = nil, clsLogTopicId: String? = nil, clsLogsetId: String? = nil, clsLogTopicName: String? = nil) {
            self.outputType = outputType
            self.clsLogsetName = clsLogsetName
            self.clsLogTopicId = clsLogTopicId
            self.clsLogsetId = clsLogsetId
            self.clsLogTopicName = clsLogTopicName
        }

        enum CodingKeys: String, CodingKey {
            case outputType = "OutputType"
            case clsLogsetName = "ClsLogsetName"
            case clsLogTopicId = "ClsLogTopicId"
            case clsLogsetId = "ClsLogsetId"
            case clsLogTopicName = "ClsLogTopicName"
        }
    }

    /// 挂载配置信息
    public struct MountedSettingConf: TCInputModel {
        /// 配置名称
        public let configDataName: String

        /// 挂载路径
        public let mountedPath: String

        /// 配置内容
        public let data: [Pair]?

        public init(configDataName: String, mountedPath: String, data: [Pair]? = nil) {
            self.configDataName = configDataName
            self.mountedPath = mountedPath
            self.data = data
        }

        enum CodingKeys: String, CodingKey {
            case configDataName = "ConfigDataName"
            case mountedPath = "MountedPath"
            case data = "Data"
        }
    }

    /// 命名空间分页
    public struct NamespacePage: TCOutputModel {
        /// 分页内容
        public let records: [TemNamespaceInfo]

        /// 总数
        public let total: Int64

        /// 条目数
        public let size: Int64

        /// 页数
        public let pages: Int64

        enum CodingKeys: String, CodingKey {
            case records = "Records"
            case total = "Total"
            case size = "Size"
            case pages = "Pages"
        }
    }

    /// 键值对
    public struct Pair: TCInputModel {
        /// 建
        public let key: String

        /// 值
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    /// 服务端口映射
    public struct PortMapping: TCInputModel, TCOutputModel {
        /// 端口
        public let port: Int64

        /// 映射端口
        public let targetPort: Int64

        /// 协议栈 TCP/UDP
        public let `protocol`: String

        public init(port: Int64, targetPort: Int64, protocol: String) {
            self.port = port
            self.targetPort = targetPort
            self.`protocol` = `protocol`
        }

        enum CodingKeys: String, CodingKey {
            case port = "Port"
            case targetPort = "TargetPort"
            case `protocol` = "Protocol"
        }
    }

    /// 版本pod
    public struct RunVersionPod: TCOutputModel {
        /// shell地址
        public let webshell: String

        /// pod的id
        public let podId: String

        /// 状态
        public let status: String

        /// 创建时间
        public let createTime: String

        /// 实例的ip
        public let podIp: String

        /// 可用区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zone: String?

        /// 部署版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deployVersion: String?

        /// 重启次数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let restartCount: Int64?

        enum CodingKeys: String, CodingKey {
            case webshell = "Webshell"
            case podId = "PodId"
            case status = "Status"
            case createTime = "CreateTime"
            case podIp = "PodIp"
            case zone = "Zone"
            case deployVersion = "DeployVersion"
            case restartCount = "RestartCount"
        }
    }

    /// 存储卷配置
    public struct StorageConf: TCInputModel, TCOutputModel {
        /// 存储卷名称
        public let storageVolName: String

        /// 存储卷路径
        public let storageVolPath: String

        /// 存储卷IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let storageVolIp: String?

        public init(storageVolName: String, storageVolPath: String, storageVolIp: String? = nil) {
            self.storageVolName = storageVolName
            self.storageVolPath = storageVolPath
            self.storageVolIp = storageVolIp
        }

        enum CodingKeys: String, CodingKey {
            case storageVolName = "StorageVolName"
            case storageVolPath = "StorageVolPath"
            case storageVolIp = "StorageVolIp"
        }
    }

    /// 数据卷挂载信息
    public struct StorageMountConf: TCInputModel, TCOutputModel {
        /// 数据卷名
        public let volumeName: String

        /// 数据卷绑定路径
        public let mountPath: String

        public init(volumeName: String, mountPath: String) {
            self.volumeName = volumeName
            self.mountPath = mountPath
        }

        enum CodingKeys: String, CodingKey {
            case volumeName = "VolumeName"
            case mountPath = "MountPath"
        }
    }

    /// 命名空间对象
    public struct TemNamespaceInfo: TCOutputModel {
        /// 命名空间id
        public let namespaceId: String

        /// 渠道
        public let channel: String

        /// 命名空间名称
        public let namespaceName: String

        /// 区域名称
        public let region: String

        /// 命名空间描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 状态,1:已销毁;0:正常
        public let status: Int64

        /// vpc网络
        public let vpc: String

        /// 创建时间
        public let createDate: String

        /// 修改时间
        public let modifyDate: String

        /// 修改人
        public let modifier: String

        /// 创建人
        public let creator: String

        /// 服务数
        public let serviceNum: Int64

        /// 运行实例数
        public let runInstancesNum: Int64

        /// 子网络
        public let subnetId: String

        /// tcb环境状态
        public let tcbEnvStatus: String

        /// eks cluster status
        public let clusterStatus: String

        /// 是否开启tsw
        public let enableTswTraceService: Bool

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case channel = "Channel"
            case namespaceName = "NamespaceName"
            case region = "Region"
            case description = "Description"
            case status = "Status"
            case vpc = "Vpc"
            case createDate = "CreateDate"
            case modifyDate = "ModifyDate"
            case modifier = "Modifier"
            case creator = "Creator"
            case serviceNum = "ServiceNum"
            case runInstancesNum = "RunInstancesNum"
            case subnetId = "SubnetId"
            case tcbEnvStatus = "TcbEnvStatus"
            case clusterStatus = "ClusterStatus"
            case enableTswTraceService = "EnableTswTraceService"
        }
    }
}
