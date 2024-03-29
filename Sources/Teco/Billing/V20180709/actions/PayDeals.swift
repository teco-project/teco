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

extension Billing {
    /// PayDeals请求参数结构体
    public struct PayDealsRequest: TCRequest {
        /// 需要支付的一个或者多个子订单号，与BigDealIds字段两者必须且仅传一个参数
        public let orderIds: [String]?

        /// 是否自动使用代金券,1:是,0否,默认0
        public let autoVoucher: Int64?

        /// 代金券ID列表,目前仅支持指定一张代金券
        public let voucherIds: [String]?

        /// 需要支付的一个或者多个大订单号，与OrderIds字段两者必须且仅传一个参数
        public let bigDealIds: [String]?

        public init(orderIds: [String]? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, bigDealIds: [String]? = nil) {
            self.orderIds = orderIds
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.bigDealIds = bigDealIds
        }

        enum CodingKeys: String, CodingKey {
            case orderIds = "OrderIds"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case bigDealIds = "BigDealIds"
        }
    }

    /// PayDeals返回参数结构体
    public struct PayDealsResponse: TCResponse {
        /// 此次操作支付成功的子订单号数组
        public let orderIds: [String]

        /// 此次操作支付成功的资源Id数组
        public let resourceIds: [String]

        /// 此次操作支付成功的大订单号数组
        public let bigDealIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orderIds = "OrderIds"
            case resourceIds = "ResourceIds"
            case bigDealIds = "BigDealIds"
            case requestId = "RequestId"
        }
    }

    /// 支付订单
    @inlinable
    public func payDeals(_ input: PayDealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PayDealsResponse> {
        self.client.execute(action: "PayDeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 支付订单
    @inlinable
    public func payDeals(_ input: PayDealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PayDealsResponse {
        try await self.client.execute(action: "PayDeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 支付订单
    @inlinable
    public func payDeals(orderIds: [String]? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, bigDealIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PayDealsResponse> {
        self.payDeals(.init(orderIds: orderIds, autoVoucher: autoVoucher, voucherIds: voucherIds, bigDealIds: bigDealIds), region: region, logger: logger, on: eventLoop)
    }

    /// 支付订单
    @inlinable
    public func payDeals(orderIds: [String]? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, bigDealIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PayDealsResponse {
        try await self.payDeals(.init(orderIds: orderIds, autoVoucher: autoVoucher, voucherIds: voucherIds, bigDealIds: bigDealIds), region: region, logger: logger, on: eventLoop)
    }
}
