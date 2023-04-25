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

// Test PR teco-project/teco-code-generator#23.

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Mongodb {
    /// 用户权限
    public struct Auth: TCInputModel {
        /// 当前账号具有的权限信息。<ul><li>0：无权限。</li><li>1：只读。</li><li>2：只写。</li><li>3：读写。</li></ul>
        public let mask: Int64

        /// 指具有当前账号权限的数据库名。
        /// <ul><li>* ：表示所有数据库。</li><li>db.name：表示特定name的数据库。</li></ul>
        public let nameSpace: String

        public init(mask: Int64, nameSpace: String) {
            self.mask = mask
            self.nameSpace = nameSpace
        }

        enum CodingKeys: String, CodingKey {
            case mask = "Mask"
            case nameSpace = "NameSpace"
        }
    }

    /// 备份下载任务
    public struct BackupDownloadTask: TCOutputModel {
        /// 任务创建时间
        public let createTime: String

        /// 备份文件名
        public let backupName: String

        /// 分片名称
        public let replicaSetId: String

        /// 备份数据大小，单位为字节
        public let backupSize: Int64

        /// 任务状态。0-等待执行，1-正在下载，2-下载完成，3-下载失败，4-等待重试
        public let status: Int64

        /// 任务进度百分比
        public let percent: Int64

        /// 耗时，单位为秒
        public let timeSpend: Int64

        /// 备份数据下载链接
        public let url: String

        /// 备份文件备份类型，0-逻辑备份，1-物理备份
        public let backupMethod: Int64

        /// 发起备份时指定的备注信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backupDesc: String?

        enum CodingKeys: String, CodingKey {
            case createTime = "CreateTime"
            case backupName = "BackupName"
            case replicaSetId = "ReplicaSetId"
            case backupSize = "BackupSize"
            case status = "Status"
            case percent = "Percent"
            case timeSpend = "TimeSpend"
            case url = "Url"
            case backupMethod = "BackupMethod"
            case backupDesc = "BackupDesc"
        }
    }

    /// 创建备份下载任务结果
    public struct BackupDownloadTaskStatus: TCOutputModel {
        /// 分片名
        public let replicaSetId: String

        /// 任务当前状态。0-等待执行，1-正在下载，2-下载完成，3-下载失败，4-等待重试
        public let status: Int64

        enum CodingKeys: String, CodingKey {
            case replicaSetId = "ReplicaSetId"
            case status = "Status"
        }
    }

    /// 备份信息
    public struct BackupInfo: TCOutputModel {
        /// 实例ID
        public let instanceId: String

        /// 备份方式，0-自动备份，1-手动备份
        public let backupType: UInt64

        /// 备份名称
        public let backupName: String

        /// 备份备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backupDesc: String?

        /// 备份文件大小，单位KB
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backupSize: UInt64?

        /// 备份开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: String?

        /// 备份结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: String?

        /// 备份状态，1-备份中，2-备份成功
        public let status: UInt64

        /// 备份方法，0-逻辑备份，1-物理备份
        public let backupMethod: UInt64

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupType = "BackupType"
            case backupName = "BackupName"
            case backupDesc = "BackupDesc"
            case backupSize = "BackupSize"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case status = "Status"
            case backupMethod = "BackupMethod"
        }
    }

    /// 客户端连接信息，包括客户端IP和连接数
    public struct ClientConnection: TCOutputModel {
        /// 连接的客户端IP
        public let ip: String

        /// 对应客户端IP的连接数
        public let count: UInt64

        /// 是否为内部ip
        public let internalService: Bool

        enum CodingKeys: String, CodingKey {
            case ip = "IP"
            case count = "Count"
            case internalService = "InternalService"
        }
    }

    /// 云数据库实例当前操作
    public struct CurrentOp: TCOutputModel {
        /// 操作序号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let opId: Int64?

        /// 操作所在的命名空间，形式如db.collection
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ns: String?

        /// 操作执行语句
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let query: String?

        /// 操作类型，可能的取值：aggregate、count、delete、distinct、find、findAndModify、getMore、insert、mapReduce、update和command
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let op: String?

        /// 操作所在的分片名称
        public let replicaSetName: String

        /// 筛选条件，节点状态，可能的取值为：Primary、Secondary
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let state: String?

        /// 操作详细信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operation: String?

        /// 操作所在的节点名称
        public let nodeName: String

        /// 操作已执行时间（ms）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let microsecsRunning: UInt64?

        enum CodingKeys: String, CodingKey {
            case opId = "OpId"
            case ns = "Ns"
            case query = "Query"
            case op = "Op"
            case replicaSetName = "ReplicaSetName"
            case state = "State"
            case operation = "Operation"
            case nodeName = "NodeName"
            case microsecsRunning = "MicrosecsRunning"
        }
    }

    /// 实例信息
    public struct DBInstanceInfo: TCOutputModel {
        /// 实例ID
        public let instanceId: String

        /// 地域信息
        public let region: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case region = "Region"
        }
    }

    /// 数据库实例价格
    public struct DBInstancePrice: TCInputModel, TCOutputModel {
        /// 单价
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPrice: Float?

        /// 原价
        public let originalPrice: Float

        /// 折扣加
        public let discountPrice: Float

        public init(unitPrice: Float, originalPrice: Float, discountPrice: Float) {
            self.unitPrice = unitPrice
            self.originalPrice = originalPrice
            self.discountPrice = discountPrice
        }

        enum CodingKeys: String, CodingKey {
            case unitPrice = "UnitPrice"
            case originalPrice = "OriginalPrice"
            case discountPrice = "DiscountPrice"
        }
    }

    /// 描述了实例的计费模式
    public struct InstanceChargePrepaid: TCInputModel {
        /// 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。默认为1。
        /// （InquirePriceRenewDBInstances，RenewDBInstances调用时必填）
        public let period: Int64?

        /// 自动续费标识。取值范围：
        /// NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        /// NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        /// DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费
        ///
        /// 默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        /// （InquirePriceRenewDBInstances，RenewDBInstances调用时必填）
        public let renewFlag: String?

        public init(period: Int64? = nil, renewFlag: String? = nil) {
            self.period = period
            self.renewFlag = renewFlag
        }

        enum CodingKeys: String, CodingKey {
            case period = "Period"
            case renewFlag = "RenewFlag"
        }
    }

    /// 实例详情
    public struct InstanceDetail: TCOutputModel {
        /// 实例ID。
        public let instanceId: String

        /// 实例名称。
        public let instanceName: String

        /// 付费类型，可能的返回值：1-包年包月；0-按量计费
        public let payMode: UInt64

        /// 项目ID。
        public let projectId: UInt64

        /// 集群类型，可能的返回值：0-副本集实例，1-分片实例。
        public let clusterType: UInt64

        /// 地域信息。
        public let region: String

        /// 可用区信息。
        public let zone: String

        /// 网络类型，可能的返回值：0-基础网络，1-私有网络
        public let netType: UInt64

        /// 私有网络的ID。
        public let vpcId: String

        /// 私有网络的子网ID。
        public let subnetId: String

        /// 实例状态，可能的返回值：0-待初始化，1-流程处理中，2-运行中，-2-实例已过期。
        public let status: Int64

        /// 实例IP。
        public let vip: String

        /// 端口号。
        public let vport: UInt64

        /// 实例创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 实例到期时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadLine: Date

        /// 实例版本信息。
        public let mongoVersion: String

        /// 实例内存规格，单位为MB。
        public let memory: UInt64

        /// 实例磁盘规格，单位为MB。
        public let volume: UInt64

        /// 实例CPU核心数。
        public let cpuNum: UInt64

        /// 实例机器类型。
        public let machineType: String

        /// 实例从节点数。
        public let secondaryNum: UInt64

        /// 实例分片数。
        public let replicationSetNum: UInt64

        /// 实例自动续费标志，可能的返回值：0-手动续费，1-自动续费，2-确认不续费。
        public let autoRenewFlag: Int64

        /// 已用容量，单位MB。
        public let usedVolume: UInt64

        /// 维护窗口起始时间。
        public let maintenanceStart: String

        /// 维护窗口结束时间。
        public let maintenanceEnd: String

        /// 分片信息。
        public let replicaSets: [ShardInfo]

        /// 只读实例信息。
        public let readonlyInstances: [DBInstanceInfo]

        /// 灾备实例信息。
        public let standbyInstances: [DBInstanceInfo]

        /// 临时实例信息。
        public let cloneInstances: [DBInstanceInfo]

        /// 关联实例信息，对于正式实例，该字段表示它的临时实例信息；对于临时实例，则表示它的正式实例信息;如果为只读/灾备实例,则表示他的主实例信息。
        public let relatedInstance: DBInstanceInfo

        /// 实例标签信息集合。
        public let tags: [TagInfo]

        /// 实例版本标记。
        public let instanceVer: UInt64

        /// 实例版本标记。
        public let clusterVer: UInt64

        /// 协议信息，可能的返回值：1-mongodb，2-dynamodb。
        public let `protocol`: UInt64

        /// 实例类型，可能的返回值，1-正式实例，2-临时实例，3-只读实例，4-灾备实例
        public let instanceType: UInt64

        /// 实例状态描述
        public let instanceStatusDesc: String

        /// 实例对应的物理实例id，回档并替换过的实例有不同的InstanceId和RealInstanceId，从barad获取监控数据等场景下需要用物理id获取
        public let realInstanceId: String

        /// mongos节点个数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mongosNodeNum: UInt64?

        /// mongos节点内存。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mongosMemory: UInt64?

        /// mongos节点CPU核数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mongosCpuNum: UInt64?

        /// Config Server节点个数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let configServerNodeNum: UInt64?

        /// Config Server节点内存。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let configServerMemory: UInt64?

        /// Config Server节点磁盘大小。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let configServerVolume: UInt64?

        /// Config Server节点CPU核数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let configServerCpuNum: UInt64?

        /// readonly节点个数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let readonlyNodeNum: UInt64?

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case payMode = "PayMode"
            case projectId = "ProjectId"
            case clusterType = "ClusterType"
            case region = "Region"
            case zone = "Zone"
            case netType = "NetType"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case status = "Status"
            case vip = "Vip"
            case vport = "Vport"
            case createTime = "CreateTime"
            case deadLine = "DeadLine"
            case mongoVersion = "MongoVersion"
            case memory = "Memory"
            case volume = "Volume"
            case cpuNum = "CpuNum"
            case machineType = "MachineType"
            case secondaryNum = "SecondaryNum"
            case replicationSetNum = "ReplicationSetNum"
            case autoRenewFlag = "AutoRenewFlag"
            case usedVolume = "UsedVolume"
            case maintenanceStart = "MaintenanceStart"
            case maintenanceEnd = "MaintenanceEnd"
            case replicaSets = "ReplicaSets"
            case readonlyInstances = "ReadonlyInstances"
            case standbyInstances = "StandbyInstances"
            case cloneInstances = "CloneInstances"
            case relatedInstance = "RelatedInstance"
            case tags = "Tags"
            case instanceVer = "InstanceVer"
            case clusterVer = "ClusterVer"
            case `protocol` = "Protocol"
            case instanceType = "InstanceType"
            case instanceStatusDesc = "InstanceStatusDesc"
            case realInstanceId = "RealInstanceId"
            case mongosNodeNum = "MongosNodeNum"
            case mongosMemory = "MongosMemory"
            case mongosCpuNum = "MongosCpuNum"
            case configServerNodeNum = "ConfigServerNodeNum"
            case configServerMemory = "ConfigServerMemory"
            case configServerVolume = "ConfigServerVolume"
            case configServerCpuNum = "ConfigServerCpuNum"
            case readonlyNodeNum = "ReadonlyNodeNum"
        }
    }

    /// 实例可修改参数枚举类型集合。
    public struct InstanceEnumParam: TCOutputModel {
        /// 参数当前值
        public let currentValue: String

        /// 默认值
        public let defaultValue: String

        /// 枚举值，所有支持的值
        public let enumValue: [String]

        /// 是否需要重启生效 1:需要重启后生效；0：无需重启，设置成功即可生效；
        public let needRestart: String

        /// 参数名称
        public let paramName: String

        /// 中英文说明
        public let tips: [String]

        /// 参数值类型说明
        public let valueType: String

        /// 是否为运行中参数值 1:运行中参数值；0：非运行中参数值；
        public let status: UInt64

        enum CodingKeys: String, CodingKey {
            case currentValue = "CurrentValue"
            case defaultValue = "DefaultValue"
            case enumValue = "EnumValue"
            case needRestart = "NeedRestart"
            case paramName = "ParamName"
            case tips = "Tips"
            case valueType = "ValueType"
            case status = "Status"
        }
    }

    /// 实例可修改参数integer类型集合。
    public struct InstanceIntegerParam: TCOutputModel {
        /// 当前值
        public let currentValue: String

        /// 默认值
        public let defaultValue: String

        /// 最大值
        public let max: String

        /// 最小值
        public let min: String

        /// 是否需要重启生效 1:需要重启后生效；0：无需重启，设置成功即可生效；
        public let needRestart: String

        /// 参数名称
        public let paramName: String

        /// 参数说明
        public let tips: [String]

        /// 参数类型
        public let valueType: String

        /// 是否为运行中参数值 1:运行中参数值；0：非运行中参数值；
        public let status: UInt64

        /// 冗余字段，可忽略
        public let unit: String

        enum CodingKeys: String, CodingKey {
            case currentValue = "CurrentValue"
            case defaultValue = "DefaultValue"
            case max = "Max"
            case min = "Min"
            case needRestart = "NeedRestart"
            case paramName = "ParamName"
            case tips = "Tips"
            case valueType = "ValueType"
            case status = "Status"
            case unit = "Unit"
        }
    }

    /// 实例可修改参数Multi类型集合。
    public struct InstanceMultiParam: TCOutputModel {
        /// 当前值
        public let currentValue: String

        /// 默认值
        public let defaultValue: String

        /// 指导值范围
        public let enumValue: [String]

        /// 是否需要重启生效 1:需要重启后生效；0：无需重启，设置成功即可生效；
        public let needRestart: String

        /// 参数名称
        public let paramName: String

        /// 是否为运行中参数值 1:运行中参数值；0：非运行中参数值；
        public let status: UInt64

        /// 参数说明
        public let tips: [String]

        /// 当前值的类型描述，默认为multi
        public let valueType: String

        enum CodingKeys: String, CodingKey {
            case currentValue = "CurrentValue"
            case defaultValue = "DefaultValue"
            case enumValue = "EnumValue"
            case needRestart = "NeedRestart"
            case paramName = "ParamName"
            case status = "Status"
            case tips = "Tips"
            case valueType = "ValueType"
        }
    }

    /// 实例可修改参数text类型集合。
    public struct InstanceTextParam: TCOutputModel {
        /// 当前值
        public let currentValue: String

        /// 默认值
        public let defaultValue: String

        /// 是否需要重启
        public let needRestart: String

        /// 参数名称
        public let paramName: String

        /// text类型值
        public let textValue: String

        /// 参数说明
        public let tips: [String]

        /// 值类型说明
        public let valueType: String

        /// 是否为运行中参数值 1:运行中参数值；0：非运行中参数值；
        public let status: String

        enum CodingKeys: String, CodingKey {
            case currentValue = "CurrentValue"
            case defaultValue = "DefaultValue"
            case needRestart = "NeedRestart"
            case paramName = "ParamName"
            case textValue = "TextValue"
            case tips = "Tips"
            case valueType = "ValueType"
            case status = "Status"
        }
    }

    /// 修改数据库地址
    public struct ModifyNetworkAddress: TCInputModel {
        /// 新IP地址。
        public let newIPAddress: String

        /// 原IP地址。
        public let oldIpAddress: String

        public init(newIPAddress: String, oldIpAddress: String) {
            self.newIPAddress = newIPAddress
            self.oldIpAddress = oldIpAddress
        }

        enum CodingKeys: String, CodingKey {
            case newIPAddress = "NewIPAddress"
            case oldIpAddress = "OldIpAddress"
        }
    }

    /// 节点属性
    public struct NodeProperty: TCOutputModel {
        /// 节点所在的可用区。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zone: String?

        /// 节点名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeName: String?

        /// 节点访问地址。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let address: String?

        /// 角色。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let role: String?

        /// 是否为Hidden节点
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hidden: Bool?

        /// 节点状态，包括：ORMAL/STARTUP/RECOVERING/STARTUP2/UNKNOWN/DOWN/ROLLBACK/REMOVED等。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 主从延迟，单位秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let slaveDelay: Int64?

        /// 节点优先级。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let priority: Int64?

        /// 节点投票权。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let votes: Int64?

        /// 节点标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [NodeTag]?

        /// 副本集Id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let replicateSetId: String?

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case nodeName = "NodeName"
            case address = "Address"
            case role = "Role"
            case hidden = "Hidden"
            case status = "Status"
            case slaveDelay = "SlaveDelay"
            case priority = "Priority"
            case votes = "Votes"
            case tags = "Tags"
            case replicateSetId = "ReplicateSetId"
        }
    }

    /// 节点Tag
    public struct NodeTag: TCInputModel, TCOutputModel {
        /// 节点Tag key
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagKey: String?

        /// 节点Tag Value
        /// 注意：此字段可能返回 null，表示取不到有效值。
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

    /// 需要终止的操作
    public struct Operation: TCInputModel {
        /// 操作所在的分片名
        public let replicaSetName: String

        /// 操作所在的节点名
        public let nodeName: String

        /// 操作序号
        public let opId: Int64

        public init(replicaSetName: String, nodeName: String, opId: Int64) {
            self.replicaSetName = replicaSetName
            self.nodeName = nodeName
            self.opId = opId
        }

        enum CodingKeys: String, CodingKey {
            case replicaSetName = "ReplicaSetName"
            case nodeName = "NodeName"
            case opId = "OpId"
        }
    }

    /// 分片信息
    public struct ReplicaSetInfo: TCInputModel {
        /// 副本集ID
        public let replicaSetId: String

        public init(replicaSetId: String) {
            self.replicaSetId = replicaSetId
        }

        enum CodingKeys: String, CodingKey {
            case replicaSetId = "ReplicaSetId"
        }
    }

    /// 副本集信息
    public struct ReplicateSetInfo: TCOutputModel {
        /// 节点属性
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodes: [NodeProperty]?

        enum CodingKeys: String, CodingKey {
            case nodes = "Nodes"
        }
    }

    /// 安全组信息
    public struct SecurityGroup: TCOutputModel {
        /// 所属项目id
        public let projectId: Int64

        /// 创建时间
        public let createTime: String

        /// 入站规则
        public let inbound: [SecurityGroupBound]

        /// 出站规则
        public let outbound: [SecurityGroupBound]

        /// 安全组id
        public let securityGroupId: String

        /// 安全组名称
        public let securityGroupName: String

        /// 安全组备注
        public let securityGroupRemark: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case createTime = "CreateTime"
            case inbound = "Inbound"
            case outbound = "Outbound"
            case securityGroupId = "SecurityGroupId"
            case securityGroupName = "SecurityGroupName"
            case securityGroupRemark = "SecurityGroupRemark"
        }
    }

    /// 安全组规则
    public struct SecurityGroupBound: TCOutputModel {
        /// 执行规则。ACCEPT或DROP
        public let action: String

        /// ip段。
        public let cidrIp: String

        /// 端口范围
        public let portRange: String

        /// 传输层协议。tcp，udp或ALL
        public let ipProtocol: String

        /// 安全组id代表的地址集合
        public let id: String

        /// 地址组id代表的地址集合
        public let addressModule: String

        /// 服务组id代表的协议和端口集合
        public let serviceModule: String

        /// 描述
        public let desc: String

        enum CodingKeys: String, CodingKey {
            case action = "Action"
            case cidrIp = "CidrIp"
            case portRange = "PortRange"
            case ipProtocol = "IpProtocol"
            case id = "Id"
            case addressModule = "AddressModule"
            case serviceModule = "ServiceModule"
            case desc = "Desc"
        }
    }

    /// 实例分片详情
    public struct ShardInfo: TCOutputModel {
        /// 分片已使用容量
        public let usedVolume: Float

        /// 分片ID
        public let replicaSetId: String

        /// 分片名
        public let replicaSetName: String

        /// 分片内存规格，单位为MB
        public let memory: UInt64

        /// 分片磁盘规格，单位为MB
        public let volume: UInt64

        /// 分片Oplog大小，单位为MB
        public let oplogSize: UInt64

        /// 分片从节点数
        public let secondaryNum: UInt64

        /// 分片物理id
        public let realReplicaSetId: String

        enum CodingKeys: String, CodingKey {
            case usedVolume = "UsedVolume"
            case replicaSetId = "ReplicaSetId"
            case replicaSetName = "ReplicaSetName"
            case memory = "Memory"
            case volume = "Volume"
            case oplogSize = "OplogSize"
            case secondaryNum = "SecondaryNum"
            case realReplicaSetId = "RealReplicaSetId"
        }
    }

    /// 用于描述MongoDB数据库慢日志统计信息
    public struct SlowLogPattern: TCOutputModel {
        /// 慢日志模式
        public let pattern: String

        /// 最大执行时间
        public let maxTime: UInt64

        /// 平均执行时间
        public let averageTime: UInt64

        /// 该模式慢日志条数
        public let total: UInt64

        enum CodingKeys: String, CodingKey {
            case pattern = "Pattern"
            case maxTime = "MaxTime"
            case averageTime = "AverageTime"
            case total = "Total"
        }
    }

    /// mongodb售卖规格
    public struct SpecItem: TCOutputModel {
        /// 规格信息标识
        public let specCode: String

        /// 规格有效标志，取值：0-停止售卖，1-开放售卖
        public let status: UInt64

        /// 计算资源规格，单位为CPU核心数
        public let cpu: UInt64

        /// 内存规格，单位为MB
        public let memory: UInt64

        /// 默认磁盘规格，单位MB
        public let defaultStorage: UInt64

        /// 最大磁盘规格，单位MB
        public let maxStorage: UInt64

        /// 最小磁盘规格，单位MB
        public let minStorage: UInt64

        /// 可承载qps信息
        public let qps: UInt64

        /// 连接数限制
        public let conns: UInt64

        /// 实例mongodb版本信息
        public let mongoVersionCode: String

        /// 实例mongodb版本号
        public let mongoVersionValue: UInt64

        /// 实例mongodb版本号（短）
        public let version: String

        /// 存储引擎
        public let engineName: String

        /// 集群类型，取值：1-分片集群，0-副本集集群
        public let clusterType: UInt64

        /// 最小副本集从节点数
        public let minNodeNum: UInt64

        /// 最大副本集从节点数
        public let maxNodeNum: UInt64

        /// 最小分片数
        public let minReplicateSetNum: UInt64

        /// 最大分片数
        public let maxReplicateSetNum: UInt64

        /// 最小分片从节点数
        public let minReplicateSetNodeNum: UInt64

        /// 最大分片从节点数
        public let maxReplicateSetNodeNum: UInt64

        /// 机器类型，取值：0-HIO，4-HIO10G
        public let machineType: String

        enum CodingKeys: String, CodingKey {
            case specCode = "SpecCode"
            case status = "Status"
            case cpu = "Cpu"
            case memory = "Memory"
            case defaultStorage = "DefaultStorage"
            case maxStorage = "MaxStorage"
            case minStorage = "MinStorage"
            case qps = "Qps"
            case conns = "Conns"
            case mongoVersionCode = "MongoVersionCode"
            case mongoVersionValue = "MongoVersionValue"
            case version = "Version"
            case engineName = "EngineName"
            case clusterType = "ClusterType"
            case minNodeNum = "MinNodeNum"
            case maxNodeNum = "MaxNodeNum"
            case minReplicateSetNum = "MinReplicateSetNum"
            case maxReplicateSetNum = "MaxReplicateSetNum"
            case minReplicateSetNodeNum = "MinReplicateSetNodeNum"
            case maxReplicateSetNodeNum = "MaxReplicateSetNodeNum"
            case machineType = "MachineType"
        }
    }

    /// 实例规格信息
    public struct SpecificationInfo: TCOutputModel {
        /// 地域信息
        public let region: String

        /// 可用区信息
        public let zone: String

        /// 售卖规格信息
        public let specItems: [SpecItem]

        /// 是否支持跨可用区部署 1-支持，0-不支持
        public let supportMultiAZ: Int64

        enum CodingKeys: String, CodingKey {
            case region = "Region"
            case zone = "Zone"
            case specItems = "SpecItems"
            case supportMultiAZ = "SupportMultiAZ"
        }
    }

    /// 实例标签信息
    public struct TagInfo: TCInputModel, TCOutputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
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

    /// 账户基本信息
    public struct UserInfo: TCOutputModel {
        /// 账号名。
        public let userName: String

        /// 账号权限详情。
        public let authRole: [Auth]

        /// 账号创建时间。
        public let createTime: String

        /// 账号更新时间。
        public let updateTime: String

        /// 备注信息。
        public let userDesc: String

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case authRole = "AuthRole"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case userDesc = "UserDesc"
        }
    }
}
