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

extension Sqlserver {
    /// InquiryPriceRenewDBInstance请求参数结构体
    public struct InquiryPriceRenewDBInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 续费周期。按月续费最多48个月。默认查询续费一个月的价格
        public let period: UInt64?

        /// 续费周期单位。month表示按月续费，当前只支持按月付费查询价格
        public let timeUnit: String?

        public init(instanceId: String, period: UInt64? = nil, timeUnit: String? = nil) {
            self.instanceId = instanceId
            self.period = period
            self.timeUnit = timeUnit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case period = "Period"
            case timeUnit = "TimeUnit"
        }
    }

    /// InquiryPriceRenewDBInstance返回参数结构体
    public struct InquiryPriceRenewDBInstanceResponse: TCResponseModel {
        /// 未打折的原价，其值除以100表示最终的价格。例如10094表示100.94元
        public let originalPrice: UInt64

        /// 实际需要支付价格，其值除以100表示最终的价格。例如10094表示100.94元
        public let price: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originalPrice = "OriginalPrice"
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 查询实例续费价格
    ///
    /// 本接口（InquiryPriceRenewDBInstance）用于查询续费实例的价格。
    @inlinable
    public func inquiryPriceRenewDBInstance(_ input: InquiryPriceRenewDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewDBInstanceResponse> {
        self.client.execute(action: "InquiryPriceRenewDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例续费价格
    ///
    /// 本接口（InquiryPriceRenewDBInstance）用于查询续费实例的价格。
    @inlinable
    public func inquiryPriceRenewDBInstance(_ input: InquiryPriceRenewDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewDBInstanceResponse {
        try await self.client.execute(action: "InquiryPriceRenewDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例续费价格
    ///
    /// 本接口（InquiryPriceRenewDBInstance）用于查询续费实例的价格。
    @inlinable
    public func inquiryPriceRenewDBInstance(instanceId: String, period: UInt64? = nil, timeUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewDBInstanceResponse> {
        self.inquiryPriceRenewDBInstance(.init(instanceId: instanceId, period: period, timeUnit: timeUnit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例续费价格
    ///
    /// 本接口（InquiryPriceRenewDBInstance）用于查询续费实例的价格。
    @inlinable
    public func inquiryPriceRenewDBInstance(instanceId: String, period: UInt64? = nil, timeUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewDBInstanceResponse {
        try await self.inquiryPriceRenewDBInstance(.init(instanceId: instanceId, period: period, timeUnit: timeUnit), region: region, logger: logger, on: eventLoop)
    }
}
