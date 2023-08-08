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

extension Chdfs {
    /// 权限组
    public struct AccessGroup: TCOutputModel {
        /// 权限组ID
        public let accessGroupId: String

        /// 权限组名称
        public let accessGroupName: String

        /// 权限组描述
        public let description: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// VPC网络类型（1：CVM；2：黑石1.0）
        public let vpcType: UInt64

        /// VPC网络ID
        public let vpcId: String

        enum CodingKeys: String, CodingKey {
            case accessGroupId = "AccessGroupId"
            case accessGroupName = "AccessGroupName"
            case description = "Description"
            case createTime = "CreateTime"
            case vpcType = "VpcType"
            case vpcId = "VpcId"
        }
    }

    /// 权限规则
    public struct AccessRule: TCInputModel, TCOutputModel {
        /// 权限规则ID
        public let accessRuleId: UInt64?

        /// 权限规则地址（网段或IP）
        public let address: String?

        /// 权限规则访问模式（1：只读；2：读写）
        public let accessMode: UInt64?

        /// 优先级（取值范围1~100，值越小优先级越高）
        public let priority: UInt64?

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date?

        public init(accessRuleId: UInt64? = nil, address: String? = nil, accessMode: UInt64? = nil, priority: UInt64? = nil, createTime: Date? = nil) {
            self.accessRuleId = accessRuleId
            self.address = address
            self.accessMode = accessMode
            self.priority = priority
            self._createTime = .init(wrappedValue: createTime)
        }

        enum CodingKeys: String, CodingKey {
            case accessRuleId = "AccessRuleId"
            case address = "Address"
            case accessMode = "AccessMode"
            case priority = "Priority"
            case createTime = "CreateTime"
        }
    }

    /// 文件系统
    public struct FileSystem: TCOutputModel {
        /// 资源所属用户AppId
        public let appId: UInt64

        /// 文件系统名称
        public let fileSystemName: String

        /// 文件系统描述
        public let description: String

        /// 地域
        public let region: String

        /// 文件系统ID
        public let fileSystemId: String

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 文件系统块大小（byte）
        public let blockSize: UInt64

        /// 文件系统容量（byte）
        public let capacityQuota: UInt64

        /// 文件系统状态（1：创建中；2：创建成功；3：创建失败）
        public let status: UInt64

        /// 超级用户名列表
        public let superUsers: [String]

        /// POSIX权限控制
        public let posixAcl: Bool

        /// 是否打开Ranger地址校验
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enableRanger: Bool?

        /// Ranger地址列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rangerServiceAddresses: [String]?

        enum CodingKeys: String, CodingKey {
            case appId = "AppId"
            case fileSystemName = "FileSystemName"
            case description = "Description"
            case region = "Region"
            case fileSystemId = "FileSystemId"
            case createTime = "CreateTime"
            case blockSize = "BlockSize"
            case capacityQuota = "CapacityQuota"
            case status = "Status"
            case superUsers = "SuperUsers"
            case posixAcl = "PosixAcl"
            case enableRanger = "EnableRanger"
            case rangerServiceAddresses = "RangerServiceAddresses"
        }
    }

    /// 生命周期规则
    public struct LifeCycleRule: TCInputModel, TCOutputModel {
        /// 生命周期规则ID
        public let lifeCycleRuleId: UInt64?

        /// 生命周期规则名称
        public let lifeCycleRuleName: String?

        /// 生命周期规则路径（目录或文件）
        public let path: String?

        /// 生命周期规则转换列表
        public let transitions: [Transition]?

        /// 生命周期规则状态（1：打开；2：关闭）
        public let status: UInt64?

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date?

        /// 生命周期规则当前路径具体存储量
        public let summary: Summary?

        /// Summary更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var lastSummaryTime: Date?

        public init(lifeCycleRuleId: UInt64? = nil, lifeCycleRuleName: String? = nil, path: String? = nil, transitions: [Transition]? = nil, status: UInt64? = nil, createTime: Date? = nil, summary: Summary? = nil, lastSummaryTime: Date? = nil) {
            self.lifeCycleRuleId = lifeCycleRuleId
            self.lifeCycleRuleName = lifeCycleRuleName
            self.path = path
            self.transitions = transitions
            self.status = status
            self._createTime = .init(wrappedValue: createTime)
            self.summary = summary
            self._lastSummaryTime = .init(wrappedValue: lastSummaryTime)
        }

