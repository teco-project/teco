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

import Logging
import NIOCore
import TecoCore

extension Postgres {
    /// ModifyDBInstanceChargeType请求参数结构体
    public struct ModifyDBInstanceChargeTypeRequest: TCRequestModel {
        /// 实例ID，形如postgres-6fego161
        public let dbInstanceId: String

        /// 实例计费类型，目前支持：
        /// - PREPAID：预付费，即包年包月
        /// - POSTPAID_BY_HOUR：后付费，即按量计费
        ///
        /// 默认值：PREPAID
        public let instanceChargeType: String

        /// 购买时长，单位：月。
        /// - 预付费：支持1,2,3,4,5,6,7,8,9,10,11,12,24,36
        /// - 后付费：只支持1
        public let period: Int64

        /// 续费标记：
        /// - 0：手动续费
        /// - 1：自动续费
        ///
        /// 默认值：0
        public let autoRenewFlag: Int64?

        /// 是否自动使用代金券：
        /// - 0：否
        /// - 1：是
        ///
        /// 默认值：0
        public let autoVoucher: Int64?

        public init(dbInstanceId: String, instanceChargeType: String, period: Int64, autoRenewFlag: Int64? = nil, autoVoucher: Int64? = nil) {
            self.dbInstanceId = dbInstanceId
            self.instanceChargeType = instanceChargeType
            self.period = period
            self.autoRenewFlag = autoRenewFlag
            self.autoVoucher = autoVoucher
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case instanceChargeType = "InstanceChargeType"
            case period = "Period"
            case autoRenewFlag = "AutoRenewFlag"
            case autoVoucher = "AutoVoucher"
        }
    }

    /// ModifyDBInstanceChargeType返回参数结构体
    public struct ModifyDBInstanceChargeTypeResponse: TCResponseModel {
        /// 订单名
        public let dealName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }

    /// 修改实例计费类型
    ///
    /// 支持实例的计费类型转换（目前仅支持按量计费转包年包月）
    @inlinable
    public func modifyDBInstanceChargeType(_ input: ModifyDBInstanceChargeTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceChargeTypeResponse> {
        self.client.execute(action: "ModifyDBInstanceChargeType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例计费类型
    ///
    /// 支持实例的计费类型转换（目前仅支持按量计费转包年包月）
    @inlinable
    public func modifyDBInstanceChargeType(_ input: ModifyDBInstanceChargeTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceChargeTypeResponse {
        try await self.client.execute(action: "ModifyDBInstanceChargeType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例计费类型
    ///
    /// 支持实例的计费类型转换（目前仅支持按量计费转包年包月）
    @inlinable
    public func modifyDBInstanceChargeType(dbInstanceId: String, instanceChargeType: String, period: Int64, autoRenewFlag: Int64? = nil, autoVoucher: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceChargeTypeResponse> {
        self.modifyDBInstanceChargeType(.init(dbInstanceId: dbInstanceId, instanceChargeType: instanceChargeType, period: period, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例计费类型
    ///
    /// 支持实例的计费类型转换（目前仅支持按量计费转包年包月）
    @inlinable
    public func modifyDBInstanceChargeType(dbInstanceId: String, instanceChargeType: String, period: Int64, autoRenewFlag: Int64? = nil, autoVoucher: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceChargeTypeResponse {
        try await self.modifyDBInstanceChargeType(.init(dbInstanceId: dbInstanceId, instanceChargeType: instanceChargeType, period: period, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher), region: region, logger: logger, on: eventLoop)
    }
}
