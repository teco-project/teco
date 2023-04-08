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

extension Mariadb {
    /// DescribePrice请求参数结构体
    public struct DescribePriceRequest: TCRequestModel {
        /// 欲新购实例的可用区ID。
        public let zone: String

        /// 实例节点个数，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得。
        public let nodeCount: Int64

        /// 内存大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得。
        public let memory: Int64

        /// 存储空间大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得不同内存大小对应的磁盘规格下限和上限。
        public let storage: Int64

        /// 欲购买的时长，单位：月。
        public let period: Int64?

        /// 欲购买的数量，默认查询购买1个实例的价格。
        public let count: Int64?

        /// 付费类型。postpaid：按量付费   prepaid：预付费
        public let paymode: String?

        /// 价格金额单位，不传默认单位为分，取值：
        /// * pent：分
        /// * microPent：微分
        public let amountUnit: String?

        public init(zone: String, nodeCount: Int64, memory: Int64, storage: Int64, period: Int64? = nil, count: Int64? = nil, paymode: String? = nil, amountUnit: String? = nil) {
            self.zone = zone
            self.nodeCount = nodeCount
            self.memory = memory
            self.storage = storage
            self.period = period
            self.count = count
            self.paymode = paymode
            self.amountUnit = amountUnit
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case nodeCount = "NodeCount"
            case memory = "Memory"
            case storage = "Storage"
            case period = "Period"
            case count = "Count"
            case paymode = "Paymode"
            case amountUnit = "AmountUnit"
        }
    }

    /// DescribePrice返回参数结构体
    public struct DescribePriceResponse: TCResponseModel {
        /// 原价
        /// * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        /// * 币种：国内站为人民币，国际站为美元
        public let originalPrice: Int64

        /// 实际价格，受折扣等影响，可能和原价不同
        /// * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        /// * 币种：国内站人民币，国际站美元
        public let price: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originalPrice = "OriginalPrice"
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 新购实例询价
    ///
    /// 本接口（DescribePrice）用于在购买实例前，查询实例的价格。
    @inlinable
    public func describePrice(_ input: DescribePriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePriceResponse> {
        self.client.execute(action: "DescribePrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新购实例询价
    ///
    /// 本接口（DescribePrice）用于在购买实例前，查询实例的价格。
    @inlinable
    public func describePrice(_ input: DescribePriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePriceResponse {
        try await self.client.execute(action: "DescribePrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新购实例询价
    ///
    /// 本接口（DescribePrice）用于在购买实例前，查询实例的价格。
    @inlinable
    public func describePrice(zone: String, nodeCount: Int64, memory: Int64, storage: Int64, period: Int64? = nil, count: Int64? = nil, paymode: String? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePriceResponse> {
        self.describePrice(.init(zone: zone, nodeCount: nodeCount, memory: memory, storage: storage, period: period, count: count, paymode: paymode, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }

    /// 新购实例询价
    ///
    /// 本接口（DescribePrice）用于在购买实例前，查询实例的价格。
    @inlinable
    public func describePrice(zone: String, nodeCount: Int64, memory: Int64, storage: Int64, period: Int64? = nil, count: Int64? = nil, paymode: String? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePriceResponse {
        try await self.describePrice(.init(zone: zone, nodeCount: nodeCount, memory: memory, storage: storage, period: period, count: count, paymode: paymode, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }
}
