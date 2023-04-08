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

extension Keewidb {
    /// 实例的备份信息
    public struct BackupInfo: TCOutputModel {
        /// 备份开始时间。
        public let startTime: String

        /// 备份 ID。
        public let backupId: String

        /// 备份类型。<ul><li>1：手动备份，指根据业务运维排障需求，立即执行备份任务的操作。</li> <li>0：自动备份，指根据自动备份策略定时自动发起的备份任务。</li></ul>
        public let backupType: String

        /// 备份的备注信息.
        public let remark: String

        /// 备份状态。  <ul><li>1：备份任务被其它流程锁定。</li><li>2：备份正常，没有被任何流程锁定。</li> <li>-1：备份已过期。</li><li>3：备份正在被导出。</li> <li>4：备份导出成功。</li></ul>
        public let status: Int64

        /// 备份是否被锁定。<ul><li>0：未被锁定。</li><li>1：已被锁定。</li></ul>
        public let locked: Int64

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case backupId = "BackupId"
            case backupType = "BackupType"
            case remark = "Remark"
            case status = "Status"
            case locked = "Locked"
        }
    }

    /// 实例增量备份信息
    public struct BinlogInfo: TCOutputModel {
        /// 备份开始时间。
        public let startTime: String

        /// 备份结束时间。
        public let endTime: String

        /// 备份 ID。
        public let backupId: String

        /// 备份文件名。
        public let filename: String

        /// 备份文件大小，单位：Byte。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSize: Int64?

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case backupId = "BackupId"
            case filename = "Filename"
            case fileSize = "FileSize"
        }
    }

    /// 安全组入站规则
    public struct Inbound: TCOutputModel {
        /// 策略，ACCEPT或者DROP。
        public let action: String

        /// 地址组id代表的地址集合。
        public let addressModule: String

        /// 来源Ip或Ip段，例如192.168.0.0/16。
        public let cidrIp: String

        /// 描述。
        public let desc: String

        /// 网络协议，支持udp、tcp等。
        public let ipProtocol: String

        /// 端口。
        public let portRange: String

        /// 服务组id代表的协议和端口集合。
        public let serviceModule: String

        /// 安全组id代表的地址集合。
        public let id: String

        enum CodingKeys: String, CodingKey {
            case action = "Action"
            case addressModule = "AddressModule"
            case cidrIp = "CidrIp"
            case desc = "Desc"
            case ipProtocol = "IpProtocol"
            case portRange = "PortRange"
            case serviceModule = "ServiceModule"
            case id = "Id"
        }
    }

    /// 实例枚举类型参数描述
    public struct InstanceEnumParam: TCOutputModel {
        /// 参数名
        public let paramName: String

        /// 参数类型：enum
        public let valueType: String

        /// 修改后是否需要重启：true，false
        public let needRestart: String

        /// 参数默认值
        public let defaultValue: String

        /// 当前运行参数值
        public let currentValue: String

        /// 参数说明
        public let tips: String

        /// 参数可取值
        public let enumValue: [String]

        /// 参数状态, 1: 修改中， 2：修改完成
        public let status: Int64

        enum CodingKeys: String, CodingKey {
            case paramName = "ParamName"
            case valueType = "ValueType"
            case needRestart = "NeedRestart"
            case defaultValue = "DefaultValue"
            case currentValue = "CurrentValue"
            case tips = "Tips"
            case enumValue = "EnumValue"
            case status = "Status"
        }
    }

    /// 实例详细信息
    public struct InstanceInfo: TCOutputModel {
        /// 实例名称。
        public let instanceName: String

        /// 实例 ID。
        public let instanceId: String

        /// 用户的Appid。
        public let appid: Int64

        /// 项目 ID。
        public let projectId: Int64

        /// 地域ID。<ul><li>1：广州。</li><li>4：上海。</li><li>8：北京。</li></ul>
        public let regionId: Int64

        /// 可用区 ID。
        public let zoneId: Int64

        /// VPC 网络 ID， 如：75101。该参数当前暂保留，可忽略。
        public let vpcId: Int64

        /// 实例当前状态。<ul><li>0：待初始化。</li><li>1：实例在流程中。</li><li>2：实例运行中。</li><li>-2：实例已隔离。</li><li>-3：实例待删除。</li></ul>
        public let status: Int64

        /// VPC 网络下子网 ID， 如：46315。该参数当前暂保留，可忽略。
        public let subnetId: Int64

        /// 实例 VIP。
        public let wanIp: String

        /// 实例端口号。
        public let port: Int64

        /// 实例创建时间。
        public let createtime: String

        /// 实例持久内存总容量大小，单位：MB。
        public let size: Float

        /// 实例类型。<ul><li>13：标准版。</li><li>14：集群版。</li></ul>
        public let type: Int64

        /// 实例是否设置自动续费标识。<ul><li>1：设置自动续费。</li><li>0：未设置自动续费。</li></ul>
        public let autoRenewFlag: Int64

        /// 实例到期时间。
        public let deadlineTime: String

        /// 存储引擎。
        public let engine: String

        /// 产品类型。<ul><li>standalone ：标准版。</li><li>cluster ：集群版。</li></ul>
        public let productType: String

        /// VPC 网络 ID， 如：vpc-fk33jsf4****。
        public let uniqVpcId: String

        /// VPC 网络下子网 ID，如：subnet-fd3j6l3****。
        public let uniqSubnetId: String

        /// 计费模式。<ul><li>0：按量计费。</li><li>1：包年包月。</li></ul>
        public let billingMode: Int64

        /// 实例运行状态描述：如”实例运行中“。
        public let instanceTitle: String

        /// 计划下线时间。
        public let offlineTime: String

        /// 流程中的实例，返回子状态。
        public let subStatus: Int64

        /// 反亲和性标签
        public let tags: [String]

        /// 分片大小。
        public let redisShardSize: Int64

        /// 分片数量。
        public let redisShardNum: Int64

        /// 副本数量。
        public let redisReplicasNum: Int64

        /// 计费 ID。
        public let priceId: Int64

        /// 隔离时间。
        public let closeTime: String

        /// 从节点读取权重。
        public let slaveReadWeight: Int64

        /// 实例关联的标签信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceTags: [InstanceTagInfo]?

        /// 项目名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectName: String?

        /// 是否为免密实例；<ul><li>true：免密实例。</li><li>false：非免密实例。</li></ul>
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let noAuth: Bool?

        /// 客户端连接数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientLimit: Int64?

        /// DTS状态（内部参数，用户可忽略）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dtsStatus: Int64?

        /// 分片带宽上限，单位 MB。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let netLimit: Int64?

        /// 免密实例标识（内部参数，用户可忽略）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let passwordFree: Int64?

        /// 实例只读标识（内部参数，用户可忽略）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let readOnly: Int64?

        /// 内部参数，用户可忽略。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vip6: String?

        /// 内部参数，用户可忽略。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remainBandwidthDuration: String?

        /// 实例的磁盘容量大小。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let diskSize: Int64?

        /// 监控版本。<ul><li>1m：分钟粒度监控。</li><li>5s：5秒粒度监控。</li></ul>
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let monitorVersion: String?

        /// 客户端最大连接数可设置的最小值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientLimitMin: Int64?

        /// 客户端最大连接数可设置的最大值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientLimitMax: Int64?

        /// 实例的节点详细信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeSet: [NodeInfo]?

        /// 实例所在的地域信息，比如ap-guangzhou。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let region: String?

        /// 实例内存容量，单位：GB。KeeWiDB 内存容量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let machineMemory: Int64?

        /// 单分片磁盘大小，单位：MB
        public let diskShardSize: Int64?

        /// 3
        public let diskShardNum: Int64?

        /// 1
        public let diskReplicasNum: Int64?

        enum CodingKeys: String, CodingKey {
            case instanceName = "InstanceName"
            case instanceId = "InstanceId"
            case appid = "Appid"
            case projectId = "ProjectId"
            case regionId = "RegionId"
            case zoneId = "ZoneId"
            case vpcId = "VpcId"
            case status = "Status"
            case subnetId = "SubnetId"
            case wanIp = "WanIp"
            case port = "Port"
            case createtime = "Createtime"
            case size = "Size"
            case type = "Type"
            case autoRenewFlag = "AutoRenewFlag"
            case deadlineTime = "DeadlineTime"
            case engine = "Engine"
            case productType = "ProductType"
            case uniqVpcId = "UniqVpcId"
            case uniqSubnetId = "UniqSubnetId"
            case billingMode = "BillingMode"
            case instanceTitle = "InstanceTitle"
            case offlineTime = "OfflineTime"
            case subStatus = "SubStatus"
            case tags = "Tags"
            case redisShardSize = "RedisShardSize"
            case redisShardNum = "RedisShardNum"
            case redisReplicasNum = "RedisReplicasNum"
            case priceId = "PriceId"
            case closeTime = "CloseTime"
            case slaveReadWeight = "SlaveReadWeight"
            case instanceTags = "InstanceTags"
            case projectName = "ProjectName"
            case noAuth = "NoAuth"
            case clientLimit = "ClientLimit"
            case dtsStatus = "DtsStatus"
            case netLimit = "NetLimit"
            case passwordFree = "PasswordFree"
            case readOnly = "ReadOnly"
            case vip6 = "Vip6"
            case remainBandwidthDuration = "RemainBandwidthDuration"
            case diskSize = "DiskSize"
            case monitorVersion = "MonitorVersion"
            case clientLimitMin = "ClientLimitMin"
            case clientLimitMax = "ClientLimitMax"
            case nodeSet = "NodeSet"
            case region = "Region"
            case machineMemory = "MachineMemory"
            case diskShardSize = "DiskShardSize"
            case diskShardNum = "DiskShardNum"
            case diskReplicasNum = "DiskReplicasNum"
        }
    }

    /// 实例整型参数描述
    public struct InstanceIntegerParam: TCOutputModel {
        /// 参数名
        public let paramName: String

        /// 参数类型：integer
        public let valueType: String

        /// 修改后是否需要重启：true，false
        public let needRestart: String

        /// 参数默认值
        public let defaultValue: String

        /// 当前运行参数值
        public let currentValue: String

        /// 参数说明
        public let tips: String

        /// 参数最小值
        public let min: String

        /// 参数最大值
        public let max: String

        /// 参数状态, 1: 修改中， 2：修改完成
        public let status: Int64

        /// 参数单位
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unit: String?

        enum CodingKeys: String, CodingKey {
            case paramName = "ParamName"
            case valueType = "ValueType"
            case needRestart = "NeedRestart"
            case defaultValue = "DefaultValue"
            case currentValue = "CurrentValue"
            case tips = "Tips"
            case min = "Min"
            case max = "Max"
            case status = "Status"
            case unit = "Unit"
        }
    }

    /// 实例多选项类型参数描述
    public struct InstanceMultiParam: TCOutputModel {
        /// 参数名
        public let paramName: String

        /// 参数类型：multi
        public let valueType: String

        /// 修改后是否需要重启：true，false
        public let needRestart: String

        /// 参数默认值
        public let defaultValue: String

        /// 当前运行参数值
        public let currentValue: String

        /// 参数说明
        public let tips: String

        /// 参数说明
        public let enumValue: [String]

        /// 参数状态, 1: 修改中， 2：修改完成
        public let status: Int64

        enum CodingKeys: String, CodingKey {
            case paramName = "ParamName"
            case valueType = "ValueType"
            case needRestart = "NeedRestart"
            case defaultValue = "DefaultValue"
            case currentValue = "CurrentValue"
            case tips = "Tips"
            case enumValue = "EnumValue"
            case status = "Status"
        }
    }

    /// 实例节点信息
    public struct InstanceNodeInfo: TCOutputModel {
        /// 节点ID
        public let nodeId: String

        /// 节点角色
        public let nodeRole: String

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case nodeRole = "NodeRole"
        }
    }

    /// 实例参数
    public struct InstanceParam: TCInputModel {
        /// 设置参数的名字
        public let key: String

        /// 设置参数的值
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

    /// 实例参数修改历史
    public struct InstanceParamHistory: TCOutputModel {
        /// 参数名称
        public let paramName: String

        /// 修改前值
        public let preValue: String

        /// 修改后值
        public let newValue: String

        /// 状态：1-参数配置修改中；2-参数配置修改成功；3-参数配置修改失败
        public let status: Int64

        /// 修改时间
        public let modifyTime: String

        enum CodingKeys: String, CodingKey {
            case paramName = "ParamName"
            case preValue = "PreValue"
            case newValue = "NewValue"
            case status = "Status"
            case modifyTime = "ModifyTime"
        }
    }

    /// 代理慢查询详情
    public struct InstanceProxySlowlogDetail: TCOutputModel {
        /// 慢查询耗时
        public let duration: Int64

        /// 客户端地址
        public let client: String

        /// 命令
        public let command: String

        /// 详细命令行信息
        public let commandLine: String

        /// 执行时间
        public let executeTime: String

        enum CodingKeys: String, CodingKey {
            case duration = "Duration"
            case client = "Client"
            case command = "Command"
            case commandLine = "CommandLine"
            case executeTime = "ExecuteTime"
        }
    }

    /// 实例标签信息
    public struct InstanceTagInfo: TCInputModel, TCOutputModel {
        /// 标签键
        public let tagKey: String?

        /// 标签值
        public let tagValue: String?

        public init(tagKey: String? = nil, tagValue: String? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 实例字符型参数描述
    public struct InstanceTextParam: TCOutputModel {
        /// 参数名
        public let paramName: String

        /// 参数类型：text
        public let valueType: String

        /// 修改后是否需要重启：true，false
        public let needRestart: String

        /// 参数默认值
        public let defaultValue: String

        /// 当前运行参数值
        public let currentValue: String

        /// 参数说明
        public let tips: String

        /// 参数可取值
        public let textValue: [String]

        /// 参数状态, 1: 修改中， 2：修改完成
        public let status: Int64

        enum CodingKeys: String, CodingKey {
            case paramName = "ParamName"
            case valueType = "ValueType"
            case needRestart = "NeedRestart"
            case defaultValue = "DefaultValue"
            case currentValue = "CurrentValue"
            case tips = "Tips"
            case textValue = "TextValue"
            case status = "Status"
        }
    }

    /// KeeWiDB节点的运行信息
    public struct KeeWiDBNode: TCOutputModel {
        /// 节点的序列ID。
        public let nodeId: String

        /// 节点的状态。
        public let status: String

        /// 节点角色。
        public let role: String

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case status = "Status"
            case role = "Role"
        }
    }

    /// 描述实例的主节点或者副本节点信息
    public struct NodeInfo: TCInputModel, TCOutputModel {
        /// 节点类型，0 为主节点，1 为副本节点
        public let nodeType: Int64

        /// 主节点或者副本节点的ID，创建时不需要传递此参数。
        public let nodeId: Int64?

        /// 主节点或者副本节点的可用区ID
        public let zoneId: UInt64?

        /// 主节点或者副本节点的可用区名称
        public let zoneName: String?

        public init(nodeType: Int64, nodeId: Int64? = nil, zoneId: UInt64? = nil, zoneName: String? = nil) {
            self.nodeType = nodeType
            self.nodeId = nodeId
            self.zoneId = zoneId
            self.zoneName = zoneName
        }

        enum CodingKeys: String, CodingKey {
            case nodeType = "NodeType"
            case nodeId = "NodeId"
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
        }
    }

    /// 安全组出站规则
    public struct Outbound: TCOutputModel {
        /// 策略，ACCEPT或者DROP。
        public let action: String

        /// 地址组id代表的地址集合。
        public let addressModule: String

        /// 来源Ip或Ip段，例如192.168.0.0/16。
        public let cidrIp: String

        /// 描述。
        public let desc: String

        /// 网络协议，支持udp、tcp等。
        public let ipProtocol: String

        /// 端口。
        public let portRange: String

        /// 服务组id代表的协议和端口集合。
        public let serviceModule: String

        /// 安全组id代表的地址集合。
        public let id: String

        enum CodingKeys: String, CodingKey {
            case action = "Action"
            case addressModule = "AddressModule"
            case cidrIp = "CidrIp"
            case desc = "Desc"
            case ipProtocol = "IpProtocol"
            case portRange = "PortRange"
            case serviceModule = "ServiceModule"
            case id = "Id"
        }
    }

    /// 产品规格信息
    public struct ProductConf: TCOutputModel {
        /// 产品类型，13-KeewiDB标准架构，14-KeewiDB集群架构
        public let type: Int64

        /// KeewiDB标准架构，KeewiDB集群架构
        public let typeName: String

        /// 购买时的最小数量
        public let minBuyNum: Int64

        /// 购买时的最大数量
        public let maxBuyNum: Int64

        /// 产品是否售罄
        public let saleout: Bool

        /// 产品引擎，keewidb
        public let engine: String

        /// 兼容版本，Redis-2.8，Redis-3.2，Redis-4.0
        public let version: String

        /// 副本数量
        public let replicaNum: [String]

        /// 支持的计费模式，1-包年包月，0-按量计费
        public let payMode: String

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case typeName = "TypeName"
            case minBuyNum = "MinBuyNum"
            case maxBuyNum = "MaxBuyNum"
            case saleout = "Saleout"
            case engine = "Engine"
            case version = "Version"
            case replicaNum = "ReplicaNum"
            case payMode = "PayMode"
        }
    }

    /// Proxy节点信息
    public struct ProxyNodeInfo: TCOutputModel {
        /// 节点ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeId: String?

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
        }
    }

    /// Redis节点信息
    public struct RedisNodeInfo: TCOutputModel {
        /// 节点ID
        public let nodeId: String

        /// 节点角色
        public let nodeRole: String

        /// 分片ID
        public let clusterId: Int64

        /// 可用区ID
        public let zoneId: Int64

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case nodeRole = "NodeRole"
            case clusterId = "ClusterId"
            case zoneId = "ZoneId"
        }
    }

    /// 地域售卖信息
    public struct RegionConf: TCOutputModel {
        /// 地域ID
        public let regionId: String

        /// 地域名称
        public let regionName: String

        /// 地域简称
        public let regionShortName: String

        /// 地域所在大区名称
        public let area: String

        /// 可用区信息
        public let zoneSet: [ZoneCapacityConf]

        enum CodingKeys: String, CodingKey {
            case regionId = "RegionId"
            case regionName = "RegionName"
            case regionShortName = "RegionShortName"
            case area = "Area"
            case zoneSet = "ZoneSet"
        }
    }

    /// 实例副本组信息
    public struct ReplicaGroup: TCOutputModel {
        /// 节点 ID。
        public let groupId: Int64

        /// 节点组的名称，主节点为空。
        public let groupName: String

        /// 节点的可用区ID，比如ap-guangzhou-1。
        public let zoneId: String

        /// 节点组角色。<ul><li>master：为主节点。</li><li>replica：为副本节点。</li></ul>
        public let role: String

        /// 节点组节点列表。
        public let keeWiDBNodes: [KeeWiDBNode]

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case zoneId = "ZoneId"
            case role = "Role"
            case keeWiDBNodes = "KeeWiDBNodes"
        }
    }

    /// 实例绑定标签
    public struct ResourceTag: TCInputModel, TCOutputModel {
        /// 标签 Key。
        public let tagKey: String

        /// 标签 Value。
        public let tagValue: String

        public init(tagKey: String, tagValue: String) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 安全组规则
    public struct SecurityGroup: TCOutputModel {
        /// 创建时间，时间格式：yyyy-mm-dd hh:mm:ss。
        public let createTime: String

        /// 项目ID。
        public let projectId: UInt64

        /// 安全组ID。
        public let securityGroupId: String

        /// 安全组名称。
        public let securityGroupName: String

        /// 安全组备注。
        public let securityGroupRemark: String

        /// 出站规则。
        public let outbound: [Outbound]

        /// 入站规则。
        public let inbound: [Inbound]

        enum CodingKeys: String, CodingKey {
            case createTime = "CreateTime"
            case projectId = "ProjectId"
            case securityGroupId = "SecurityGroupId"
            case securityGroupName = "SecurityGroupName"
            case securityGroupRemark = "SecurityGroupRemark"
            case outbound = "Outbound"
            case inbound = "Inbound"
        }
    }

    /// 任务信息详情
    public struct TaskInfoDetail: TCOutputModel {
        /// 任务Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: Int64?

        /// 开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: String?

        /// 任务类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskType: String?

        /// 实例名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceName: String?

        /// 实例Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 项目Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: Int64?

        /// 任务进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let progress: Float?

        /// 结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: String?

        /// 任务状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Int64?

        /// 操作者用户uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operatorUin: String?

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case startTime = "StartTime"
            case taskType = "TaskType"
            case instanceName = "InstanceName"
            case instanceId = "InstanceId"
            case projectId = "ProjectId"
            case progress = "Progress"
            case endTime = "EndTime"
            case result = "Result"
            case operatorUin = "OperatorUin"
        }
    }

    /// 实例慢查询详情
    public struct TendisSlowLogDetail: TCOutputModel {
        /// 执行时间
        public let executeTime: String

        /// 慢查询耗时（毫秒）
        public let duration: Int64

        /// 命令
        public let command: String

        /// 详细命令行信息
        public let commandLine: String

        /// 节点ID
        public let node: String

        enum CodingKeys: String, CodingKey {
            case executeTime = "ExecuteTime"
            case duration = "Duration"
            case command = "Command"
            case commandLine = "CommandLine"
            case node = "Node"
        }
    }

    /// 订单交易信息
    public struct TradeDealDetail: TCOutputModel {
        /// 订单号ID，调用云API时使用此ID
        public let dealId: String?

        /// 长订单ID，反馈订单问题给官方客服使用此ID
        public let dealName: String?

        /// 可用区id
        public let zoneId: Int64?

        /// 订单关联的实例数
        public let goodsNum: Int64?

        /// 创建用户uin
        public let creater: String?

        /// 订单创建时间
        public let creatTime: String?

        /// 订单超时时间
        public let overdueTime: String?

        /// 订单完成时间
        public let endTime: String?

        /// 订单状态 1：未支付 2:已支付，未发货 3:发货中 4:发货成功 5:发货失败 6:已退款 7:已关闭订单 8:订单过期 9:订单已失效 10:产品已失效 11:代付拒绝 12:支付中
        public let status: Int64?

        /// 订单状态描述
        public let description: String?

        /// 订单实际总价，单位：分
        public let price: Float?

        /// 实例ID
        public let instanceIds: [String]?

        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case dealName = "DealName"
            case zoneId = "ZoneId"
            case goodsNum = "GoodsNum"
            case creater = "Creater"
            case creatTime = "CreatTime"
            case overdueTime = "OverdueTime"
            case endTime = "EndTime"
            case status = "Status"
            case description = "Description"
            case price = "Price"
            case instanceIds = "InstanceIds"
        }
    }

    /// 可用区内产品售卖信息
    public struct ZoneCapacityConf: TCOutputModel {
        /// 可用区ID
        public let zoneId: String

        /// 可用区名称
        public let zoneName: String

        /// 可用区是否售罄
        public let isSaleout: Bool

        /// 是否为默认可用区
        public let isDefault: Bool

        /// 网络类型：basenet -- 基础网络；vpcnet -- VPC网络
        public let netWorkType: [String]

        /// 产品规格等信息
        public let productSet: [ProductConf]

        /// Int类型可用区ID
        public let oldZoneId: Int64

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
            case isSaleout = "IsSaleout"
            case isDefault = "IsDefault"
            case netWorkType = "NetWorkType"
            case productSet = "ProductSet"
            case oldZoneId = "OldZoneId"
        }
    }
}
