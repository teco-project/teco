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

import Logging
import NIOCore
import TecoCore

extension Postgres {
    /// RenewInstance请求参数结构体
    public struct RenewInstanceRequest: TCRequestModel {
        /// 实例ID，形如postgres-6fego161
        public let dbInstanceId: String

        /// 续费多少个月
        public let period: Int64

        /// 是否自动使用代金券,1是,0否，默认不使用
        public let autoVoucher: Int64?

        /// 代金券ID列表，目前仅支持指定一张代金券
        public let voucherIds: [String]?

        public init(dbInstanceId: String, period: Int64, autoVoucher: Int64? = nil, voucherIds: [String]? = nil) {
            self.dbInstanceId = dbInstanceId
            self.period = period
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case period = "Period"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
        }
    }

    /// RenewInstance返回参数结构体
    public struct RenewInstanceResponse: TCResponseModel {
        /// 订单名
        public let dealName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }

    /// 续费实例
    ///
    /// 本接口（RenewInstance）用于续费实例。
    @inlinable
    public func renewInstance(_ input: RenewInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewInstanceResponse> {
        self.client.execute(action: "RenewInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费实例
    ///
    /// 本接口（RenewInstance）用于续费实例。
    @inlinable
    public func renewInstance(_ input: RenewInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewInstanceResponse {
        try await self.client.execute(action: "RenewInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费实例
    ///
    /// 本接口（RenewInstance）用于续费实例。
    @inlinable
    public func renewInstance(dbInstanceId: String, period: Int64, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewInstanceResponse> {
        self.renewInstance(.init(dbInstanceId: dbInstanceId, period: period, autoVoucher: autoVoucher, voucherIds: voucherIds), region: region, logger: logger, on: eventLoop)
    }

    /// 续费实例
    ///
    /// 本接口（RenewInstance）用于续费实例。
    @inlinable
    public func renewInstance(dbInstanceId: String, period: Int64, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewInstanceResponse {
        try await self.renewInstance(.init(dbInstanceId: dbInstanceId, period: period, autoVoucher: autoVoucher, voucherIds: voucherIds), region: region, logger: logger, on: eventLoop)
    }
}