        enum CodingKeys: String, CodingKey {
            case lifeCycleRuleId = "LifeCycleRuleId"
            case lifeCycleRuleName = "LifeCycleRuleName"
            case path = "Path"
            case transitions = "Transitions"
            case status = "Status"
            case createTime = "CreateTime"
            case summary = "Summary"
            case lastSummaryTime = "LastSummaryTime"
        }
    }

    /// 挂载点
    public struct MountPoint: TCOutputModel {
        /// 挂载点ID
        public let mountPointId: String

        /// 挂载点名称
        public let mountPointName: String?

        /// 文件系统ID
        public let fileSystemId: String

        /// 挂载点状态（1：打开；2：关闭）
        public let status: UInt64

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 绑定的权限组ID列表
        public let accessGroupIds: [String]

        enum CodingKeys: String, CodingKey {
            case mountPointId = "MountPointId"
            case mountPointName = "MountPointName"
            case fileSystemId = "FileSystemId"
            case status = "Status"
            case createTime = "CreateTime"
            case accessGroupIds = "AccessGroupIds"
        }
    }

    /// 回热任务
    public struct RestoreTask: TCInputModel, TCOutputModel {
        /// 回热任务ID
        public let restoreTaskId: UInt64?

        /// 回热任务文件路径
        public let filePath: String?

        /// 回热任务类型（1：标准；2：极速；3：批量，暂时仅支持极速）
        public let type: UInt64?

        /// 指定恢复出的临时副本的有效时长（单位天）
        public let days: UInt64?

        /// 回热任务状态（1：绑定文件中；2：绑定文件完成；3：文件回热中；4：文件回热完成）
        public let status: UInt64?

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date?

        public init(restoreTaskId: UInt64? = nil, filePath: String? = nil, type: UInt64? = nil, days: UInt64? = nil, status: UInt64? = nil, createTime: Date? = nil) {
            self.restoreTaskId = restoreTaskId
            self.filePath = filePath
            self.type = type
            self.days = days
            self.status = status
            self._createTime = .init(wrappedValue: createTime)
        }

        enum CodingKeys: String, CodingKey {
            case restoreTaskId = "RestoreTaskId"
            case filePath = "FilePath"
            case type = "Type"
            case days = "Days"
            case status = "Status"
            case createTime = "CreateTime"
        }
    }

    /// 生命周期规则当前路径具体存储量信息
    public struct Summary: TCOutputModel {
        /// 已使用容量（byte）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let capacityUsed: UInt64?

        /// 已使用COS标准存储容量（byte）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let standardCapacityUsed: UInt64?

        /// 已使用COS低频存储容量（byte）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let degradeCapacityUsed: UInt64?

        /// 已使用COS归档存储容量（byte）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let archiveCapacityUsed: UInt64?

        /// 已使用COS深度归档存储容量（byte）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deepArchiveCapacityUsed: UInt64?

        /// 已使用COS智能分层存储容量（byte）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intelligentCapacityUsed: UInt64?

        enum CodingKeys: String, CodingKey {
            case capacityUsed = "CapacityUsed"
            case standardCapacityUsed = "StandardCapacityUsed"
            case degradeCapacityUsed = "DegradeCapacityUsed"
            case archiveCapacityUsed = "ArchiveCapacityUsed"
            case deepArchiveCapacityUsed = "DeepArchiveCapacityUsed"
            case intelligentCapacityUsed = "IntelligentCapacityUsed"
        }
    }

    /// 资源标签。
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

    /// 生命周期规则转换属性
    public struct Transition: TCInputModel, TCOutputModel {
        /// 触发时间（单位天）
        public let days: UInt64

        /// 转换类型（1：归档；2：删除；3：低频；4：深度归档；5：智能分层）
        public let type: UInt64

        public init(days: UInt64, type: UInt64) {
            self.days = days
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case days = "Days"
            case type = "Type"
        }
    }
}
