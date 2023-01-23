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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Waf {
    /// DescribeAccessIndex
    public struct AccessFullTextInfo: TCOutputModel {
        /// 是否大小写敏感
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let caseSensitive: Bool?

        /// 全文索引的分词符，字符串中每个字符代表一个分词符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tokenizer: String?

        /// 是否包含中文
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containZH: Bool?

        enum CodingKeys: String, CodingKey {
            case caseSensitive = "CaseSensitive"
            case tokenizer = "Tokenizer"
            case containZH = "ContainZH"
        }
    }

    /// 用于 DescribeAccessIndex 的出参
    public struct AccessKeyValueInfo: TCOutputModel {
        /// 需要配置键值或者元字段索引的字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let key: String?

        /// 字段的索引描述信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: AccessValueInfo?

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    /// 单条日志数据描述
    public struct AccessLogInfo: TCOutputModel {
        /// 日志时间，单位ms
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let time: Int64?

        /// 日志主题ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicId: String?

        /// 日志主题名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicName: String?

        /// 日志来源IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let source: String?

        /// 日志文件名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileName: String?

        /// 日志上报请求包的ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pkgId: String?

        /// 请求包内日志的ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pkgLogId: String?

        /// 日志内容的Json序列化字符串
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logJson: String?

        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case topicId = "TopicId"
            case topicName = "TopicName"
            case source = "Source"
            case fileName = "FileName"
            case pkgId = "PkgId"
            case pkgLogId = "PkgLogId"
            case logJson = "LogJson"
        }
    }

    /// 日志KeyValue对
    public struct AccessLogItem: TCOutputModel {
        /// 日记Key
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let key: String?

        /// 日志Value
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: String?

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    /// 日志KeyValue对数组，用于搜索访问日志
    public struct AccessLogItems: TCOutputModel {
        /// 分析结果返回的KV数据对
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [AccessLogItem]?

        enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }

    /// DescribeAccessIndex接口的出参数
    public struct AccessRuleInfo: TCOutputModel {
        /// 全文索引配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fullText: AccessFullTextInfo?

        /// 键值索引配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyValue: AccessRuleKeyValueInfo?

        /// 元字段索引配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tag: AccessRuleTagInfo?

        enum CodingKeys: String, CodingKey {
            case fullText = "FullText"
            case keyValue = "KeyValue"
            case tag = "Tag"
        }
    }

    /// DescribeAccessIndex接口的出参
    public struct AccessRuleKeyValueInfo: TCOutputModel {
        /// 是否大小写敏感
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let caseSensitive: Bool?

        /// 需要建立索引的键值对信息；最大只能配置100个键值对
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyValues: [AccessKeyValueInfo]?

        enum CodingKeys: String, CodingKey {
            case caseSensitive = "CaseSensitive"
            case keyValues = "KeyValues"
        }
    }

    /// DescribeAccessIndex接口的出参
    public struct AccessRuleTagInfo: TCOutputModel {
        /// 是否大小写敏感
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let caseSensitive: Bool?

        /// 标签索引配置中的字段信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyValues: [AccessKeyValueInfo]?

        enum CodingKeys: String, CodingKey {
            case caseSensitive = "CaseSensitive"
            case keyValues = "KeyValues"
        }
    }

    /// 用于DescribeAccessIndex接口的出参
    public struct AccessValueInfo: TCOutputModel {
        /// 字段类型，目前支持的类型有：long、text、double
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        /// 字段的分词符，只有当字段类型为text时才有意义；输入字符串中的每个字符代表一个分词符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tokenizer: String?

        /// 字段是否开启分析功能
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sqlFlag: Bool?

        /// 是否包含中文
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containZH: Bool?

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case tokenizer = "Tokenizer"
            case sqlFlag = "SqlFlag"
            case containZH = "ContainZH"
        }
    }

    /// Waf 攻击自动封禁详情
    public struct AutoDenyDetail: TCInputModel, TCOutputModel {
        /// 攻击封禁类型标签
        public let attackTags: [String]

        /// 攻击次数阈值
        public let attackThreshold: Int64

        /// 自动封禁状态
        public let defenseStatus: Int64

        /// 攻击时间阈值
        public let timeThreshold: Int64

        /// 自动封禁时间
        public let denyTimeThreshold: Int64

        /// 最后更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var lastUpdateTime: Date?

        public init(attackTags: [String], attackThreshold: Int64, defenseStatus: Int64, timeThreshold: Int64, denyTimeThreshold: Int64, lastUpdateTime: Date? = nil) {
            self.attackTags = attackTags
            self.attackThreshold = attackThreshold
            self.defenseStatus = defenseStatus
            self.timeThreshold = timeThreshold
            self.denyTimeThreshold = denyTimeThreshold
            self._lastUpdateTime = .init(wrappedValue: lastUpdateTime)
        }

        enum CodingKeys: String, CodingKey {
            case attackTags = "AttackTags"
            case attackThreshold = "AttackThreshold"
            case defenseStatus = "DefenseStatus"
            case timeThreshold = "TimeThreshold"
            case denyTimeThreshold = "DenyTimeThreshold"
            case lastUpdateTime = "LastUpdateTime"
        }
    }

    /// Bot资源信息
    public struct BotPkg: TCInputModel, TCOutputModel {
        /// 资源id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceIds: String?

        /// 状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: Int64?

        /// 开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let beginTime: String?

        /// 结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: String?

        /// 申请数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inquireNum: Int64?

        /// 使用数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let usedNum: Int64?

        /// 子产品code
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        public init(resourceIds: String? = nil, status: Int64? = nil, region: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, inquireNum: Int64? = nil, usedNum: Int64? = nil, type: String? = nil) {
            self.resourceIds = resourceIds
            self.status = status
            self.region = region
            self.beginTime = beginTime
            self.endTime = endTime
            self.inquireNum = inquireNum
            self.usedNum = usedNum
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case status = "Status"
            case region = "Region"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case inquireNum = "InquireNum"
            case usedNum = "UsedNum"
            case type = "Type"
        }
    }

    /// bot的qps详情
    public struct BotQPS: TCOutputModel {
        /// 资源id
        public let resourceIds: String

        /// 有效时间
        public let validTime: String

        /// 资源数量
        public let count: UInt64

        /// 资源所在地区
        public let region: String

        /// 使用qps的最大值
        public let maxBotQPS: UInt64

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case validTime = "ValidTime"
            case count = "Count"
            case region = "Region"
            case maxBotQPS = "MaxBotQPS"
        }
    }

    /// bot的趋势图对象
    public struct BotStatPointItem: TCOutputModel {
        /// 横坐标
        public let timeStamp: String

        /// value的所属对象
        public let key: String

        /// 纵列表
        public let value: Int64

        /// Key对应的页面展示内容
        public let label: String

        enum CodingKeys: String, CodingKey {
            case timeStamp = "TimeStamp"
            case key = "Key"
            case value = "Value"
            case label = "Label"
        }
    }

    /// CDC场景下负载均衡WAF的集群信息
    public struct CdcCluster: TCInputModel, TCOutputModel {
        /// cdc的集群id
        public let id: String

        /// cdc的集群名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        public init(id: String, name: String) {
            self.id = id
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
        }
    }

    /// CDC场景下负载均衡WAF的地域信息
    public struct CdcRegion: TCInputModel, TCOutputModel {
        /// 地域
        public let region: String

        /// 该地域对应的集群信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusters: [CdcCluster]?

        public init(region: String, clusters: [CdcCluster]) {
            self.region = region
            self.clusters = clusters
        }

        enum CodingKeys: String, CodingKey {
            case region = "Region"
            case clusters = "Clusters"
        }
    }

    /// 域名的详细信息
    public struct DomainInfo: TCInputModel, TCOutputModel {
        /// 域名
        public let domain: String

        /// 域名ID
        public let domainId: String

        /// 实例ID
        public let instanceId: String

        /// cname地址
        public let cname: String

        /// 实例类型
        public let edition: String

        /// 地域
        public let region: String

        /// 实例名
        public let instanceName: String

        /// 日志包
        public let clsStatus: UInt64

        /// clb模式
        public let flowMode: UInt64

        /// waf开关
        public let status: UInt64

        /// 防御模式
        public let mode: UInt64

        /// AI防御模式
        public let engine: UInt64

        /// CC列表
        public let ccList: [String]

        /// 回源ip
        public let rsList: [String]

        /// 服务端口配置
        public let ports: [PortInfo]

        /// 负载均衡器
        public let loadBalancerSet: [LoadBalancerPackageNew]

        /// 用户id
        public let appId: UInt64

        /// clb状态
        public let state: Int64

        /// 创建时间
        public let createTime: String?

        /// 0关闭 1开启
        public let ipv6Status: Int64?

        /// 0关闭 1开启
        public let botStatus: Int64?

        /// 版本信息
        public let level: Int64?

        /// 是否开启投递CLS功能
        public let postCLSStatus: Int64?

        /// 是否开启投递CKafka功能
        public let postCKafkaStatus: Int64?

        /// 应用型负载均衡类型: clb或者apisix，默认clb
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let albType: String?

        public init(domain: String, domainId: String, instanceId: String, cname: String, edition: String, region: String, instanceName: String, clsStatus: UInt64, flowMode: UInt64, status: UInt64, mode: UInt64, engine: UInt64, ccList: [String], rsList: [String], ports: [PortInfo], loadBalancerSet: [LoadBalancerPackageNew], appId: UInt64, state: Int64, createTime: String? = nil, ipv6Status: Int64? = nil, botStatus: Int64? = nil, level: Int64? = nil, postCLSStatus: Int64? = nil, postCKafkaStatus: Int64? = nil, albType: String? = nil) {
            self.domain = domain
            self.domainId = domainId
            self.instanceId = instanceId
            self.cname = cname
            self.edition = edition
            self.region = region
            self.instanceName = instanceName
            self.clsStatus = clsStatus
            self.flowMode = flowMode
            self.status = status
            self.mode = mode
            self.engine = engine
            self.ccList = ccList
            self.rsList = rsList
            self.ports = ports
            self.loadBalancerSet = loadBalancerSet
            self.appId = appId
            self.state = state
            self.createTime = createTime
            self.ipv6Status = ipv6Status
            self.botStatus = botStatus
            self.level = level
            self.postCLSStatus = postCLSStatus
            self.postCKafkaStatus = postCKafkaStatus
            self.albType = albType
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
            case instanceId = "InstanceId"
            case cname = "Cname"
            case edition = "Edition"
            case region = "Region"
            case instanceName = "InstanceName"
            case clsStatus = "ClsStatus"
            case flowMode = "FlowMode"
            case status = "Status"
            case mode = "Mode"
            case engine = "Engine"
            case ccList = "CCList"
            case rsList = "RsList"
            case ports = "Ports"
            case loadBalancerSet = "LoadBalancerSet"
            case appId = "AppId"
            case state = "State"
            case createTime = "CreateTime"
            case ipv6Status = "Ipv6Status"
            case botStatus = "BotStatus"
            case level = "Level"
            case postCLSStatus = "PostCLSStatus"
            case postCKafkaStatus = "PostCKafkaStatus"
            case albType = "AlbType"
        }
    }

    /// clb-waf 域名扩展套餐
    public struct DomainPackageNew: TCInputModel {
        /// 资源ID
        public let resourceIds: String

        /// 过期时间
        public let validTime: String

        /// 是否自动续费，1：自动续费，0：不自动续费
        public let renewFlag: UInt64

        /// 套餐购买个数
        public let count: UInt64

        /// 套餐购买地域，clb-waf暂时没有用到
        public let region: String

        public init(resourceIds: String, validTime: String, renewFlag: UInt64, count: UInt64, region: String) {
            self.resourceIds = resourceIds
            self.validTime = validTime
            self.renewFlag = renewFlag
            self.count = count
            self.region = region
        }

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case validTime = "ValidTime"
            case renewFlag = "RenewFlag"
            case count = "Count"
            case region = "Region"
        }
    }

    /// saas域名详情
    public struct DomainsPartInfo: TCOutputModel {
        /// 是否开启httpRewrite
        public let httpsRewrite: UInt64

        /// https回源端口
        public let httpsUpstreamPort: String

        /// 是否是cdn
        public let isCdn: UInt64

        /// 是否开启gray
        public let isGray: UInt64

        /// 是否是http2
        public let isHttp2: UInt64

        /// 是否开启websocket
        public let isWebsocket: UInt64

        /// 负载均衡
        public let loadBalance: UInt64

        /// 防御模式
        public let mode: UInt64

        /// 私钥
        public let privateKey: String

        /// ssl id
        public let sslId: String

        /// 回源域名
        public let upstreamDomain: String

        /// 回源类型
        public let upstreamType: UInt64

        /// 回源ip
        public let srcList: [String]

        /// 服务端口配置
        public let ports: [PortInfo]

        /// 证书类型
        public let certType: UInt64

        /// 回源方式
        public let upstreamScheme: String

        /// 日志包
        public let cls: UInt64

        /// 一级cname
        public let cname: String

        /// 是否长连接
        public let isKeepAlive: UInt64

        /// 是否开启主动健康检测，1表示开启，0表示不开启
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activeCheck: UInt64?

        /// TLS版本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tlsVersion: Int64?

        /// 加密套件信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ciphers: [Int64]?

        /// 模版
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cipherTemplate: Int64?

        /// 300s
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxyReadTimeout: Int64?

        /// 300s
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxySendTimeout: Int64?

        enum CodingKeys: String, CodingKey {
            case httpsRewrite = "HttpsRewrite"
            case httpsUpstreamPort = "HttpsUpstreamPort"
            case isCdn = "IsCdn"
            case isGray = "IsGray"
            case isHttp2 = "IsHttp2"
            case isWebsocket = "IsWebsocket"
            case loadBalance = "LoadBalance"
            case mode = "Mode"
            case privateKey = "PrivateKey"
            case sslId = "SSLId"
            case upstreamDomain = "UpstreamDomain"
            case upstreamType = "UpstreamType"
            case srcList = "SrcList"
            case ports = "Ports"
            case certType = "CertType"
            case upstreamScheme = "UpstreamScheme"
            case cls = "Cls"
            case cname = "Cname"
            case isKeepAlive = "IsKeepAlive"
            case activeCheck = "ActiveCheck"
            case tlsVersion = "TLSVersion"
            case ciphers = "Ciphers"
            case cipherTemplate = "CipherTemplate"
            case proxyReadTimeout = "ProxyReadTimeout"
            case proxySendTimeout = "ProxySendTimeout"
        }
    }

    /// 下载攻击日志记录数据项
    public struct DownloadAttackRecordInfo: TCOutputModel {
        /// 记录ID
        public let id: UInt64

        /// 下载任务名
        public let taskName: String

        /// 任务ID
        public let taskId: String

        /// 域名
        public let host: String

        /// 当前下载任务的日志条数
        public let count: UInt64

        /// 下载任务运行状态：-1-下载超时，0-下载等待，1-下载完成，2-下载失败，4-正在下载
        public let status: Int64

        /// 下载文件URL
        public let url: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 最后更新修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var modifyTime: Date

        /// 过期时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var expireTime: Date

        /// 下载任务需下载的日志总条数
        public let totalCount: UInt64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case taskName = "TaskName"
            case taskId = "TaskId"
            case host = "Host"
            case count = "Count"
            case status = "Status"
            case url = "Url"
            case createTime = "CreateTime"
            case modifyTime = "ModifyTime"
            case expireTime = "ExpireTime"
            case totalCount = "TotalCount"
        }
    }

    /// DescribeAccessExports接口
    public struct ExportAccessInfo: TCOutputModel {
        /// 日志导出任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let exportId: String?

        /// 日志导出查询语句
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let query: String?

        /// 日志导出文件名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileName: String?

        /// 日志文件大小
        public let fileSize: Int64

        /// 日志导出时间排序
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let order: String?

        /// 日志导出格式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let format: String?

        /// 日志导出数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let count: UInt64?

        /// 日志下载状态。Processing:导出正在进行中，Complete:导出完成，Failed:导出失败，Expired:日志导出已过期（三天有效期）
        public let status: String

        /// 日志导出起始时间
        public let from: Int64

        /// 日志导出结束时间
        public let to: Int64

        /// 日志导出路径
        public let cosPath: String

        /// 日志导出创建时间
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case exportId = "ExportId"
            case query = "Query"
            case fileName = "FileName"
            case fileSize = "FileSize"
            case order = "Order"
            case format = "Format"
            case count = "Count"
            case status = "Status"
            case from = "From"
            case to = "To"
            case cosPath = "CosPath"
            case createTime = "CreateTime"
        }
    }

    /// 实例入参过滤器
    public struct FiltersItemNew: TCInputModel {
        /// 字段名
        public let name: String

        /// 过滤值
        public let values: [String]

        /// 是否精确查找
        public let exactMatch: Bool

        public init(name: String, values: [String], exactMatch: Bool) {
            self.name = name
            self.values = values
            self.exactMatch = exactMatch
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
            case exactMatch = "ExactMatch"
        }
    }

    /// 业务安全资源信息
    public struct FraudPkg: TCInputModel, TCOutputModel {
        /// 资源id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceIds: String?

        /// 状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: Int64?

        /// 开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let beginTime: String?

        /// 结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: String?

        /// 申请数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inquireNum: Int64?

        /// 使用数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let usedNum: Int64?

        public init(resourceIds: String? = nil, status: Int64? = nil, region: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, inquireNum: Int64? = nil, usedNum: Int64? = nil) {
            self.resourceIds = resourceIds
            self.status = status
            self.region = region
            self.beginTime = beginTime
            self.endTime = endTime
            self.inquireNum = inquireNum
            self.usedNum = usedNum
        }

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case status = "Status"
            case region = "Region"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case inquireNum = "InquireNum"
            case usedNum = "UsedNum"
        }
    }

    /// 一个实例的详细信息
    public struct InstanceInfo: TCInputModel, TCOutputModel {
        /// id
        public let instanceId: String

        /// name
        public let instanceName: String

        /// 资源id
        public let resourceIds: String

        /// 地域
        public let region: String

        /// 付费模式
        public let payMode: UInt64

        /// 自动续费
        public let renewFlag: UInt64

        /// 弹性计费
        public let mode: UInt64

        /// 套餐版本
        public let level: UInt64

        /// 过期时间
        public let validTime: String

        /// 开始时间
        public let beginTime: String

        /// 已用
        public let domainCount: UInt64

        /// 上限
        public let subDomainLimit: UInt64

        /// 已用
        public let mainDomainCount: UInt64

        /// 上限
        public let mainDomainLimit: UInt64

        /// 峰值
        public let maxQPS: UInt64

        /// qps套餐
        public let qps: QPSPackageNew

        /// 域名套餐
        public let domainPkg: DomainPackageNew

        /// 用户appid
        public let appId: UInt64

        /// clb或saas
        public let edition: String

        /// 业务安全包
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fraudPkg: FraudPkg?

        /// Bot资源包
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let botPkg: BotPkg?

        /// bot的qps详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let botQPS: BotQPS?

        /// qps弹性计费上限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let elasticBilling: UInt64?

        /// 攻击日志投递开关
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attackLogPost: Int64?

        /// 带宽峰值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxBandwidth: UInt64?

        public init(instanceId: String, instanceName: String, resourceIds: String, region: String, payMode: UInt64, renewFlag: UInt64, mode: UInt64, level: UInt64, validTime: String, beginTime: String, domainCount: UInt64, subDomainLimit: UInt64, mainDomainCount: UInt64, mainDomainLimit: UInt64, maxQPS: UInt64, qps: QPSPackageNew, domainPkg: DomainPackageNew, appId: UInt64, edition: String, fraudPkg: FraudPkg? = nil, botPkg: BotPkg? = nil, botQPS: BotQPS? = nil, elasticBilling: UInt64? = nil, attackLogPost: Int64? = nil, maxBandwidth: UInt64? = nil) {
            self.instanceId = instanceId
            self.instanceName = instanceName
            self.resourceIds = resourceIds
            self.region = region
            self.payMode = payMode
            self.renewFlag = renewFlag
            self.mode = mode
            self.level = level
            self.validTime = validTime
            self.beginTime = beginTime
            self.domainCount = domainCount
            self.subDomainLimit = subDomainLimit
            self.mainDomainCount = mainDomainCount
            self.mainDomainLimit = mainDomainLimit
            self.maxQPS = maxQPS
            self.qps = qps
            self.domainPkg = domainPkg
            self.appId = appId
            self.edition = edition
            self.fraudPkg = fraudPkg
            self.botPkg = botPkg
            self.botQPS = botQPS
            self.elasticBilling = elasticBilling
            self.attackLogPost = attackLogPost
            self.maxBandwidth = maxBandwidth
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case resourceIds = "ResourceIds"
            case region = "Region"
            case payMode = "PayMode"
            case renewFlag = "RenewFlag"
            case mode = "Mode"
            case level = "Level"
            case validTime = "ValidTime"
            case beginTime = "BeginTime"
            case domainCount = "DomainCount"
            case subDomainLimit = "SubDomainLimit"
            case mainDomainCount = "MainDomainCount"
            case mainDomainLimit = "MainDomainLimit"
            case maxQPS = "MaxQPS"
            case qps = "QPS"
            case domainPkg = "DomainPkg"
            case appId = "AppId"
            case edition = "Edition"
            case fraudPkg = "FraudPkg"
            case botPkg = "BotPkg"
            case botQPS = "BotQPS"
            case elasticBilling = "ElasticBilling"
            case attackLogPost = "AttackLogPost"
            case maxBandwidth = "MaxBandwidth"
        }
    }

    /// 数据封装
    public struct IpAccessControlData: TCOutputModel {
        /// ip黑白名单
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let res: [IpAccessControlItem]?

        /// 计数
        public let totalCount: UInt64

        enum CodingKeys: String, CodingKey {
            case res = "Res"
            case totalCount = "TotalCount"
        }
    }

    /// ip黑白名单
    public struct IpAccessControlItem: TCOutputModel {
        /// 动作
        public let actionType: UInt64

        /// ip
        public let ip: String

        /// 备注
        public let note: String

        /// 来源
        public let source: String

        /// 更新时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tsVersion: UInt64?

        /// 有效截止时间戳
        public let validTs: UInt64

        enum CodingKeys: String, CodingKey {
            case actionType = "ActionType"
            case ip = "Ip"
            case note = "Note"
            case source = "Source"
            case tsVersion = "TsVersion"
            case validTs = "ValidTs"
        }
    }

    /// ip封堵状态数据
    public struct IpHitItem: TCOutputModel {
        /// 动作
        public let action: UInt64

        /// 类别
        public let category: String

        /// ip
        public let ip: String

        /// 规则名称
        public let name: String

        /// 时间戳
        public let tsVersion: UInt64

        /// 有效截止时间戳
        public let validTs: UInt64

        enum CodingKeys: String, CodingKey {
            case action = "Action"
            case category = "Category"
            case ip = "Ip"
            case name = "Name"
            case tsVersion = "TsVersion"
            case validTs = "ValidTs"
        }
    }

    /// 封装参数
    public struct IpHitItemsData: TCOutputModel {
        /// 数组封装
        public let res: [IpHitItem]

        /// 总数目
        public let totalCount: UInt64

        enum CodingKeys: String, CodingKey {
            case res = "Res"
            case totalCount = "TotalCount"
        }
    }

    /// 负载均衡算法
    public struct LoadBalancerPackageNew: TCOutputModel {
        /// 监听id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listenerId: String?

        /// 监听名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listenerName: String?

        /// 负载均衡id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerId: String?

        /// 负载均衡名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerName: String?

        /// 协议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let `protocol`: String?

        /// 地区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?

        /// 接入IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vip: String?

        /// 接入端口
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vport: UInt64?

        /// 地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zone: String?

        /// VPCID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let numericalVpcId: Int64?

        /// CLB类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerType: String?

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case listenerName = "ListenerName"
            case loadBalancerId = "LoadBalancerId"
            case loadBalancerName = "LoadBalancerName"
            case `protocol` = "Protocol"
            case region = "Region"
            case vip = "Vip"
            case vport = "Vport"
            case zone = "Zone"
            case numericalVpcId = "NumericalVpcId"
            case loadBalancerType = "LoadBalancerType"
        }
    }

    /// 防护域名端口配置信息
    public struct PortInfo: TCOutputModel {
    }

    /// 防护域名端口配置信息
    public struct PortItem: TCInputModel, TCOutputModel {
        /// 监听端口配置
        public let port: String

        /// 与Port一一对应，表示端口对应的协议
        public let `protocol`: String

        /// 与Port一一对应,  表示回源端口
        public let upstreamPort: String

        /// 与Port一一对应,  表示回源协议
        public let upstreamProtocol: String

        /// Nginx的服务器ID
        public let nginxServerId: String

        public init(port: String, protocol: String, upstreamPort: String, upstreamProtocol: String, nginxServerId: String) {
            self.port = port
            self.protocol = `protocol`
            self.upstreamPort = upstreamPort
            self.upstreamProtocol = upstreamProtocol
            self.nginxServerId = nginxServerId
        }

        enum CodingKeys: String, CodingKey {
            case port = "Port"
            case `protocol` = "Protocol"
            case upstreamPort = "UpstreamPort"
            case upstreamProtocol = "UpstreamProtocol"
            case nginxServerId = "NginxServerId"
        }
    }

    /// clb-waf QPS套餐 New
    public struct QPSPackageNew: TCInputModel {
        /// 资源ID
        public let resourceIds: String

        /// 过期时间
        public let validTime: String

        /// 是否自动续费，1：自动续费，0：不自动续费
        public let renewFlag: Int64

        /// 套餐购买个数
        public let count: Int64

        /// 套餐购买地域，clb-waf暂时没有用到
        public let region: String

        public init(resourceIds: String, validTime: String, renewFlag: Int64, count: Int64, region: String) {
            self.resourceIds = resourceIds
            self.validTime = validTime
            self.renewFlag = renewFlag
            self.count = count
            self.region = region
        }

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case validTime = "ValidTime"
            case renewFlag = "RenewFlag"
            case count = "Count"
            case region = "Region"
        }
    }

    /// 响应体的返回码
    public struct ResponseCode: TCOutputModel {
        /// 如果成功则返回Success，失败则返回yunapi定义的错误码
        public let code: String

        /// 如果成功则返回Success，失败则返回WAF定义的二级错误码
        public let message: String

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case message = "Message"
        }
    }

    /// 规则白名单
    public struct RuleList: TCOutputModel {
        /// 规则Id
        public let id: UInt64

        /// 规则列表的id
        public let rules: [UInt64]

        /// 请求url
        public let url: String

        /// 请求的方法
        public let function: String

        /// 时间戳
        public let time: String

        /// 开关状态
        public let status: UInt64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case rules = "Rules"
            case url = "Url"
            case function = "Function"
            case time = "Time"
            case status = "Status"
        }
    }

    /// 自定义规则的匹配条件结构体
    public struct Strategy: TCInputModel {
        /// 匹配字段
        public let field: String

        /// 逻辑符号
        public let compareFunc: String

        /// 匹配内容
        public let content: String

        /// 匹配参数
        public let arg: String

        public init(field: String, compareFunc: String, content: String, arg: String) {
            self.field = field
            self.compareFunc = compareFunc
            self.content = content
            self.arg = arg
        }

        enum CodingKeys: String, CodingKey {
            case field = "Field"
            case compareFunc = "CompareFunc"
            case content = "Content"
            case arg = "Arg"
        }
    }

    /// Waf 威胁情报封禁模块配置详情
    public struct WafThreatenIntelligenceDetails: TCInputModel, TCOutputModel {
        /// 封禁模组启用状态
        public let defenseStatus: Int64

        /// 封禁属性标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [String]?

        /// 最后更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var lastUpdateTime: Date?

        public init(defenseStatus: Int64, tags: [String]? = nil, lastUpdateTime: Date? = nil) {
            self.defenseStatus = defenseStatus
            self.tags = tags
            self._lastUpdateTime = .init(wrappedValue: lastUpdateTime)
        }

        enum CodingKeys: String, CodingKey {
            case defenseStatus = "DefenseStatus"
            case tags = "Tags"
            case lastUpdateTime = "LastUpdateTime"
        }
    }
}
