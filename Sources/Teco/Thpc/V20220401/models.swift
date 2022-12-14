//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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

extension Thpc {
    /// 描述CFS文件系统版本和挂载信息
    public struct CFSOption: TCInputModel {
        /// 文件系统本地挂载路径
        public let localPath: String
        
        /// 文件系统远程挂载ip及路径
        public let remotePath: String
        
        /// 文件系统协议类型，默认值NFS 3.0。
        /// <li>NFS 3.0。
        /// <li>NFS 4.0。
        /// <li>TURBO。
        public let `protocol`: String?
        
        /// 文件系统存储类型，默认值SD；其中 SD 为通用标准型标准型存储， HP为通用性能型存储， TB为turbo标准型， TP 为turbo性能型。
        public let storageType: String?
        
        public init (localPath: String, remotePath: String, protocol: String? = nil, storageType: String? = nil) {
            self.localPath = localPath
            self.remotePath = remotePath
            self.`protocol` = `protocol`
            self.storageType = storageType
        }
        
        enum CodingKeys: String, CodingKey {
            case localPath = "LocalPath"
            case remotePath = "RemotePath"
            case `protocol` = "Protocol"
            case storageType = "StorageType"
        }
    }
    
    /// 符合条件的集群活动信息。
    public struct ClusterActivity: TCOutputModel {
        /// 集群ID。
        public let clusterId: String
        
        /// 集群活动ID。
        public let activityId: String
        
        /// 集群活动类型。
        public let activityType: String
        
        /// 集群活动状态。取值范围：<br><li>PENDING：等待运行<br><li>RUNNING：运行中<br><li>SUCCESSFUL：活动成功<br><li>PARTIALLY_SUCCESSFUL：活动部分成功<br><li>FAILED：活动失败
        public let activityStatus: String
        
        /// 集群活动状态码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityStatusCode: String?
        
        /// 集群活动结果详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultDetail: String?
        
        /// 集群活动起因。
        public let cause: String
        
        /// 集群活动描述。
        public let description: String
        
        /// 集群活动相关节点活动集合。
        public let relatedNodeActivitySet: [NodeActivity]
        
        /// 集群活动开始时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var startTime: Date?
        
        /// 集群活动结束时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var endTime: Date?
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case activityId = "ActivityId"
            case activityType = "ActivityType"
            case activityStatus = "ActivityStatus"
            case activityStatusCode = "ActivityStatusCode"
            case resultDetail = "ResultDetail"
            case cause = "Cause"
            case description = "Description"
            case relatedNodeActivitySet = "RelatedNodeActivitySet"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// 集群概览信息。
    public struct ClusterOverview: TCOutputModel {
        /// 集群ID。
        public let clusterId: String
        
        /// 集群状态。取值范围：<br><li>PENDING：创建中<br><li>INITING：初始化中<br><li>INIT_FAILED：初始化失败<br><li>RUNNING：运行中<br><li>TERMINATING：销毁中
        public let clusterStatus: String
        
        /// 集群名称。
        public let clusterName: String
        
        /// 集群位置信息。
        public let placement: Placement
        
        /// 集群创建时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var createTime: Date
        
        /// 集群调度器。
        public let schedulerType: String
        
        /// 计算节点数量。
        public let computeNodeCount: Int64
        
        /// 计算节点概览。
        public let computeNodeSet: [ComputeNodeOverview]
        
        /// 管控节点数量。
        public let managerNodeCount: Int64
        
        /// 管控节点概览。
        public let managerNodeSet: [ManagerNodeOverview]
        
        /// 登录节点概览。
        public let loginNodeSet: [LoginNodeOverview]
        
        /// 登录节点数量。
        public let loginNodeCount: Int64
        
        /// 集群所属私有网络ID。
        public let vpcId: String
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case clusterStatus = "ClusterStatus"
            case clusterName = "ClusterName"
            case placement = "Placement"
            case createTime = "CreateTime"
            case schedulerType = "SchedulerType"
            case computeNodeCount = "ComputeNodeCount"
            case computeNodeSet = "ComputeNodeSet"
            case managerNodeCount = "ManagerNodeCount"
            case managerNodeSet = "ManagerNodeSet"
            case loginNodeSet = "LoginNodeSet"
            case loginNodeCount = "LoginNodeCount"
            case vpcId = "VpcId"
        }
    }
    
