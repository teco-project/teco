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

extension Redis {
    /// InquiryPriceRenewInstance请求参数结构体
    public struct InquiryPriceRenewInstanceRequest: TCRequestModel {
        /// 购买时长，单位：月
        public let period: UInt64

        /// 实例ID
        public let instanceId: String

        public init(period: UInt64, instanceId: String) {
            self.period = period
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case period = "Period"
            case instanceId = "InstanceId"
        }
    }

    /// InquiryPriceRenewInstance返回参数结构体
    public struct InquiryPriceRenewInstanceResponse: TCResponseModel {
        /// 价格，单位：分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let price: Float?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 查询实例续费价格（包年包月）
    @inlinable
    public func inquiryPriceRenewInstance(_ input: InquiryPriceRenewInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewInstanceResponse> {
        self.client.execute(action: "InquiryPriceRenewInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例续费价格（包年包月）
    @inlinable
    public func inquiryPriceRenewInstance(_ input: InquiryPriceRenewInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewInstanceResponse {
        try await self.client.execute(action: "InquiryPriceRenewInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例续费价格（包年包月）
    @inlinable
    public func inquiryPriceRenewInstance(period: UInt64, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewInstanceResponse> {
        self.inquiryPriceRenewInstance(InquiryPriceRenewInstanceRequest(period: period, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例续费价格（包年包月）
    @inlinable
    public func inquiryPriceRenewInstance(period: UInt64, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewInstanceResponse {
        try await self.inquiryPriceRenewInstance(InquiryPriceRenewInstanceRequest(period: period, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
