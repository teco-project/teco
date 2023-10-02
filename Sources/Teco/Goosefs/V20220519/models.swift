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

extension Goosefs {
    /// 客户侧集群管理节点信息
    public struct ClientClusterManagerNodeInfo: TCOutputModel {
        /// 客户端节点IP
        public let nodeIp: String

        /// 节点Instance Id
        public let nodeInstanceId: String

        /// 初始密码
        public let initialPassword: String

        enum CodingKeys: String, CodingKey {
            case nodeIp = "NodeIp"
            case nodeInstanceId = "NodeInstanceId"
            case initialPassword = "InitialPassword"
        }
    }

    /// 客户端节点属性
    public struct ClientNodeAttribute: TCOutputModel {
        /// 客户端节点IP
        public let clientNodeIp: String

        /// 客户端节点服务状态, Active(运行中), Adding(添加中), Destroying(销毁中), Down(已停止)
        public let status: String

        /// 客户端节点类型，extend(扩展节点)，manager(管理节点)
        public let clientType: String

        enum CodingKeys: String, CodingKey {
            case clientNodeIp = "ClientNodeIp"
            case status = "Status"
            case clientType = "ClientType"
        }
    }

    /// 查询Client Token
    public struct ClientToken: TCOutputModel {
        /// 节点 IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeIp: String?

        /// 挂载点
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let localDirectory: String?

        /// 可以访问的 GooseFS 目录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gooseFSDirectory: String?

        /// token
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let token: String?

        enum CodingKeys: String, CodingKey {
            case nodeIp = "NodeIp"
            case localDirectory = "LocalDirectory"
            case gooseFSDirectory = "GooseFSDirectory"
            case token = "Token"
        }
    }

    /// ClusterRole
    public struct ClusterRole: TCOutputModel {
        /// 集群ID
        public let clusterId: String?

        /// 角色名
        public let roleName: String?

        /// 描述
        public let description: String?

