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

extension Cpdp {
    /// DeduceQuota请求参数结构体
    public struct DeduceQuotaRequest: TCRequest {
        /// 主播ID
        public let anchorId: String

        /// 提现金额，单位为"分"
        public let amount: Int64

        /// 外部业务订单号
        public let orderId: String

        public init(anchorId: String, amount: Int64, orderId: String) {
            self.anchorId = anchorId
            self.amount = amount
            self.orderId = orderId
        }

        enum CodingKeys: String, CodingKey {
            case anchorId = "AnchorId"
            case amount = "Amount"
            case orderId = "OrderId"
        }
    }

    /// DeduceQuota返回参数结构体
    public struct DeduceQuotaResponse: TCResponse {
        /// 错误码。响应成功："SUCCESS"，其他为不成功。
        public let errCode: String

        /// 响应消息
        public let errMsg: String

        /// 返回响应
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: AssignmentData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMsg = "ErrMsg"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 直播平台-扣减额度
    @inlinable
    public func deduceQuota(_ input: DeduceQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeduceQuotaResponse> {
        self.client.execute(action: "DeduceQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播平台-扣减额度
    @inlinable
    public func deduceQuota(_ input: DeduceQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeduceQuotaResponse {
        try await self.client.execute(action: "DeduceQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播平台-扣减额度
    @inlinable
    public func deduceQuota(anchorId: String, amount: Int64, orderId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeduceQuotaResponse> {
        self.deduceQuota(.init(anchorId: anchorId, amount: amount, orderId: orderId), region: region, logger: logger, on: eventLoop)
    }

    /// 直播平台-扣减额度
    @inlinable
    public func deduceQuota(anchorId: String, amount: Int64, orderId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeduceQuotaResponse {
        try await self.deduceQuota(.init(anchorId: anchorId, amount: amount, orderId: orderId), region: region, logger: logger, on: eventLoop)
    }
}