    /// 计算节点信息。
    public struct ComputeNode: TCInputModel {
        /// 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        public let instanceChargeType: String?
        
        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?
        
        /// 节点机型。不同实例机型指定了不同的资源规格。
        /// <br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        public let instanceType: String?
        
        /// 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        public let systemDisk: SystemDisk?
        
        /// 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        public let dataDisks: [DataDisk]?
        
        /// 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        public let internetAccessible: InternetAccessible?
        
        /// 节点显示名称。<br><li>
        /// 不指定节点显示名称则默认显示‘未命名’。
        /// 最多支持60个字符。
        public let instanceName: String?
        
        public init (instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceType: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, internetAccessible: InternetAccessible? = nil, instanceName: String? = nil) {
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.instanceType = instanceType
            self.systemDisk = systemDisk
            self.dataDisks = dataDisks
            self.internetAccessible = internetAccessible
            self.instanceName = instanceName
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case instanceType = "InstanceType"
            case systemDisk = "SystemDisk"
            case dataDisks = "DataDisks"
            case internetAccessible = "InternetAccessible"
            case instanceName = "InstanceName"
        }
    }
    
    /// 计算节点概览。
    public struct ComputeNodeOverview: TCOutputModel {
        /// 计算节点ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeId: String?
        
        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
        }
    }
    
    /// 描述了数据盘的信息
    public struct DataDisk: TCInputModel {
        /// 数据盘大小，单位：GB。最小调整步长为10G，不同数据盘类型取值范围不同，具体限制详见：[存储概述](https://cloud.tencent.com/document/product/213/4952)。默认值为0，表示不购买数据盘。更多限制详见产品文档。
        public let diskSize: Int64
        
        /// 数据盘类型。数据盘类型限制详见[存储概述](https://cloud.tencent.com/document/product/213/4952)。取值范围：<br><li>LOCAL_BASIC：本地硬盘<br><li>LOCAL_SSD：本地SSD硬盘<br><li>LOCAL_NVME：本地NVME硬盘，与InstanceType强相关，不支持指定<br><li>LOCAL_PRO：本地HDD硬盘，与InstanceType强相关，不支持指定<br><li>CLOUD_BASIC：普通云硬盘<br><li>CLOUD_PREMIUM：高性能云硬盘<br><li>CLOUD_SSD：SSD云硬盘<br><li>CLOUD_HSSD：增强型SSD云硬盘<br><li>CLOUD_TSSD：极速型SSD云硬盘<br><br>默认取值：LOCAL_BASIC。
        public let diskType: String?
        
        public init (diskSize: Int64, diskType: String? = nil) {
            self.diskSize = diskSize
            self.diskType = diskType
        }
        
        enum CodingKeys: String, CodingKey {
            case diskSize = "DiskSize"
            case diskType = "DiskType"
        }
    }
    
    /// 弹性扩容节点配置信息。
    public struct ExpansionNodeConfig: TCInputModel {
        /// 扩容实例所在的位置。
        public let placement: Placement
        
        /// 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        public let instanceChargeType: String?
        
        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?
        
        /// 节点机型。不同实例机型指定了不同的资源规格。
        /// <br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        public let instanceType: String?
        
        /// 私有网络相关信息配置。
        public let virtualPrivateCloud: VirtualPrivateCloud?
        
        public init (placement: Placement, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceType: String? = nil, virtualPrivateCloud: VirtualPrivateCloud? = nil) {
            self.placement = placement
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.instanceType = instanceType
            self.virtualPrivateCloud = virtualPrivateCloud
        }
        
        enum CodingKeys: String, CodingKey {
            case placement = "Placement"
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case instanceType = "InstanceType"
            case virtualPrivateCloud = "VirtualPrivateCloud"
        }
    }
    
    /// 描述GooseFS挂载信息
    public struct GooseFSOption: TCInputModel {
        /// 文件系统本地挂载路径
        public let localPath: String
        
        /// 文件系统远程挂载路径
        public let remotePath: String
        
        /// 文件系统master的ip和端口
        public let masters: [String]
        
        public init (localPath: String, remotePath: String, masters: [String]) {
            self.localPath = localPath
            self.remotePath = remotePath
            self.masters = masters
        }
        
        enum CodingKeys: String, CodingKey {
            case localPath = "LocalPath"
            case remotePath = "RemotePath"
            case masters = "Masters"
        }
    }
    
    /// 描述了实例的计费模式
    public struct InstanceChargePrepaid: TCInputModel {
        /// 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36, 48, 60。
        public let period: Int64
        
        /// 自动续费标识。取值范围：
        /// NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        /// NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        /// DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费
        /// 默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        public let renewFlag: String?
        
        public init (period: Int64, renewFlag: String? = nil) {
            self.period = period
            self.renewFlag = renewFlag
        }
        
        enum CodingKeys: String, CodingKey {
            case period = "Period"
            case renewFlag = "RenewFlag"
        }
    }
    
    /// 描述了实例的公网可访问性，声明了实例的公网使用计费模式，最大带宽等
    public struct InternetAccessible: TCInputModel {
        /// 网络计费类型。取值范围：
        /// BANDWIDTH_PREPAID：预付费按带宽结算
        /// TRAFFIC_POSTPAID_BY_HOUR：流量按小时后付费
        /// BANDWIDTH_POSTPAID_BY_HOUR：带宽按小时后付费
        /// BANDWIDTH_PACKAGE：带宽包用户
        /// 默认取值：非带宽包用户默认与子机付费类型保持一致。
        public let internetChargeType: String?
        
        /// 公网出带宽上限，单位：Mbps。默认值：0Mbps。不同机型带宽上限范围不一致，具体限制详见购买网络带宽。
        public let internetMaxBandwidthOut: Int64?
        
        public init (internetChargeType: String? = nil, internetMaxBandwidthOut: Int64? = nil) {
            self.internetChargeType = internetChargeType
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
        }
        
        enum CodingKeys: String, CodingKey {
            case internetChargeType = "InternetChargeType"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
        }
    }
    
    /// 登录节点信息。
    public struct LoginNode: TCInputModel {
        /// 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br>默认值：POSTPAID_BY_HOUR。
        public let instanceChargeType: String?
        
        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?
        
        /// 节点机型。不同实例机型指定了不同的资源规格。
        /// <br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        public let instanceType: String?
        
        /// 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        public let systemDisk: [SystemDisk]?
        
        /// 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        public let dataDisks: [DataDisk]?
        
        /// 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        public let internetAccessible: [InternetAccessible]?
        
        /// 节点显示名称。<br><li>
        /// 不指定节点显示名称则默认显示‘未命名’。
        /// 最多支持60个字符。
        public let instanceName: String?
        
        public init (instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceType: String? = nil, systemDisk: [SystemDisk]? = nil, dataDisks: [DataDisk]? = nil, internetAccessible: [InternetAccessible]? = nil, instanceName: String? = nil) {
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.instanceType = instanceType
            self.systemDisk = systemDisk
            self.dataDisks = dataDisks
            self.internetAccessible = internetAccessible
            self.instanceName = instanceName
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case instanceType = "InstanceType"
            case systemDisk = "SystemDisk"
            case dataDisks = "DataDisks"
            case internetAccessible = "InternetAccessible"
            case instanceName = "InstanceName"
        }
    }
    
    /// 登录节点概览。
    public struct LoginNodeOverview: TCOutputModel {
        /// 登录节点ID。
        public let nodeId: String
        
        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
        }
    }
    
    /// 描述了实例登录相关配置与信息。
    public struct LoginSettings: TCInputModel {
        /// 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：<br><li>Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) \` ~ ! @ # $ % ^ & *  - + = | { } [ ] : ; ' , . ? / ]中的特殊符号。<br><li>Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) \` ~ ! @ # $ % ^ & * - + = | { } [ ] : ; ' , . ? /]中的特殊符号。<br><br>若不指定该参数，则由系统随机生成密码，并通过站内信方式通知到用户。
        public let password: String?
        
        public init (password: String? = nil) {
            self.password = password
        }
        
        enum CodingKeys: String, CodingKey {
            case password = "Password"
        }
    }
    
    /// 管控节点信息
    public struct ManagerNode: TCInputModel {
        /// 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br>默认值：POSTPAID_BY_HOUR。
        public let instanceChargeType: String?
        
        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?
        
        /// 节点机型。不同实例机型指定了不同的资源规格。
        /// <br><li>对于付费模式为PREPAID或POSTPAID\_BY\_HOUR的实例创建，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        public let instanceType: String?
        
        /// 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        public let systemDisk: SystemDisk?
        
        /// 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        public let dataDisks: [DataDisk]?
        
        /// 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        public let internetAccessible: InternetAccessible?
        
        /// 节点显示名称。<br><li>
        /// 不指定节点显示名称则默认显示‘未命名’。
        /// </li><li>购买多个节点，如果指定模式串`{R:x}`，表示生成数字[`[x, x+n-1]`，其中`n`表示购买节点的数量，例如`server_{R:3}`，购买1个时，节点显示名称为`server_3`；购买2个时，节点显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。
        /// 购买多个节点，如果不指定模式串，则在节点显示名称添加后缀`1、2...n`，其中`n`表示购买节点的数量，例如`server_`，购买2个时，节点显示名称分别为`server_1`，`server_2`。</li><li>
        /// 最多支持60个字符（包含模式串）。
        public let instanceName: String?
        
        public init (instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceType: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, internetAccessible: InternetAccessible? = nil, instanceName: String? = nil) {
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.instanceType = instanceType
            self.systemDisk = systemDisk
            self.dataDisks = dataDisks
            self.internetAccessible = internetAccessible
            self.instanceName = instanceName
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case instanceType = "InstanceType"
            case systemDisk = "SystemDisk"
            case dataDisks = "DataDisks"
            case internetAccessible = "InternetAccessible"
            case instanceName = "InstanceName"
        }
    }
    
    /// 管控节点概览。
    public struct ManagerNodeOverview: TCOutputModel {
        /// 管控节点ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeId: String?
        
        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
        }
    }
    
    /// 节点活动信息。
    public struct NodeActivity: TCOutputModel {
        /// 节点活动所在的实例ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeInstanceId: String?
        
        /// 节点活动状态。取值范围：<br><li>RUNNING：运行中<br><li>SUCCESSFUL：活动成功<br><li>FAILED：活动失败
        public let nodeActivityStatus: String
        
        /// 节点活动状态码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeActivityStatusCode: String?
        
        /// 节点活动状态原因。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeActivityStatusReason: String?
        
        enum CodingKeys: String, CodingKey {
            case nodeInstanceId = "NodeInstanceId"
            case nodeActivityStatus = "NodeActivityStatus"
            case nodeActivityStatusCode = "NodeActivityStatusCode"
            case nodeActivityStatusReason = "NodeActivityStatusReason"
        }
    }
    
    /// 描述了实例的抽象位置
    public struct Placement: TCInputModel {
        /// 实例所属的可用区名称。该参数可以通过调用  [DescribeZones](https://cloud.tencent.com/document/product/213/15707) 的返回值中的Zone字段来获取。
        public let zone: String
        
        public init (zone: String) {
            self.zone = zone
        }
        
        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
        }
    }
    
    /// 扩容队列配置。
    public struct QueueConfig: TCInputModel {
        /// 队列名称。
        public let queueName: String
        
        /// 队列中弹性节点数量最小值。取值范围0～200。
        public let minSize: UInt64?
        
        /// 队列中弹性节点数量最大值。取值范围0～200。
        public let maxSize: UInt64?
        
        /// 是否开启自动扩容。
        public let enableAutoExpansion: Bool?
        
        /// 是否开启自动缩容。
        public let enableAutoShrink: Bool?
        
        /// 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。目前仅支持公有镜和特定自定义镜像。
        public let imageId: String?
        
        /// 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        public let systemDisk: SystemDisk?
        
        /// 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        public let dataDisks: [DataDisk]?
        
        /// 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        public let internetAccessible: InternetAccessible?
        
        /// 扩容节点配置信息。
        public let expansionNodeConfigs: [ExpansionNodeConfig]?
        
        public init (queueName: String, minSize: UInt64? = nil, maxSize: UInt64? = nil, enableAutoExpansion: Bool? = nil, enableAutoShrink: Bool? = nil, imageId: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, internetAccessible: InternetAccessible? = nil, expansionNodeConfigs: [ExpansionNodeConfig]? = nil) {
            self.queueName = queueName
            self.minSize = minSize
            self.maxSize = maxSize
            self.enableAutoExpansion = enableAutoExpansion
            self.enableAutoShrink = enableAutoShrink
            self.imageId = imageId
            self.systemDisk = systemDisk
            self.dataDisks = dataDisks
            self.internetAccessible = internetAccessible
            self.expansionNodeConfigs = expansionNodeConfigs
        }
        
        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
            case minSize = "MinSize"
            case maxSize = "MaxSize"
            case enableAutoExpansion = "EnableAutoExpansion"
            case enableAutoShrink = "EnableAutoShrink"
            case imageId = "ImageId"
            case systemDisk = "SystemDisk"
            case dataDisks = "DataDisks"
            case internetAccessible = "InternetAccessible"
            case expansionNodeConfigs = "ExpansionNodeConfigs"
        }
    }
    
    /// 描述集群文件系统选项
    public struct StorageOption: TCInputModel {
        /// 集群挂载CFS文件系统选项
        public let cfsOptions: [CFSOption]?
        
        /// 集群挂在GooseFS文件系统选项
        public let gooseFSOptions: [GooseFSOption]?
        
        public init (cfsOptions: [CFSOption]? = nil, gooseFSOptions: [GooseFSOption]? = nil) {
            self.cfsOptions = cfsOptions
            self.gooseFSOptions = gooseFSOptions
        }
        
        enum CodingKeys: String, CodingKey {
            case cfsOptions = "CFSOptions"
            case gooseFSOptions = "GooseFSOptions"
        }
    }
    
    /// 描述了操作系统所在块设备即系统盘的信息
    public struct SystemDisk: TCInputModel {
        /// 系统盘类型。系统盘类型限制详见存储概述。取值范围：
        /// LOCAL_BASIC：本地硬盘
        /// LOCAL_SSD：本地SSD硬盘
        /// CLOUD_BASIC：普通云硬盘
        /// CLOUD_SSD：SSD云硬盘
        /// CLOUD_PREMIUM：高性能云硬盘
        /// 默认取值：当前有库存的硬盘类型。
        public let diskType: String?
        
        /// 系统盘大小，单位：GB。默认值为 50
        public let diskSize: Int64?
        
        public init (diskType: String? = nil, diskSize: Int64? = nil) {
            self.diskType = diskType
            self.diskSize = diskSize
        }
        
        enum CodingKeys: String, CodingKey {
            case diskType = "DiskType"
            case diskSize = "DiskSize"
        }
    }
    
    /// 标签键值对。
    public struct Tag: TCInputModel {
        /// 标签键
        public let key: String
        
        /// 标签值
        public let value: String
        
        public init (key: String, value: String) {
            self.key = key
            self.value = value
        }
        
        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }
    
    /// 描述了VPC相关信息
    public struct VirtualPrivateCloud: TCInputModel {
        /// 私有网络ID，形如`vpc-xxx`。有效的VpcId可通过登录[控制台](https://console.cloud.tencent.com/vpc/vpc?rid=1)查询；也可以调用接口 [DescribeVpcEx](/document/api/215/1372) ，从接口返回中的`unVpcId`字段获取。若在创建子机时VpcId与SubnetId同时传入`DEFAULT`，则强制使用默认vpc网络。
        public let vpcId: String
        
        /// 私有网络子网ID，形如`subnet-xxx`。有效的私有网络子网ID可通过登录[控制台](https://console.cloud.tencent.com/vpc/subnet?rid=1)查询；也可以调用接口  [DescribeSubnets](/document/api/215/15784) ，从接口返回中的`unSubnetId`字段获取。若在创建子机时SubnetId与VpcId同时传入`DEFAULT`，则强制使用默认vpc网络。
        public let subnetId: String
        
        public init (vpcId: String, subnetId: String) {
            self.vpcId = vpcId
            self.subnetId = subnetId
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
        }
    }
}
