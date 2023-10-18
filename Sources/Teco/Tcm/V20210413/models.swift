//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Tcm {
    /// 腾讯云应用性能管理服务参数
    public struct APM: TCInputModel, TCOutputModel {
        /// 是否启用
        public let enable: Bool

        /// 地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?

        /// APM 实例，如果创建时传入的参数为空，则表示自动创建 APM 实例。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        public init(enable: Bool, region: String? = nil, instanceId: String? = nil) {
            self.enable = enable
            self.region = region
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case enable = "Enable"
            case region = "Region"
            case instanceId = "InstanceId"
        }
    }

    /// AccessLog 配置
    public struct AccessLogConfig: TCInputModel, TCOutputModel {
        /// 是否启用
        public let enable: Bool?

        /// 采用的模板，可选值：istio（默认）、trace
        public let template: String?

        /// 选中的范围
        public let selectedRange: SelectedRange?

        /// 腾讯云日志服务相关参数
        public let cls: CLS?

        /// 编码格式，可选值：TEXT、JSON
        public let encoding: String?

        /// 日志格式
        public let format: String?

        /// GRPC第三方服务器地址
        public let address: String?

        /// 是否启用GRPC第三方服务器
        public let enableServer: Bool?

        /// 是否启用标准输出
        public let enableStdout: Bool?

        public init(enable: Bool? = nil, template: String? = nil, selectedRange: SelectedRange? = nil, cls: CLS? = nil, encoding: String? = nil, format: String? = nil, address: String? = nil, enableServer: Bool? = nil, enableStdout: Bool? = nil) {
            self.enable = enable
            self.template = template
            self.selectedRange = selectedRange
            self.cls = cls
            self.encoding = encoding
            self.format = format
            self.address = address
            self.enableServer = enableServer
            self.enableStdout = enableStdout
        }

        enum CodingKeys: String, CodingKey {
            case enable = "Enable"
            case template = "Template"
            case selectedRange = "SelectedRange"
            case cls = "CLS"
            case encoding = "Encoding"
            case format = "Format"
            case address = "Address"
            case enableServer = "EnableServer"
            case enableStdout = "EnableStdout"
        }
    }

    /// 正在执行的异步操作
    public struct ActiveOperation: TCOutputModel {
        /// 操作Id
        public let operationId: String

        /// 操作类型，取值范围：
        /// - LINK_CLUSTERS: 关联集群
        /// - RELINK_CLUSTERS: 重新关联集群
        /// - UNLINK_CLUSTERS: 解关联集群
        /// - INSTALL_MESH: 安装网格
        public let type: String

        enum CodingKeys: String, CodingKey {
            case operationId = "OperationId"
            case type = "Type"
        }
    }

    /// 描述某一网格在特定命名空间下的自动注入状态
    public struct AutoInjectionNamespaceState: TCInputModel, TCOutputModel {
        /// 命名空间名称
        public let namespace: String

        /// 注入状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let state: String?

        public init(namespace: String, state: String? = nil) {
            self.namespace = namespace
            self.state = state
        }

        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
            case state = "State"
        }
    }

    /// 腾讯云日志服务相关参数
    public struct CLS: TCInputModel, TCOutputModel {
        /// 是否启用
        public let enable: Bool

        /// 日志集
        public let logSet: String?

        /// 日志主题
        public let topic: String?

        /// 是否删除
        public let needDelete: Bool?

        public init(enable: Bool, logSet: String? = nil, topic: String? = nil, needDelete: Bool? = nil) {
            self.enable = enable
            self.logSet = logSet
            self.topic = topic
            self.needDelete = needDelete
        }

        enum CodingKeys: String, CodingKey {
            case enable = "Enable"
            case logSet = "LogSet"
            case topic = "Topic"
            case needDelete = "NeedDelete"
        }
    }

    /// Mesh集群信息
    public struct Cluster: TCInputModel, TCOutputModel {
        /// 集群Id
        public let clusterId: String

        /// 地域
        public let region: String

        /// 集群角色，取值范围：
        /// - MASTER：控制面所在的主集群
        /// - REMOTE：主集群管理的远端集群
        public let role: String

        /// 私有网络Id
        public let vpcId: String

        /// 子网Id
        public let subnetId: String

        /// 名称，只读
        public let displayName: String?

        /// 状态，只读
        public let state: String?

        /// 关联时间，只读
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$linkedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var linkedTime: Date?

        /// 集群配置
        public let config: ClusterConfig?

        /// 详细状态，只读
        public let status: ClusterStatus?

        /// 类型，取值范围：
        /// - TKE
        /// - EKS
        public let type: String?

        /// 集群关联的 Namespace 列表
        public let hostedNamespaces: [String]?

        public init(clusterId: String, region: String, role: String, vpcId: String, subnetId: String, displayName: String? = nil, state: String? = nil, linkedTime: Date? = nil, config: ClusterConfig? = nil, status: ClusterStatus? = nil, type: String? = nil, hostedNamespaces: [String]? = nil) {
            self.clusterId = clusterId
            self.region = region
            self.role = role
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.displayName = displayName
            self.state = state
            self._linkedTime = .init(wrappedValue: linkedTime)
            self.config = config
            self.status = status
            self.type = type
            self.hostedNamespaces = hostedNamespaces
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case region = "Region"
            case role = "Role"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case displayName = "DisplayName"
            case state = "State"
            case linkedTime = "LinkedTime"
            case config = "Config"
            case status = "Status"
            case type = "Type"
            case hostedNamespaces = "HostedNamespaces"
        }
    }

    /// 集群配置
    public struct ClusterConfig: TCInputModel, TCOutputModel {
        /// 自动注入SideCar的NameSpace
        public let autoInjectionNamespaceList: [String]

        /// Ingress配置列表
        public let ingressGatewayList: [IngressGateway]?

        /// Egress配置列表
        public let egressGatewayList: [EgressGateway]?

        /// Istiod配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let istiod: IstiodConfig?

        /// 部署配置
        public let deployConfig: DeployConfig?

        /// 自动注入命名空间状态列表
        public let autoInjectionNamespaceStateList: [AutoInjectionNamespaceState]?

        public init(autoInjectionNamespaceList: [String], ingressGatewayList: [IngressGateway]? = nil, egressGatewayList: [EgressGateway]? = nil, istiod: IstiodConfig? = nil, deployConfig: DeployConfig? = nil, autoInjectionNamespaceStateList: [AutoInjectionNamespaceState]? = nil) {
            self.autoInjectionNamespaceList = autoInjectionNamespaceList
            self.ingressGatewayList = ingressGatewayList
            self.egressGatewayList = egressGatewayList
            self.istiod = istiod
            self.deployConfig = deployConfig
            self.autoInjectionNamespaceStateList = autoInjectionNamespaceStateList
        }

        enum CodingKeys: String, CodingKey {
            case autoInjectionNamespaceList = "AutoInjectionNamespaceList"
            case ingressGatewayList = "IngressGatewayList"
            case egressGatewayList = "EgressGatewayList"
            case istiod = "Istiod"
            case deployConfig = "DeployConfig"
            case autoInjectionNamespaceStateList = "AutoInjectionNamespaceStateList"
        }
    }

    /// 集群状态
    public struct ClusterStatus: TCOutputModel {
        /// 关联状态，取值范围：
        /// - LINKING: 关联中
        /// - LINKED: 已关联
        /// - UNLINKING: 解关联中
        /// - LINK_FAILED: 关联失败
        /// - UNLINK_FAILED: 解关联失败
        public let linkState: String

        /// 关联错误详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let linkErrorDetail: String?

        enum CodingKeys: String, CodingKey {
            case linkState = "LinkState"
            case linkErrorDetail = "LinkErrorDetail"
        }
    }

    /// 负载均衡跨域设置
    public struct CrossRegionConfig: TCInputModel, TCOutputModel {
        public init() {
        }
    }

    /// 第三方 Prometheus 配置参数
    public struct CustomPromConfig: TCInputModel {
        /// Prometheus 访问地址
        public let url: String

        /// 认证方式
        public let authType: String

        /// 是否公网地址，缺省为 false
        public let isPublicAddr: Bool?

        /// 虚拟网络id
        public let vpcId: String?

        /// Prometheus 用户名（用于 basic 认证方式）
        public let username: String?

        /// Prometheus 密码（用于 basic 认证方式）
        public let password: String?

        public init(url: String, authType: String, isPublicAddr: Bool? = nil, vpcId: String? = nil, username: String? = nil, password: String? = nil) {
            self.url = url
            self.authType = authType
            self.isPublicAddr = isPublicAddr
            self.vpcId = vpcId
            self.username = username
            self.password = password
        }

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case authType = "AuthType"
            case isPublicAddr = "IsPublicAddr"
            case vpcId = "VpcId"
            case username = "Username"
            case password = "Password"
        }
    }

    /// 部署配置
    public struct DeployConfig: TCInputModel, TCOutputModel {
        /// 部署类型，取值范围：
        /// - SPECIFIC：专有模式
        /// - AUTO：普通模式
        public let nodeSelectType: String?

        /// 指定的节点
        public let nodes: [String]?

        public init(nodeSelectType: String? = nil, nodes: [String]? = nil) {
            self.nodeSelectType = nodeSelectType
            self.nodes = nodes
        }

        enum CodingKeys: String, CodingKey {
            case nodeSelectType = "NodeSelectType"
            case nodes = "Nodes"
        }
    }

    /// Egress配置
    public struct EgressGateway: TCInputModel, TCOutputModel {
        /// Egress名称
        public let name: String

        /// 所在的Namespace
        public let namespace: String

        /// 工作负载配置
        public let workload: WorkloadConfig?

        /// 工作负载的状态
        public let status: EgressGatewayStatus?

        public init(name: String, namespace: String, workload: WorkloadConfig? = nil, status: EgressGatewayStatus? = nil) {
            self.name = name
            self.namespace = namespace
            self.workload = workload
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case namespace = "Namespace"
            case workload = "Workload"
            case status = "Status"
        }
    }

    /// egress gateway 的状态
    public struct EgressGatewayStatus: TCOutputModel {
        /// egress gateway的当前版本
        public let currentVersion: String

        /// egress gateway的目标版本
        public let desiredVersion: String

        /// egress gateway的状态，取值：running，upgrading，rollbacking
        public let state: String

        enum CodingKeys: String, CodingKey {
            case currentVersion = "CurrentVersion"
            case desiredVersion = "DesiredVersion"
            case state = "State"
        }
    }

    /// 内网独占集群配置
    public struct ExtensiveCluster: TCInputModel, TCOutputModel {
        /// Cluster ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterId: String?

        /// 可用区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zone: String?

        public init(clusterId: String? = nil, zone: String? = nil) {
            self.clusterId = clusterId
            self.zone = zone
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case zone = "Zone"
        }
    }

    /// 内网独占集群配置列表
    public struct ExtensiveClusters: TCInputModel, TCOutputModel {
        /// 4层集群配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let l4Clusters: [ExtensiveCluster]?

        /// 7层集群配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let l7Clusters: [ExtensiveCluster]?

        public init(l4Clusters: [ExtensiveCluster]? = nil, l7Clusters: [ExtensiveCluster]? = nil) {
            self.l4Clusters = l4Clusters
            self.l7Clusters = l7Clusters
        }

        enum CodingKeys: String, CodingKey {
            case l4Clusters = "L4Clusters"
            case l7Clusters = "L7Clusters"
        }
    }

    /// 键值对过滤器，用于条件过滤查询。例如过滤ID、名称等
    public struct Filter: TCInputModel {
        /// 需要过滤的字段。
        public let name: String

        /// 字段的过滤值。
        public let values: [String]

        public init(name: String, values: [String]) {
            self.name = name
            self.values = values
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    /// Grafana信息
    public struct GrafanaInfo: TCOutputModel {
        /// 是否开启
        public let enabled: Bool

        /// 内网地址
        public let internalURL: String

        /// 公网地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicURL: String?

        /// 公网失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicFailedReason: String?

        /// 公网失败详细信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicFailedMessage: String?

        enum CodingKeys: String, CodingKey {
            case enabled = "Enabled"
            case internalURL = "InternalURL"
            case publicURL = "PublicURL"
            case publicFailedReason = "PublicFailedReason"
            case publicFailedMessage = "PublicFailedMessage"
        }
    }

    /// HPA 配置
    public struct HorizontalPodAutoscalerSpec: TCInputModel, TCOutputModel {
        /// 最小副本数
        public let minReplicas: Int64

        /// 最大副本数
        public let maxReplicas: Int64

        /// 用于计算副本数的指标
        public let metrics: [MetricSpec]

        public init(minReplicas: Int64, maxReplicas: Int64, metrics: [MetricSpec]) {
            self.minReplicas = minReplicas
            self.maxReplicas = maxReplicas
            self.metrics = metrics
        }

        enum CodingKeys: String, CodingKey {
            case minReplicas = "MinReplicas"
            case maxReplicas = "MaxReplicas"
            case metrics = "Metrics"
        }
    }

    /// IngressGateway 实例信息
    public struct IngressGateway: TCInputModel, TCOutputModel {
        /// IngressGateway 实例名字
        public let name: String

        /// 命名空间
        public let namespace: String

        /// 集群 ID
        public let clusterId: String

        /// Service 配置
        public let service: Service

        /// Workload 配置
        public let workload: WorkloadConfig

        /// 负载均衡配置，自动创建 CLB 时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancer: LoadBalancer?

        /// IngressGateway 状态信息，只读
        public let status: IngressGatewayStatus?

        /// 负载均衡实例ID，使用已有 CLB 时返回
        public let loadBalancerId: String?

        public init(name: String, namespace: String, clusterId: String, service: Service, workload: WorkloadConfig, loadBalancer: LoadBalancer? = nil, status: IngressGatewayStatus? = nil, loadBalancerId: String? = nil) {
            self.name = name
            self.namespace = namespace
            self.clusterId = clusterId
            self.service = service
            self.workload = workload
            self.loadBalancer = loadBalancer
            self.status = status
            self.loadBalancerId = loadBalancerId
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case namespace = "Namespace"
            case clusterId = "ClusterId"
            case service = "Service"
            case workload = "Workload"
            case loadBalancer = "LoadBalancer"
            case status = "Status"
            case loadBalancerId = "LoadBalancerId"
        }
    }

    /// IngressGateway状态
    public struct IngressGatewayStatus: TCOutputModel {
        /// 负载均衡实例状态
        public let loadBalancer: LoadBalancerStatus

        /// ingress gateway 当前的版本
        public let currentVersion: String

        /// ingress gateway 目标的版本
        public let desiredVersion: String

        /// ingress gateway的状态，取值running, upgrading, rollbacking
        public let state: String

        enum CodingKeys: String, CodingKey {
            case loadBalancer = "LoadBalancer"
            case currentVersion = "CurrentVersion"
            case desiredVersion = "DesiredVersion"
            case state = "State"
        }
    }

    /// 自动注入配置
    public struct InjectConfig: TCInputModel, TCOutputModel {
        /// 不需要进行代理的 ip 地址范围
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let excludeIPRanges: [String]?

        /// 是否等待sidecar启动
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let holdApplicationUntilProxyStarts: Bool?

        /// 是否允许sidecar等待
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let holdProxyUntilApplicationEnds: Bool?

        public init(excludeIPRanges: [String]? = nil, holdApplicationUntilProxyStarts: Bool? = nil, holdProxyUntilApplicationEnds: Bool? = nil) {
            self.excludeIPRanges = excludeIPRanges
            self.holdApplicationUntilProxyStarts = holdApplicationUntilProxyStarts
            self.holdProxyUntilApplicationEnds = holdProxyUntilApplicationEnds
        }

        enum CodingKeys: String, CodingKey {
            case excludeIPRanges = "ExcludeIPRanges"
            case holdApplicationUntilProxyStarts = "HoldApplicationUntilProxyStarts"
            case holdProxyUntilApplicationEnds = "HoldProxyUntilApplicationEnds"
        }
    }

    /// Istio配置
    public struct IstioConfig: TCInputModel, TCOutputModel {
        /// 外部流量策略
        public let outboundTrafficPolicy: String

        /// 调用链配置（Deprecated，请使用 MeshConfig.Tracing 进行配置）
        public let tracing: TracingConfig?

        /// 禁用策略检查功能
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let disablePolicyChecks: Bool?

        /// 支持HTTP1.0协议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enablePilotHTTP: Bool?

        /// 禁用HTTP重试策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let disableHTTPRetry: Bool?

        /// SmartDNS策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let smartDNS: SmartDNSConfig?

        public init(outboundTrafficPolicy: String, tracing: TracingConfig? = nil, disablePolicyChecks: Bool? = nil, enablePilotHTTP: Bool? = nil, disableHTTPRetry: Bool? = nil, smartDNS: SmartDNSConfig? = nil) {
            self.outboundTrafficPolicy = outboundTrafficPolicy
            self.tracing = tracing
            self.disablePolicyChecks = disablePolicyChecks
            self.enablePilotHTTP = enablePilotHTTP
            self.disableHTTPRetry = disableHTTPRetry
            self.smartDNS = smartDNS
        }

        enum CodingKeys: String, CodingKey {
            case outboundTrafficPolicy = "OutboundTrafficPolicy"
            case tracing = "Tracing"
            case disablePolicyChecks = "DisablePolicyChecks"
            case enablePilotHTTP = "EnablePilotHTTP"
            case disableHTTPRetry = "DisableHTTPRetry"
            case smartDNS = "SmartDNS"
        }
    }

    /// Istiod配置
    public struct IstiodConfig: TCInputModel, TCOutputModel {
        /// 工作负载配置
        public let workload: WorkloadConfig?

        public init(workload: WorkloadConfig? = nil) {
            self.workload = workload
        }

        enum CodingKeys: String, CodingKey {
            case workload = "Workload"
        }
    }

    /// 负载均衡配置
    public struct LoadBalancer: TCInputModel, TCOutputModel {
        /// 负载均衡实例的网络类型：
        /// OPEN：公网属性， INTERNAL：内网属性。
        /// 只读。
        public let loadBalancerType: String?

        /// 负载均衡实例所在的子网（仅对内网VPC型LB有意义），只读。
        public let subnetId: String?

        /// TRAFFIC_POSTPAID_BY_HOUR 按流量按小时后计费 ; BANDWIDTH_POSTPAID_BY_HOUR 按带宽按小时后计费;只读。
        public let internetChargeType: String?

        /// 最大出带宽，单位Mbps，仅对公网属性的LB生效，默认值 10
        public let internetMaxBandwidthOut: Int64?

        /// 可用区 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zoneID: String?

        /// 运营商类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vipIsp: String?

        /// TGW Group 名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tgwGroupName: String?

        /// IP 类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let addressIPVersion: String?

        /// 标签列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        /// 内网独占集群配置列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extensiveClusters: ExtensiveClusters?

        /// 负载均衡跨地域配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let crossRegionConfig: CrossRegionConfig?

        public init(loadBalancerType: String? = nil, subnetId: String? = nil, internetChargeType: String? = nil, internetMaxBandwidthOut: Int64? = nil, zoneID: String? = nil, vipIsp: String? = nil, tgwGroupName: String? = nil, addressIPVersion: String? = nil, tags: [Tag]? = nil, extensiveClusters: ExtensiveClusters? = nil, crossRegionConfig: CrossRegionConfig? = nil) {
            self.loadBalancerType = loadBalancerType
            self.subnetId = subnetId
            self.internetChargeType = internetChargeType
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.zoneID = zoneID
            self.vipIsp = vipIsp
            self.tgwGroupName = tgwGroupName
            self.addressIPVersion = addressIPVersion
            self.tags = tags
            self.extensiveClusters = extensiveClusters
            self.crossRegionConfig = crossRegionConfig
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerType = "LoadBalancerType"
            case subnetId = "SubnetId"
            case internetChargeType = "InternetChargeType"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case zoneID = "ZoneID"
            case vipIsp = "VipIsp"
            case tgwGroupName = "TgwGroupName"
            case addressIPVersion = "AddressIPVersion"
            case tags = "Tags"
            case extensiveClusters = "ExtensiveClusters"
            case crossRegionConfig = "CrossRegionConfig"
        }
    }

    /// 负载均衡状态信息
    public struct LoadBalancerStatus: TCOutputModel {
        /// 负载均衡实例 ID
        public let loadBalancerId: String

        /// 负载均衡实例名字
        public let loadBalancerName: String

        /// 负载均衡实例 VIP
        public let loadBalancerVip: String

        /// 负载均衡实例 Hostname
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerHostname: String?

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case loadBalancerName = "LoadBalancerName"
            case loadBalancerVip = "LoadBalancerVip"
            case loadBalancerHostname = "LoadBalancerHostname"
        }
    }

    /// Mesh信息
    public struct Mesh: TCOutputModel {
        /// Mesh实例Id
        public let meshId: String

        /// Mesh名称
        public let displayName: String

        /// Mesh类型，取值范围：
        /// - STANDALONE：独立网格
        /// - HOSTED：托管网格
        public let type: String

        /// 地域
        public let region: String

        /// 版本
        public let version: String

        /// Mesh状态，取值范围：
        /// - PENDING：等待中
        /// - CREATING：创建中
        /// - RUNNING：运行中
        /// - ABNORMAL：异常
        /// - UPGRADING：升级中
        /// - CANARY_UPGRADED：升级灰度完成
        /// - ROLLBACKING：升级回滚
        /// - DELETING：删除中
        /// - CREATE_FAILED：安装失败
        /// - DELETE_FAILED：删除失败
        /// - UPGRADE_FAILED：升级失败
        /// - ROLLBACK_FAILED：回滚失败
        public let state: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$createdTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createdTime: Date

        /// 修改时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$updatedTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var updatedTime: Date?

        /// 集群列表
        public let clusterList: [Cluster]

        /// Mesh配置
        public let config: MeshConfig

        /// Mesh详细状态
        public let status: MeshStatus

        /// 标签列表
        public let tagList: [Tag]

        enum CodingKeys: String, CodingKey {
            case meshId = "MeshId"
            case displayName = "DisplayName"
            case type = "Type"
            case region = "Region"
            case version = "Version"
            case state = "State"
            case createdTime = "CreatedTime"
            case updatedTime = "UpdatedTime"
            case clusterList = "ClusterList"
            case config = "Config"
            case status = "Status"
            case tagList = "TagList"
        }
    }

    /// 网格配置项
    public struct MeshConfig: TCInputModel, TCOutputModel {
        /// Istio配置
        public let istio: IstioConfig?

        /// AccessLog配置
        public let accessLog: AccessLogConfig?

        /// Prometheus配置
        public let prometheus: PrometheusConfig?

        /// 自动注入配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inject: InjectConfig?

        /// 调用跟踪配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tracing: TracingConfig?

        /// Sidecar自定义资源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sidecarResources: ResourceRequirements?

        public init(istio: IstioConfig? = nil, accessLog: AccessLogConfig? = nil, prometheus: PrometheusConfig? = nil, inject: InjectConfig? = nil, tracing: TracingConfig? = nil, sidecarResources: ResourceRequirements? = nil) {
            self.istio = istio
            self.accessLog = accessLog
            self.prometheus = prometheus
            self.inject = inject
            self.tracing = tracing
            self.sidecarResources = sidecarResources
        }

        enum CodingKeys: String, CodingKey {
            case istio = "Istio"
            case accessLog = "AccessLog"
            case prometheus = "Prometheus"
            case inject = "Inject"
            case tracing = "Tracing"
            case sidecarResources = "SidecarResources"
        }
    }

    /// Mesh当前状态
    public struct MeshStatus: TCOutputModel {
        /// 服务数量
        public let serviceCount: Int64

        /// 灰度升级的版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let canaryVersion: String?

        /// 已废弃
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let prometheus: [PrometheusStatus]?

        /// 状态附带信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stateMessage: String?

        /// 正在执行的异步操作
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activeOperationList: [ActiveOperation]?

        /// 获取TPS信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tps: PrometheusStatus?

        enum CodingKeys: String, CodingKey {
            case serviceCount = "ServiceCount"
            case canaryVersion = "CanaryVersion"
            case prometheus = "Prometheus"
            case stateMessage = "StateMessage"
            case activeOperationList = "ActiveOperationList"
            case tps = "TPS"
        }
    }

    /// MetricSpec 描述如何通过指定指标进行自动扩缩容
    public struct MetricSpec: TCInputModel, TCOutputModel {
        /// 指标来源类型，支持 Pods/Resource
        public let type: String

        /// 使用自定义指标扩进行自动扩缩容
        public let pods: PodsMetricSource?

        /// 使用资源指标扩进行自动扩缩容
        public let resource: ResourceMetricSource?

        public init(type: String, pods: PodsMetricSource? = nil, resource: ResourceMetricSource? = nil) {
            self.type = type
            self.pods = pods
            self.resource = resource
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case pods = "Pods"
            case resource = "Resource"
        }
    }

    /// PodsMetricSource 定义了如何根据特定指标进行扩缩容
    public struct PodsMetricSource: TCInputModel, TCOutputModel {
        /// 指标名
        public let metricName: String

        /// 目标值
        public let targetAverageValue: String

        public init(metricName: String, targetAverageValue: String) {
            self.metricName = metricName
            self.targetAverageValue = targetAverageValue
        }

        enum CodingKeys: String, CodingKey {
            case metricName = "MetricName"
            case targetAverageValue = "TargetAverageValue"
        }
    }

    /// Prometheus 配置
    public struct PrometheusConfig: TCInputModel, TCOutputModel {
        /// 虚拟网络Id
        public let vpcId: String?

        /// 子网Id
        public let subnetId: String?

        /// 地域
        public let region: String?

        /// 关联已存在实例Id，不填则默认创建
        public let instanceId: String?

        /// 第三方 Prometheus
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customProm: CustomPromConfig?

        public init(vpcId: String? = nil, subnetId: String? = nil, region: String? = nil, instanceId: String? = nil, customProm: CustomPromConfig? = nil) {
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.region = region
            self.instanceId = instanceId
            self.customProm = customProm
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case region = "Region"
            case instanceId = "InstanceId"
            case customProm = "CustomProm"
        }
    }

    /// Prometheus状态信息
    public struct PrometheusStatus: TCOutputModel {
        /// Prometheus Id
        public let prometheusId: String

        /// 展示名称
        public let displayName: String

        /// 实例Id
        public let instanceId: String

        /// 虚拟网络Id
        public let vpcId: String

        /// 状态
        public let state: String

        /// 地区
        public let region: String

        /// Grafana信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let grafana: GrafanaInfo?

        /// Prometheus 类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        enum CodingKeys: String, CodingKey {
            case prometheusId = "PrometheusId"
            case displayName = "DisplayName"
            case instanceId = "InstanceId"
            case vpcId = "VpcId"
            case state = "State"
            case region = "Region"
            case grafana = "Grafana"
            case type = "Type"
        }
    }

    /// Resource 定义了资源类型和数量
    public struct Resource: TCInputModel, TCOutputModel {
        /// 资源类型 cpu/memory
        public let name: String?

        /// 资源数量
        public let quantity: String?

        public init(name: String? = nil, quantity: String? = nil) {
            self.name = name
            self.quantity = quantity
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case quantity = "Quantity"
        }
    }

    /// ResourceMetricSource 定义了如何根据已知类型的资源指标进行扩缩容
    public struct ResourceMetricSource: TCInputModel, TCOutputModel {
        /// 资源名称 cpu/memory
        public let name: String

        /// 目标平均利用率
        public let targetAverageUtilization: Int64

        /// 目标平均值
        public let targetAverageValue: String

        public init(name: String, targetAverageUtilization: Int64, targetAverageValue: String) {
            self.name = name
            self.targetAverageUtilization = targetAverageUtilization
            self.targetAverageValue = targetAverageValue
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case targetAverageUtilization = "TargetAverageUtilization"
            case targetAverageValue = "TargetAverageValue"
        }
    }

    /// ResourceRequirements 描述了计算资源需求。
    public struct ResourceRequirements: TCInputModel, TCOutputModel {
        /// Limits 描述了允许的最大计算资源量。
        public let limits: [Resource]?

        /// Requests 描述所需的最小计算资源量。
        public let requests: [Resource]?

        public init(limits: [Resource]? = nil, requests: [Resource]? = nil) {
            self.limits = limits
            self.requests = requests
        }

        enum CodingKeys: String, CodingKey {
            case limits = "Limits"
            case requests = "Requests"
        }
    }

    /// 选中的项目
    public struct SelectedItems: TCInputModel, TCOutputModel {
        /// 命名空间
        public let namespace: String?

        /// 集群名称
        public let clusterName: String?

        /// 选中项目名字
        public let itemName: String?

        /// ingress gw的名称列表
        public let gateways: [String]?

        public init(namespace: String? = nil, clusterName: String? = nil, itemName: String? = nil, gateways: [String]? = nil) {
            self.namespace = namespace
            self.clusterName = clusterName
            self.itemName = itemName
            self.gateways = gateways
        }

        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
            case clusterName = "ClusterName"
            case itemName = "ItemName"
            case gateways = "Gateways"
        }
    }

    /// 被选中的范围
    public struct SelectedRange: TCInputModel, TCOutputModel {
        /// 选中的项目详细内容
        public let items: [SelectedItems]?

        /// 是否全选
        public let all: Bool?

        public init(items: [SelectedItems]? = nil, all: Bool? = nil) {
            self.items = items
            self.all = all
        }

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case all = "All"
        }
    }

    /// Service信息
    public struct Service: TCInputModel, TCOutputModel {
        /// ClusterIP/NodePort/LoadBalancer
        public let type: String?

        /// 是否开启LB直通Pod
        public let clbDirectAccess: Bool?

        /// 服务是否希望将外部流量路由到节点本地或集群范围的端点。 有两个可用选项：Cluster（默认）和 Local。Cluster 隐藏了客户端源 IP，可能导致第二跳到另一个节点；Local 保留客户端源 IP 并避免 LoadBalancer 和 NodePort 类型服务的第二跳。
        public let externalTrafficPolicy: String?

        public init(type: String? = nil, clbDirectAccess: Bool? = nil, externalTrafficPolicy: String? = nil) {
            self.type = type
            self.clbDirectAccess = clbDirectAccess
            self.externalTrafficPolicy = externalTrafficPolicy
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case clbDirectAccess = "CLBDirectAccess"
            case externalTrafficPolicy = "ExternalTrafficPolicy"
        }
    }

    /// 智能DNS配置
    public struct SmartDNSConfig: TCInputModel, TCOutputModel {
        /// 开启DNS代理
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let istioMetaDNSCapture: Bool?

        /// 开启自动地址分配
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let istioMetaDNSAutoAllocate: Bool?

        public init(istioMetaDNSCapture: Bool? = nil, istioMetaDNSAutoAllocate: Bool? = nil) {
            self.istioMetaDNSCapture = istioMetaDNSCapture
            self.istioMetaDNSAutoAllocate = istioMetaDNSAutoAllocate
        }

        enum CodingKeys: String, CodingKey {
            case istioMetaDNSCapture = "IstioMetaDNSCapture"
            case istioMetaDNSAutoAllocate = "IstioMetaDNSAutoAllocate"
        }
    }

    /// 标签
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签键
        public let key: String

        /// 标签值
        public let value: String

        /// 是否透传给其他关联产品
        public let passthrough: Bool?

        public init(key: String, value: String, passthrough: Bool? = nil) {
            self.key = key
            self.value = value
            self.passthrough = passthrough
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
            case passthrough = "Passthrough"
        }
    }

    /// 调用链配置
    public struct TracingConfig: TCInputModel, TCOutputModel {
        /// 调用链采样率，百分比
        public let sampling: Float?

        /// 是否启用调用跟踪
        public let enable: Bool?

        /// 腾讯云 APM 服务相关参数
        public let apm: APM?

        /// 启动第三方服务器的地址
        public let zipkin: TracingZipkin?

        public init(sampling: Float? = nil, enable: Bool? = nil, apm: APM? = nil, zipkin: TracingZipkin? = nil) {
            self.sampling = sampling
            self.enable = enable
            self.apm = apm
            self.zipkin = zipkin
        }

        enum CodingKeys: String, CodingKey {
            case sampling = "Sampling"
            case enable = "Enable"
            case apm = "APM"
            case zipkin = "Zipkin"
        }
    }

    /// 调用追踪的Zipkin设置
    public struct TracingZipkin: TCInputModel, TCOutputModel {
        /// Zipkin调用地址
        public let address: String

        public init(address: String) {
            self.address = address
        }

        enum CodingKeys: String, CodingKey {
            case address = "Address"
        }
    }

    /// 工作负载配置
    public struct WorkloadConfig: TCInputModel, TCOutputModel {
        /// 工作副本数
        public let replicas: Int64?

        /// 资源配置
        public let resources: ResourceRequirements?

        /// HPA策略
        public let horizontalPodAutoscaler: HorizontalPodAutoscalerSpec?

        /// 部署到指定节点
        public let selectedNodeList: [String]?

        /// 组件的部署模式，取值说明：
        /// IN_GENERAL_NODE：常规节点
        /// IN_EKLET：eklet 节点
        /// IN_SHARED_NODE_POOL：共享节电池
        /// IN_EXCLUSIVE_NODE_POOL：独占节点池
        public let deployMode: String?

        public init(replicas: Int64? = nil, resources: ResourceRequirements? = nil, horizontalPodAutoscaler: HorizontalPodAutoscalerSpec? = nil, selectedNodeList: [String]? = nil, deployMode: String? = nil) {
            self.replicas = replicas
            self.resources = resources
            self.horizontalPodAutoscaler = horizontalPodAutoscaler
            self.selectedNodeList = selectedNodeList
            self.deployMode = deployMode
        }

        enum CodingKeys: String, CodingKey {
            case replicas = "Replicas"
            case resources = "Resources"
            case horizontalPodAutoscaler = "HorizontalPodAutoscaler"
            case selectedNodeList = "SelectedNodeList"
            case deployMode = "DeployMode"
        }
    }
}
