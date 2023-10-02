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

extension Cbs {
    /// 定期快照高级保留策略，四个参数都为必选参数
    public struct AdvancedRetentionPolicy: TCInputModel, TCOutputModel {
        /// 保留最新快照Days天内的每天最新的一个快照，取值范围：[0, 100]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let days: UInt64?

        /// 保留最新快照Weeks周内的每周最新的一个快照，取值范围：[0, 100]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let weeks: UInt64?

        /// 保留最新快照Months月内的每月最新的一个快照， 取值范围：[0, 100]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let months: UInt64?

        /// 保留最新快照Years年内的每年最新的一个快照，取值范围：[0, 100]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let years: UInt64?

        public init(days: UInt64, weeks: UInt64, months: UInt64, years: UInt64) {
            self.days = days
            self.weeks = weeks
            self.months = months
            self.years = years
        }

        enum CodingKeys: String, CodingKey {
            case days = "Days"
            case weeks = "Weeks"
            case months = "Months"
            case years = "Years"
        }
    }

    /// 描述一个实例已挂载和可挂载数据盘的数量。
    public struct AttachDetail: TCOutputModel {
        /// 实例ID。
        public let instanceId: String

        /// 实例已挂载数据盘的数量。
        public let attachedDiskCount: UInt64

        /// 实例最大可挂载数据盘的数量。
        public let maxAttachCount: UInt64

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case attachedDiskCount = "AttachedDiskCount"
            case maxAttachCount = "MaxAttachCount"
        }
    }

    /// 描述了新购云硬盘时自动将云硬盘初始化并挂载至云服务器内部的配置。
    public struct AutoMountConfiguration: TCInputModel {
        /// 要挂载到的实例ID。
        public let instanceId: [String]

        /// 子机内的挂载点。
        public let mountPoint: [String]

        /// 文件系统类型，支持的有 ext4、xfs。
        public let fileSystemType: String

        public init(instanceId: [String], mountPoint: [String], fileSystemType: String) {
            self.instanceId = instanceId
            self.mountPoint = mountPoint
            self.fileSystemType = fileSystemType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case mountPoint = "MountPoint"
            case fileSystemType = "FileSystemType"
        }
    }

    /// 描述了定期快照策略的详细信息
    public struct AutoSnapshotPolicy: TCOutputModel {
        /// 已绑定当前定期快照策略的云盘ID列表。
        public let diskIdSet: [String]?

        /// 定期快照策略是否激活。
        public let isActivated: Bool?

        /// 定期快照策略的状态。取值范围：
        ///
        /// - NORMAL：正常
        /// - ISOLATED：已隔离。
        public let autoSnapshotPolicyState: String?

        /// 是否是跨账号复制快照快照, 1：是, 0: 不是
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isCopyToRemote: UInt64?

        /// 使用该定期快照策略创建出来的快照是否永久保留。
        public let isPermanent: Bool?

        /// 定期快照下次触发的时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var nextTriggerTime: Date?

        /// 定期快照策略名称。
        public let autoSnapshotPolicyName: String?

        /// 定期快照策略ID。
        public let autoSnapshotPolicyId: String?

        /// 定期快照的执行策略。
        public let policy: [Policy]?

        /// 定期快照策略的创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date?

        /// 使用该定期快照策略创建出来的快照保留天数。
        public let retentionDays: UInt64?

        /// 复制的目标账户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let copyToAccountUin: String?

        /// 已绑定当前定期快照策略的实例ID列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceIdSet: [String]?

        /// 该定期快照创建的快照可以保留的月数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let retentionMonths: UInt64?

        /// 该定期快照创建的快照最大保留数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let retentionAmount: UInt64?

        /// 定期快照高级保留策略。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let advancedRetentionPolicy: AdvancedRetentionPolicy?

        /// 该复制快照策略的源端账户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let copyFromAccountUin: String?

        /// 标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        enum CodingKeys: String, CodingKey {
            case diskIdSet = "DiskIdSet"
            case isActivated = "IsActivated"
            case autoSnapshotPolicyState = "AutoSnapshotPolicyState"
            case isCopyToRemote = "IsCopyToRemote"
            case isPermanent = "IsPermanent"
            case nextTriggerTime = "NextTriggerTime"
            case autoSnapshotPolicyName = "AutoSnapshotPolicyName"
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case policy = "Policy"
            case createTime = "CreateTime"
            case retentionDays = "RetentionDays"
            case copyToAccountUin = "CopyToAccountUin"
            case instanceIdSet = "InstanceIdSet"
            case retentionMonths = "RetentionMonths"
            case retentionAmount = "RetentionAmount"
            case advancedRetentionPolicy = "AdvancedRetentionPolicy"
            case copyFromAccountUin = "CopyFromAccountUin"
            case tags = "Tags"
        }
    }

    /// 描述独享集群的详细信息。
    public struct Cdc: TCOutputModel {
        /// 独享集群围笼ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cageId: String?

        /// 独享集群状态。取值范围：
        ///
        /// - NORMAL：正常；
        /// - CLOSED：关闭，此时将不可使用该独享集群创建新的云硬盘；
        /// - FAULT：独享集群状态异常，此时独享集群将不可操作，腾讯云运维团队将会及时修复该集群；
        /// - ISOLATED：因未及时续费导致独享集群被隔离，此时将不可使用该独享集群创建新的云硬盘，对应的云硬盘也将不可操作。
        public let cdcState: String

        /// 独享集群所属的[可用区](/document/product/213/15753#ZoneInfo)ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zone: String?

        /// 独享集群实例名称。
        public let cdcName: String

        /// 独享集群的资源容量大小。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cdcResource: CdcSize?

        /// 独享集群实例id。
        public let cdcId: String

        /// 独享集群类型。取值范围：
        ///
        /// - CLOUD_BASIC：表示普通云硬盘集群
        /// - CLOUD_PREMIUM：表示高性能云硬盘集群
        /// - CLOUD_SSD：SSD表示SSD云硬盘集群。
        public let diskType: String

        /// 独享集群到期时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var expiredTime: Date

        /// 存储池创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdTime: Date

        /// 当前集群中已创建的云盘数量。
        public let diskNumber: UInt64

        enum CodingKeys: String, CodingKey {
            case cageId = "CageId"
            case cdcState = "CdcState"
            case zone = "Zone"
            case cdcName = "CdcName"
            case cdcResource = "CdcResource"
            case cdcId = "CdcId"
            case diskType = "DiskType"
            case expiredTime = "ExpiredTime"
            case createdTime = "CreatedTime"
            case diskNumber = "DiskNumber"
        }
    }

    /// 显示独享集群的大小
    public struct CdcSize: TCOutputModel {
        /// 独享集群的总容量大小，单位GiB
        public let diskTotal: UInt64

        /// 独享集群的可用容量大小，单位GiB
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let diskAvailable: UInt64?

        enum CodingKeys: String, CodingKey {
            case diskTotal = "DiskTotal"
            case diskAvailable = "DiskAvailable"
        }
    }

    /// 描述购买云盘时的费用明细。
    public struct DetailPrice: TCOutputModel {
        /// 描述计费项目名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let priceTitle: String?

        /// 描述计费项目显示名称，用户控制台展示。
        public let priceName: String

        /// 预付费云盘预支费用的原价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalPrice: Float?

        /// 预付费云盘预支费用的折扣价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountPrice: Float?

        /// 后付费云盘原单价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPrice: Float?

        /// 后付费云盘折扣单价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPriceDiscount: Float?

        /// 后付费云盘的计价单元，取值范围：HOUR：表示后付费云盘的计价单元是按小时计算。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chargeUnit: String?

        /// 高精度预付费云盘预支费用的原价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalPriceHigh: String?

        /// 高精度预付费云盘预支费用的折扣价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountPriceHigh: String?

        /// 高精度后付费云盘原单价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPriceHigh: String?

        /// 高精度后付费云盘折扣单价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPriceDiscountHigh: String?

        enum CodingKeys: String, CodingKey {
            case priceTitle = "PriceTitle"
            case priceName = "PriceName"
            case originalPrice = "OriginalPrice"
            case discountPrice = "DiscountPrice"
            case unitPrice = "UnitPrice"
            case unitPriceDiscount = "UnitPriceDiscount"
            case chargeUnit = "ChargeUnit"
            case originalPriceHigh = "OriginalPriceHigh"
            case discountPriceHigh = "DiscountPriceHigh"
            case unitPriceHigh = "UnitPriceHigh"
            case unitPriceDiscountHigh = "UnitPriceDiscountHigh"
        }
    }

    /// 描述了云硬盘的详细信息
    public struct Disk: TCOutputModel {
        /// 云盘是否与挂载的实例一起销毁。
        ///
        /// - true:销毁实例时会同时销毁云盘，只支持按小时后付费云盘。
        /// - false：销毁实例时不销毁云盘。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deleteWithInstance: Bool?

        /// 自动续费标识。取值范围：
        ///
        /// - NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        /// - NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        /// - DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let renewFlag: String?

        /// 硬盘介质类型。取值范围：
        ///
        /// - CLOUD_BASIC：表示普通云硬盘
        /// - CLOUD_PREMIUM：表示高性能云硬盘
        /// - CLOUD_BSSD：表示通用型SSD云硬盘
        /// - CLOUD_SSD：表示SSD云硬盘
        /// - CLOUD_HSSD：表示增强型SSD云硬盘
        /// - CLOUD_TSSD：表示极速型SSD云硬盘。
        public let diskType: String?

        /// 云盘状态。取值范围：
        ///
        /// - UNATTACHED：未挂载
        /// - ATTACHING：挂载中
        /// - ATTACHED：已挂载
        /// - DETACHING：解挂中
        /// - EXPANDING：扩容中
        /// - ROLLBACKING：回滚中
        /// - TORECYCLE：待回收
        /// - DUMPING：拷贝硬盘中。
        public let diskState: String?

        /// 云盘拥有的快照总数。
        public let snapshotCount: Int64

        /// 云盘已挂载到子机，且子机与云盘都是包年包月。
        ///
        /// - true：子机设置了自动续费标识，但云盘未设置
        /// - false：云盘自动续费标识正常。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoRenewFlagError: Bool?

        /// 云盘是否处于快照回滚状态。取值范围：
        ///
        /// - false:表示不处于快照回滚状态
        /// - true:表示处于快照回滚状态。
        public let rollbacking: Bool?

        /// 对于非共享型云盘，该参数为空数组。对于共享型云盘，则表示该云盘当前被挂载到的CVM实例InstanceId
        public let instanceIdList: [String]

        /// 云盘是否为加密盘。取值范围：
        ///
        /// - false:表示非加密盘
        /// - true:表示加密盘。
        public let encrypt: Bool?

        /// 云硬盘名称。
        public let diskName: String?

        /// 云硬盘因欠费销毁或者到期销毁时， 是否使用快照备份数据的标识。true表示销毁时创建快照进行数据备份。false表示直接销毁，不进行数据备份。
        public let backupDisk: Bool

        /// 与云盘绑定的标签，云盘未绑定标签则取值为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        /// 云硬盘挂载的云主机ID。
        public let instanceId: String?

        /// 云盘的挂载类型。取值范围：
        ///
        /// - PF: PF挂载
        /// - VF: VF挂载
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attachMode: String?

        /// 云盘关联的定期快照ID。只有在调用DescribeDisks接口时，入参ReturnBindAutoSnapshotPolicy取值为TRUE才会返回该参数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoSnapshotPolicyIds: [String]?

        /// 云硬盘额外性能值，单位MB/s。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let throughputPerformance: UInt64?

        /// 云盘是否处于类型变更中。取值范围：
        ///
        /// - false:表示云盘不处于类型变更中
        /// - true:表示云盘已发起类型变更，正处于迁移中。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let migrating: Bool?

        /// 云硬盘ID。
        public let diskId: String?

        /// 云盘拥有的快照总容量，单位为MB。
        public let snapshotSize: UInt64

        /// 云硬盘所在的位置。
        public let placement: Placement?

        /// 判断预付费的云盘是否支持主动退还。
        ///
        /// - true:支持主动退还
        /// - false:不支持主动退还。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isReturnable: Bool?

        /// 云硬盘的到期时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadlineTime: Date?

        /// 云盘是否挂载到云主机上。取值范围：
        ///
        /// - false:表示未挂载
        /// - true:表示已挂载。
        public let attached: Bool?

        /// 云硬盘大小，单位GB。
        public let diskSize: UInt64?

        /// 云盘类型变更的迁移进度，取值0到100。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let migratePercent: UInt64?

        /// 云硬盘类型。取值范围：
        ///
        /// - SYSTEM_DISK：系统盘
        /// - DATA_DISK：数据盘。
        public let diskUsage: String?

        /// 付费模式。取值范围：
        ///
        /// - PREPAID：预付费，即包年包月
        /// - POSTPAID_BY_HOUR：后付费，即按量计费。
        public let diskChargeType: String?

        /// 是否为弹性云盘，false表示非弹性云盘，true表示弹性云盘。
        public let portable: Bool?

        /// 云盘是否具备创建快照的能力。取值范围：
        ///
        /// - false表示不具备
        /// - true表示具备。
        public let snapshotAbility: Bool?

        /// 在云盘已挂载到实例，且实例与云盘都是包年包月的条件下，此字段才有意义。
        ///
        /// - true:云盘到期时间早于实例。
        /// - false：云盘到期时间晚于实例。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deadlineError: Bool?

        /// 云盘快照回滚的进度。
        public let rollbackPercent: UInt64?

        /// 当前时间距离盘到期的天数（仅对预付费盘有意义）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let differDaysOfDeadline: Int64?

        /// 预付费云盘在不支持主动退还的情况下，该参数表明不支持主动退还的具体原因。取值范围：
        ///
        /// - 1：云硬盘已经退还
        /// - 2：云硬盘已过期
        /// - 3：云盘不支持退还
        /// - 8：超过可退还数量的限制。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnFailCode: Int64?

        /// 云盘是否为共享型云盘。
        public let shareable: Bool

        /// 云硬盘的创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date?

        /// 销毁云盘时删除关联的非永久保留快照。0 表示非永久快照不随云盘销毁而销毁，1表示非永久快照随云盘销毁而销毁，默认取0。快照是否永久保留可以通过DescribeSnapshots接口返回的快照详情的IsPermanent字段来判断，true表示永久快照，false表示非永久快照。
        public let deleteSnapshot: Int64

        /// 云硬盘备份点配额。表示最大可以保留的备份点数量。
        public let diskBackupQuota: UInt64

        /// 云硬盘备份点已使用的数量。
        public let diskBackupCount: UInt64

        /// 云硬盘挂载实例的类型。取值范围：
        ///
        /// - CVM
        /// - EKS
        public let instanceType: String

        /// 云硬盘最后一次挂载的实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastAttachInsId: String?

        /// 云硬盘最后一次操作错误提示
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorPrompt: String?

        /// 云盘是否开启性能突发
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let burstPerformance: Bool?

        enum CodingKeys: String, CodingKey {
            case deleteWithInstance = "DeleteWithInstance"
            case renewFlag = "RenewFlag"
            case diskType = "DiskType"
            case diskState = "DiskState"
            case snapshotCount = "SnapshotCount"
            case autoRenewFlagError = "AutoRenewFlagError"
            case rollbacking = "Rollbacking"
            case instanceIdList = "InstanceIdList"
            case encrypt = "Encrypt"
            case diskName = "DiskName"
            case backupDisk = "BackupDisk"
            case tags = "Tags"
            case instanceId = "InstanceId"
            case attachMode = "AttachMode"
            case autoSnapshotPolicyIds = "AutoSnapshotPolicyIds"
            case throughputPerformance = "ThroughputPerformance"
            case migrating = "Migrating"
            case diskId = "DiskId"
            case snapshotSize = "SnapshotSize"
            case placement = "Placement"
            case isReturnable = "IsReturnable"
            case deadlineTime = "DeadlineTime"
            case attached = "Attached"
            case diskSize = "DiskSize"
            case migratePercent = "MigratePercent"
            case diskUsage = "DiskUsage"
            case diskChargeType = "DiskChargeType"
            case portable = "Portable"
            case snapshotAbility = "SnapshotAbility"
            case deadlineError = "DeadlineError"
            case rollbackPercent = "RollbackPercent"
            case differDaysOfDeadline = "DifferDaysOfDeadline"
            case returnFailCode = "ReturnFailCode"
            case shareable = "Shareable"
            case createTime = "CreateTime"
            case deleteSnapshot = "DeleteSnapshot"
            case diskBackupQuota = "DiskBackupQuota"
            case diskBackupCount = "DiskBackupCount"
            case instanceType = "InstanceType"
            case lastAttachInsId = "LastAttachInsId"
            case errorPrompt = "ErrorPrompt"
            case burstPerformance = "BurstPerformance"
        }
    }

    /// 云硬盘备份点。
    public struct DiskBackup: TCOutputModel {
        /// 云硬盘备份点的ID。
        public let diskBackupId: String

        /// 云硬盘备份点关联的云硬盘ID。
        public let diskId: String

        /// 云硬盘大小，单位GB。
        public let diskSize: UInt64

        /// 云硬盘类型。取值范围：
        ///
        /// - SYSTEM_DISK：系统盘
        /// - DATA_DISK：数据盘。
        public let diskUsage: String

        /// 备份点名称。
        public let diskBackupName: String

        /// 云硬盘备份点状态。取值范围：
        ///
        /// - NORMAL：正常
        /// - CREATING：创建中
        /// - ROLLBACKING：回滚中
        public let diskBackupState: String

        /// 云硬盘创建进度百分比。
        public let percent: UInt64

        /// 云硬盘备份点的创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 云盘是否为加密盘。取值范围：
        ///
        /// - false:表示非加密盘
        /// - true:表示加密盘。
        public let encrypt: Bool

        enum CodingKeys: String, CodingKey {
            case diskBackupId = "DiskBackupId"
            case diskId = "DiskId"
            case diskSize = "DiskSize"
            case diskUsage = "DiskUsage"
            case diskBackupName = "DiskBackupName"
            case diskBackupState = "DiskBackupState"
            case percent = "Percent"
            case createTime = "CreateTime"
            case encrypt = "Encrypt"
        }
    }

    /// 描述了实例的计费模式
    public struct DiskChargePrepaid: TCInputModel {
        /// 购买云盘的时长，默认单位为月，取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。
        public let period: UInt64

        /// 自动续费标识。取值范围：
        ///
        /// - NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        /// - NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        /// - DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费
        ///
        /// 默认取值：NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费。
        public let renewFlag: String?

        /// 需要将云盘的到期时间与挂载的子机对齐时，可传入该参数。该参数表示子机当前的到期时间，此时Period如果传入，则表示子机需要续费的时长，云盘会自动按对齐到子机续费后的到期时间续费，示例取值：2018-03-30 20:15:03。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var curInstanceDeadline: Date?

        public init(period: UInt64, renewFlag: String? = nil, curInstanceDeadline: Date? = nil) {
            self.period = period
            self.renewFlag = renewFlag
            self._curInstanceDeadline = .init(wrappedValue: curInstanceDeadline)
        }

        enum CodingKeys: String, CodingKey {
            case period = "Period"
            case renewFlag = "RenewFlag"
            case curInstanceDeadline = "CurInstanceDeadline"
        }
    }

    /// 云盘配置。
    public struct DiskConfig: TCOutputModel {
        /// 配置是否可用。
        public let available: Bool?

        /// 付费模式。取值范围：
        ///
        /// - PREPAID：表示预付费，即包年包月
        /// - POSTPAID_BY_HOUR：表示后付费，即按量计费。
        public let diskChargeType: String?

        /// 云硬盘所属的[可用区](/document/product/213/15753#ZoneInfo)。
        public let zone: String?

        /// 实例机型系列。详见[实例类型](https://cloud.tencent.com/document/product/213/11518)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceFamily: String?

        /// 云盘介质类型。取值范围：
        ///
        /// - CLOUD_BASIC：表示普通云硬盘
        /// - CLOUD_PREMIUM：表示高性能云硬盘
        /// - CLOUD_SSD：SSD表示SSD云硬盘。
        public let diskType: String?

        /// 云盘大小变化的最小步长，单位GB。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stepSize: UInt64?

        /// 额外的性能区间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extraPerformanceRange: [Int64]?

        /// 实例机型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceClass: String?

        /// 云盘类型。取值范围：
        ///
        /// - SYSTEM_DISK：表示系统盘
        /// - DATA_DISK：表示数据盘。
        public let diskUsage: String?

        /// 最小可配置云盘大小，单位GB。
        public let minDiskSize: UInt64?

        /// 最大可配置云盘大小，单位GB。
        public let maxDiskSize: UInt64?

        /// 描述预付费或后付费云盘的价格。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let price: Price?

        enum CodingKeys: String, CodingKey {
            case available = "Available"
            case diskChargeType = "DiskChargeType"
            case zone = "Zone"
            case instanceFamily = "InstanceFamily"
            case diskType = "DiskType"
            case stepSize = "StepSize"
            case extraPerformanceRange = "ExtraPerformanceRange"
            case deviceClass = "DeviceClass"
            case diskUsage = "DiskUsage"
            case minDiskSize = "MinDiskSize"
            case maxDiskSize = "MaxDiskSize"
            case price = "Price"
        }
    }

    /// 描述键值对过滤器，用于条件过滤查询。
    public struct Filter: TCInputModel {
        /// 过滤键的名称。
        public let name: String

        /// 一个或者多个过滤值。
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

    /// 镜像。
    public struct Image: TCOutputModel {
        /// 镜像名称。
        public let imageName: String

        /// 镜像实例ID。
        public let imageId: String

        enum CodingKeys: String, CodingKey {
            case imageName = "ImageName"
            case imageId = "ImageId"
        }
    }

    /// 描述了实例的抽象位置，包括其所在的可用区，所属的项目，以及所属的独享集群的ID和名字。
    public struct Placement: TCInputModel, TCOutputModel {
        /// 云硬盘所属的[可用区](/document/product/213/15753#ZoneInfo)。该参数也可以通过调用  [DescribeZones](/document/product/213/15707) 的返回值中的Zone字段来获取。
        public let zone: String

        /// 围笼Id。作为入参时，表示对指定的CageId的资源进行操作，可为空。 作为出参时，表示资源所属围笼ID，可为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cageId: String?

        /// 实例所属项目ID。该参数可以通过调用 [DescribeProject](/document/api/378/4400) 的返回值中的 projectId 字段来获取。不填为默认项目。
        public let projectId: UInt64?

        /// 实例所属项目名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectName: String?

        /// 独享集群名字。作为入参时，忽略。作为出参时，表示云硬盘所属的独享集群名，可为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cdcName: String?

        /// 实例所属的独享集群ID。作为入参时，表示对指定的CdcId独享集群的资源进行操作，可为空。 作为出参时，表示资源所属的独享集群的ID，可为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cdcId: String?

        /// 独享集群id。
        public let dedicatedClusterId: String?

        public init(zone: String, cageId: String? = nil, projectId: UInt64? = nil, projectName: String? = nil, cdcName: String? = nil, cdcId: String? = nil, dedicatedClusterId: String? = nil) {
            self.zone = zone
            self.cageId = cageId
            self.projectId = projectId
            self.projectName = projectName
            self.cdcName = cdcName
            self.cdcId = cdcId
            self.dedicatedClusterId = dedicatedClusterId
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case cageId = "CageId"
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case cdcName = "CdcName"
            case cdcId = "CdcId"
            case dedicatedClusterId = "DedicatedClusterId"
        }
    }

    /// 描述了定期快照的执行策略。可理解为在DayOfWeek/DayOfMonth指定的几天中，或者是IntervalDays设定的间隔的几天，在Hour指定的时刻点执行该条定期快照策。注：DayOfWeek/DayOfMonth/IntervalDays为互斥规则，仅可设置其中一条策略规则。
    public struct Policy: TCInputModel, TCOutputModel {
        /// 指定定期快照策略的触发时间。单位为小时，取值范围：[0, 23]。00:00 ~ 23:00 共 24 个时间点可选，1表示 01:00，依此类推。
        public let hour: [UInt64]

        /// 指定每周从周一到周日需要触发定期快照的日期，取值范围：[0, 6]。0表示周日触发，1-6分别表示周一至周六。
        public let dayOfWeek: [UInt64]?

        /// 指定每月从月初到月底需要触发定期快照的日期,取值范围：[1, 31]，1-31分别表示每月的具体日期，比如5表示每月的5号。注：若设置29、30、31等部分月份不存在的日期，则对应不存在日期的月份会跳过不打定期快照。
        public let dayOfMonth: [UInt64]?

        /// 指定创建定期快照的间隔天数，取值范围：[1, 365]，例如设置为5，则间隔5天即触发定期快照创建。注：当选择按天备份时，理论上第一次备份的时间为备份策略创建当天。如果当天备份策略创建的时间已经晚于设置的备份时间，那么将会等到第二个备份周期再进行第一次备份。
        public let intervalDays: UInt64?

        public init(hour: [UInt64], dayOfWeek: [UInt64]? = nil, dayOfMonth: [UInt64]? = nil, intervalDays: UInt64? = nil) {
            self.hour = hour
            self.dayOfWeek = dayOfWeek
            self.dayOfMonth = dayOfMonth
            self.intervalDays = intervalDays
        }

        enum CodingKeys: String, CodingKey {
            case hour = "Hour"
            case dayOfWeek = "DayOfWeek"
            case dayOfMonth = "DayOfMonth"
            case intervalDays = "IntervalDays"
        }
    }

    /// 预付费订单的费用。
    public struct PrepayPrice: TCOutputModel {
        /// 预付费云盘或快照预支费用的折扣价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountPrice: Float?

        /// 后付费云盘的计价单元，取值范围：
        ///
        /// - HOUR：表示后付费云盘的计价单元是按小时计算。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chargeUnit: String?

        /// 高精度后付费云盘原单价, 单位：元
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPriceHigh: String?

        /// 高精度预付费云盘或快照预支费用的原价，单位：元
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalPriceHigh: String?

        /// 预付费云盘或快照预支费用的原价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalPrice: Float?

        /// 后付费云盘折扣单价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPriceDiscount: Float?

        /// 高精度后付费云盘折扣单价, 单位：元
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPriceDiscountHigh: String?

        /// 高精度预付费云盘或快照预支费用的折扣价，单位：元
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountPriceHigh: String?

        /// 后付费云盘原单价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPrice: Float?

        /// 计费项目明细列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detailPrices: [DetailPrice]?

        enum CodingKeys: String, CodingKey {
            case discountPrice = "DiscountPrice"
            case chargeUnit = "ChargeUnit"
            case unitPriceHigh = "UnitPriceHigh"
            case originalPriceHigh = "OriginalPriceHigh"
            case originalPrice = "OriginalPrice"
            case unitPriceDiscount = "UnitPriceDiscount"
            case unitPriceDiscountHigh = "UnitPriceDiscountHigh"
            case discountPriceHigh = "DiscountPriceHigh"
            case unitPrice = "UnitPrice"
            case detailPrices = "DetailPrices"
        }
    }

    /// 描述预付费或后付费云盘的价格。
    public struct Price: TCOutputModel {
        /// 后付费云盘折扣单价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPriceDiscount: Float?

        /// 预付费云盘预支费用的折扣价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountPrice: Float?

        /// 后付费云盘原单价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPrice: Float?

        /// 高精度后付费云盘原单价, 单位：元
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPriceHigh: String?

        /// 高精度预付费云盘预支费用的原价, 单位：元	。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalPriceHigh: String?

        /// 预付费云盘预支费用的原价，单位：元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalPrice: Float?

        /// 高精度预付费云盘预支费用的折扣价, 单位：元
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountPriceHigh: String?

        /// 高精度后付费云盘折扣单价, 单位：元
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitPriceDiscountHigh: String?

        /// 后付费云盘的计价单元，取值范围：
        ///
        /// - HOUR：表示后付费云盘的计价单元是按小时计算。
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let chargeUnit: String?

        enum CodingKeys: String, CodingKey {
            case unitPriceDiscount = "UnitPriceDiscount"
            case discountPrice = "DiscountPrice"
            case unitPrice = "UnitPrice"
            case unitPriceHigh = "UnitPriceHigh"
            case originalPriceHigh = "OriginalPriceHigh"
            case originalPrice = "OriginalPrice"
            case discountPriceHigh = "DiscountPriceHigh"
            case unitPriceDiscountHigh = "UnitPriceDiscountHigh"
            case chargeUnit = "ChargeUnit"
        }
    }

    /// 快照分享信息集合
    public struct SharePermission: TCOutputModel {
        /// 快照分享的时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createdTime: Date

        /// 分享的账号Id
        public let accountId: String

        enum CodingKeys: String, CodingKey {
            case createdTime = "CreatedTime"
            case accountId = "AccountId"
        }
    }

    /// 描述了快照的详细信息
    public struct Snapshot: TCOutputModel {
        /// 快照所在的位置。
        public let placement: Placement?

        /// 是否为跨地域复制的快照。取值范围：
        ///
        /// - true：表示为跨地域复制的快照。
        /// - false:本地域的快照。
        public let copyFromRemote: Bool

        /// 快照的状态。取值范围：
        ///
        /// - NORMAL：正常
        /// - CREATING：创建中
        /// - ROLLBACKING：回滚中
        /// - COPYING_FROM_REMOTE：跨地域复制中
        /// - CHECKING_COPIED：复制校验中
        /// - TORECYCLE：待回收。
        public let snapshotState: String?

        /// 是否为永久快照。取值范围：
        ///
        /// - true：永久快照
        /// - false：非永久快照。
        public let isPermanent: Bool?

        /// 快照名称，用户自定义的快照别名。调用[ModifySnapshotAttribute](/document/product/362/15650)可修改此字段。
        public let snapshotName: String?

        /// 快照到期时间。如果快照为永久保留，此字段为空。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var deadlineTime: Date?

        /// 快照创建进度百分比，快照创建成功后此字段恒为100。
        public let percent: UInt64?

        /// 快照关联的镜像列表。
        public let images: [Image]

        /// 快照当前被共享数。
        public let shareReference: UInt64

        /// 快照类型，目前该项取值可以为PRIVATE_SNAPSHOT或者SHARED_SNAPSHOT
        public let snapshotType: String

        /// 创建此快照的云硬盘大小，单位GB。
        public let diskSize: UInt64?

        /// 创建此快照的云硬盘ID。
        public let diskId: String?

        /// 快照正在跨地域复制的目的地域，默认取值为[]。
        public let copyingToRegions: [String]

        /// 是否为加密盘创建的快照。取值范围：
        ///
        /// - true：该快照为加密盘创建的
        /// - false:非加密盘创建的快照。
        public let encrypt: Bool?

        /// 快照的创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date?

        /// 快照关联的镜像个数。
        public let imageCount: UInt64

        /// 创建此快照的云硬盘类型。取值范围：
        ///
        /// - SYSTEM_DISK：系统盘
        /// - DATA_DISK：数据盘。
        public let diskUsage: String?

        /// 快照ID。
        public let snapshotId: String

        /// 快照开始共享的时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var timeStartShare: Date

        /// 快照绑定的标签列表。
        public let tags: [Tag]?

        enum CodingKeys: String, CodingKey {
            case placement = "Placement"
            case copyFromRemote = "CopyFromRemote"
            case snapshotState = "SnapshotState"
            case isPermanent = "IsPermanent"
            case snapshotName = "SnapshotName"
            case deadlineTime = "DeadlineTime"
            case percent = "Percent"
            case images = "Images"
            case shareReference = "ShareReference"
            case snapshotType = "SnapshotType"
            case diskSize = "DiskSize"
            case diskId = "DiskId"
            case copyingToRegions = "CopyingToRegions"
            case encrypt = "Encrypt"
            case createTime = "CreateTime"
            case imageCount = "ImageCount"
            case diskUsage = "DiskUsage"
            case snapshotId = "SnapshotId"
            case timeStartShare = "TimeStartShare"
            case tags = "Tags"
        }
    }

    /// 描述快照跨地域复制的结果。
    public struct SnapshotCopyResult: TCOutputModel {
        /// 复制到目标地域的新快照ID。
        public let snapshotId: String

        /// 指示具体错误信息，成功时为空字符串。
        public let message: String

        /// 错误码，成功时取值为“Success”。
        public let code: String

        /// 跨地复制的目标地域。
        public let destinationRegion: String

        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case message = "Message"
            case code = "Code"
            case destinationRegion = "DestinationRegion"
        }
    }

    /// 标签。
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签健。
        public let key: String

        /// 标签值。
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
