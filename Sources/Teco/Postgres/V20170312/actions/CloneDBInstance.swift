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

import TecoCore

extension Postgres {
    /// CloneDBInstance请求参数结构体
    public struct CloneDBInstanceRequest: TCRequestModel {
        /// 克隆的源实例ID。
        public let dbInstanceId: String

        /// 售卖规格ID。该参数可以通过调用DescribeProductConfig的返回值中的SpecCode字段来获取。
        public let specCode: String

        /// 实例容量大小，单位：GB。
        public let storage: Int64

        /// 购买时长，单位：月。目前只支持1,2,3,4,5,6,7,8,9,10,11,12,24,36这些值，按量计费模式下该参数传1。
        public let period: Int64

        /// 续费标记：0-正常续费（默认）；1-自动续费。
        public let autoRenewFlag: Int64

        /// 私有网络ID。
        public let vpcId: String

        /// 已配置的私有网络中的子网ID。
        public let subnetId: String

        /// 新购实例的实例名称。
        public let name: String?

        /// 实例计费类型。目前支持：PREPAID（预付费，即包年包月），POSTPAID_BY_HOUR（后付费，即按量计费）。
        public let instanceChargeType: String?

        /// 安全组ID。
        public let securityGroupIds: [String]?

        /// 项目ID。
        public let projectId: Int64?

        /// 实例需要绑定的Tag信息，默认为空。
        public let tagList: [Tag]?

        /// 购买多可用区实例时填写。
        public let dbNodeSet: [DBNode]?

        /// 是否自动使用代金券。1（是），0（否），默认不使用。
        public let autoVoucher: Int64?

        /// 代金券ID列表。
        public let voucherIds: String?

        /// 活动ID。
        public let activityId: Int64?

        /// 基础备份集ID。
        public let backupSetId: String?

        /// 恢复时间点。
        public let recoveryTargetTime: String?

        public init(dbInstanceId: String, specCode: String, storage: Int64, period: Int64, autoRenewFlag: Int64, vpcId: String, subnetId: String, name: String? = nil, instanceChargeType: String? = nil, securityGroupIds: [String]? = nil, projectId: Int64? = nil, tagList: [Tag]? = nil, dbNodeSet: [DBNode]? = nil, autoVoucher: Int64? = nil, voucherIds: String? = nil, activityId: Int64? = nil, backupSetId: String? = nil, recoveryTargetTime: String? = nil) {
            self.dbInstanceId = dbInstanceId
            self.specCode = specCode
            self.storage = storage
            self.period = period
            self.autoRenewFlag = autoRenewFlag
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.name = name
            self.instanceChargeType = instanceChargeType
            self.securityGroupIds = securityGroupIds
            self.projectId = projectId
            self.tagList = tagList
            self.dbNodeSet = dbNodeSet
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.activityId = activityId
            self.backupSetId = backupSetId
            self.recoveryTargetTime = recoveryTargetTime
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case specCode = "SpecCode"
            case storage = "Storage"
            case period = "Period"
            case autoRenewFlag = "AutoRenewFlag"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case name = "Name"
            case instanceChargeType = "InstanceChargeType"
            case securityGroupIds = "SecurityGroupIds"
            case projectId = "ProjectId"
            case tagList = "TagList"
            case dbNodeSet = "DBNodeSet"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case activityId = "ActivityId"
            case backupSetId = "BackupSetId"
            case recoveryTargetTime = "RecoveryTargetTime"
        }
    }

    /// CloneDBInstance返回参数结构体
    public struct CloneDBInstanceResponse: TCResponseModel {
        /// 订单号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealName: String?

        /// 订单流水号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let billId: String?

        /// 克隆出的新实例ID，当前只支持后付费返回该值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dbInstanceId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case billId = "BillId"
            case dbInstanceId = "DBInstanceId"
            case requestId = "RequestId"
        }
    }

    /// 克隆实例
    ///
    /// 用于克隆实例，支持指定备份集、指定时间点进行克隆。
    @inlinable
    public func cloneDBInstance(_ input: CloneDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneDBInstanceResponse> {
        self.client.execute(action: "CloneDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 克隆实例
    ///
    /// 用于克隆实例，支持指定备份集、指定时间点进行克隆。
    @inlinable
    public func cloneDBInstance(_ input: CloneDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneDBInstanceResponse {
        try await self.client.execute(action: "CloneDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 克隆实例
    ///
    /// 用于克隆实例，支持指定备份集、指定时间点进行克隆。
    @inlinable
    public func cloneDBInstance(dbInstanceId: String, specCode: String, storage: Int64, period: Int64, autoRenewFlag: Int64, vpcId: String, subnetId: String, name: String? = nil, instanceChargeType: String? = nil, securityGroupIds: [String]? = nil, projectId: Int64? = nil, tagList: [Tag]? = nil, dbNodeSet: [DBNode]? = nil, autoVoucher: Int64? = nil, voucherIds: String? = nil, activityId: Int64? = nil, backupSetId: String? = nil, recoveryTargetTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneDBInstanceResponse> {
        self.cloneDBInstance(.init(dbInstanceId: dbInstanceId, specCode: specCode, storage: storage, period: period, autoRenewFlag: autoRenewFlag, vpcId: vpcId, subnetId: subnetId, name: name, instanceChargeType: instanceChargeType, securityGroupIds: securityGroupIds, projectId: projectId, tagList: tagList, dbNodeSet: dbNodeSet, autoVoucher: autoVoucher, voucherIds: voucherIds, activityId: activityId, backupSetId: backupSetId, recoveryTargetTime: recoveryTargetTime), region: region, logger: logger, on: eventLoop)
    }

    /// 克隆实例
    ///
    /// 用于克隆实例，支持指定备份集、指定时间点进行克隆。
    @inlinable
    public func cloneDBInstance(dbInstanceId: String, specCode: String, storage: Int64, period: Int64, autoRenewFlag: Int64, vpcId: String, subnetId: String, name: String? = nil, instanceChargeType: String? = nil, securityGroupIds: [String]? = nil, projectId: Int64? = nil, tagList: [Tag]? = nil, dbNodeSet: [DBNode]? = nil, autoVoucher: Int64? = nil, voucherIds: String? = nil, activityId: Int64? = nil, backupSetId: String? = nil, recoveryTargetTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneDBInstanceResponse {
        try await self.cloneDBInstance(.init(dbInstanceId: dbInstanceId, specCode: specCode, storage: storage, period: period, autoRenewFlag: autoRenewFlag, vpcId: vpcId, subnetId: subnetId, name: name, instanceChargeType: instanceChargeType, securityGroupIds: securityGroupIds, projectId: projectId, tagList: tagList, dbNodeSet: dbNodeSet, autoVoucher: autoVoucher, voucherIds: voucherIds, activityId: activityId, backupSetId: backupSetId, recoveryTargetTime: recoveryTargetTime), region: region, logger: logger, on: eventLoop)
    }
}