        /// 目录列表
        public let directoryList: [String]?

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case roleName = "RoleName"
            case description = "Description"
            case directoryList = "DirectoryList"
        }
    }

    /// 文件系统属性
    public struct FSAttribute: TCOutputModel {
        /// 文件系统类型, 可填goosefs和goosefsx
        public let type: String

        /// 文件系统ID
        public let fileSystemId: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// GooseFSx文件系统属性
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gooseFSxAttribute: GooseFSxAttribute?

        /// 文件系统状态 ACTIVE(运行中), CREATING(创建中), DESTROYING(销毁中), FAIL(创建失败),EXPANDING(扩容中),PROBING(容灾中)
        public let status: String

        /// 文件系统名
        public let name: String

        /// 文件系统备注描述
        public let description: String

        /// vpc ID
        public let vpcId: String

        /// 子网ID
        public let subnetId: String

        /// 子网所在的可用区
        public let zone: String

        /// Tag数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tag: [Tag]?

        /// 更新属性时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifyTime: Date

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case fileSystemId = "FileSystemId"
            case createTime = "CreateTime"
            case gooseFSxAttribute = "GooseFSxAttribute"
            case status = "Status"
            case name = "Name"
            case description = "Description"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case zone = "Zone"
            case tag = "Tag"
            case modifyTime = "ModifyTime"
        }
    }

    /// GooseFSx文件系统的属性
    public struct GooseFSxAttribute: TCOutputModel {
        /// GooseFSx的型号
        public let model: String

        /// 容量单位是GB, 比如4608(4.5TB)
        public let capacity: UInt64

        /// 要关联映射的bucket列表
        public let mappedBucketList: [MappedBucket]

        /// 客户侧管理节点信息
        public let clientManagerNodeList: [ClientClusterManagerNodeInfo]

        enum CodingKeys: String, CodingKey {
            case model = "Model"
            case capacity = "Capacity"
            case mappedBucketList = "MappedBucketList"
            case clientManagerNodeList = "ClientManagerNodeList"
        }
    }

    /// GooseFSx创建时候的属性
    public struct GooseFSxBuildElement: TCInputModel {
        /// GooseFSx的型号
        public let model: String

        /// 容量单位是GB, 比如4608(4.5TB)
        public let capacity: UInt64

        /// 要关联映射的bucket列表
        public let mappedBucketList: [MappedBucket]

        public init(model: String, capacity: UInt64, mappedBucketList: [MappedBucket]) {
            self.model = model
            self.capacity = capacity
            self.mappedBucketList = mappedBucketList
        }

        enum CodingKeys: String, CodingKey {
            case model = "Model"
            case capacity = "Capacity"
            case mappedBucketList = "MappedBucketList"
        }
    }

    /// 添加删除客户端节点列表
    public struct LinuxNodeAttribute: TCInputModel {
        /// cvmId
        public let instanceId: String?

        /// 节点所属vpcid
        public let vpcId: String?

        /// 节点所属子网id
        public let subnetId: String?

        /// linux客户端节点地址
        public let linuxClientNodeIp: String?

        public init(instanceId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, linuxClientNodeIp: String? = nil) {
            self.instanceId = instanceId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.linuxClientNodeIp = linuxClientNodeIp
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case linuxClientNodeIp = "LinuxClientNodeIp"
        }
    }

    /// 关联的对象Bucket, 并将其映射到文件系统某个路径上
    public struct MappedBucket: TCInputModel, TCOutputModel {
        /// 对象存储Bucket名
        public let bucketName: String

        /// 映射到的文件系统路径, 默认为/
        public let fileSystemPath: String

        /// 数据流动的自动策略, 包含加载与沉降。策略可以是多种的组合
        /// 按需加载(OnDemandImport)
        /// 自动加载元数据(AutoImportMeta)
        /// 自动加载数据(AutoImportData)
        /// 周期加载(PeriodImport)
        ///
        /// 周期沉降(PeriodExport)
        /// 立即沉降(ImmediateExport)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataRepositoryTaskAutoStrategy: [String]?

        /// 绑定bucket的数据流动策略ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleId: String?

        /// 规则备注与描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleDescription: String?

        /// 桶关联状态 0：关联中 1：关联完成
        public let status: UInt64?

        /// 是否使用全球加速域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accelerateFlag: Bool?

        /// 桶所在的园区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bucketRegion: String?

        public init(bucketName: String, fileSystemPath: String, dataRepositoryTaskAutoStrategy: [String]? = nil, ruleId: String? = nil, ruleDescription: String? = nil, status: UInt64? = nil, accelerateFlag: Bool? = nil, bucketRegion: String? = nil) {
            self.bucketName = bucketName
            self.fileSystemPath = fileSystemPath
            self.dataRepositoryTaskAutoStrategy = dataRepositoryTaskAutoStrategy
            self.ruleId = ruleId
            self.ruleDescription = ruleDescription
            self.status = status
            self.accelerateFlag = accelerateFlag
            self.bucketRegion = bucketRegion
        }

        enum CodingKeys: String, CodingKey {
            case bucketName = "BucketName"
            case fileSystemPath = "FileSystemPath"
            case dataRepositoryTaskAutoStrategy = "DataRepositoryTaskAutoStrategy"
            case ruleId = "RuleId"
            case ruleDescription = "RuleDescription"
            case status = "Status"
            case accelerateFlag = "AccelerateFlag"
            case bucketRegion = "BucketRegion"
        }
    }

    /// 角色凭证
    public struct RoleToken: TCOutputModel {
        /// 角色名
        public let roleName: String?

        /// 用于goosefs client/sdk等
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let token: String?

        enum CodingKeys: String, CodingKey {
            case roleName = "RoleName"
            case token = "Token"
        }
    }

    /// vpc子网信息
    public struct SubnetInfo: TCInputModel, TCOutputModel {
        /// vpc id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcId: String?

        /// 子网ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnetId: String?

        public init(vpcId: String, subnetId: String? = nil) {
            self.vpcId = vpcId
            self.subnetId = subnetId
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
        }
    }

    /// 文件系统关联的标签
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签键
        public let key: String

        /// 标签值
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
}
