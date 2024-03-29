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

extension Dcdb {
    /// DescribeDCDBPrice请求参数结构体
    public struct DescribeDCDBPriceRequest: TCRequest {
        /// 欲新购实例的可用区ID。
        public let zone: String

        /// 欲购买实例的数量，目前支持购买1-10个实例
        public let count: Int64

        /// 欲购买的时长，单位：月。
        public let period: Int64

        /// 单个分片节点个数大小，可以通过 DescribeShardSpec
        ///  查询实例规格获得。
        public let shardNodeCount: Int64

        /// 分片内存大小，单位：GB，可以通过 DescribeShardSpec
        ///  查询实例规格获得。
        public let shardMemory: Int64

        /// 分片存储空间大小，单位：GB，可以通过 DescribeShardSpec
        ///  查询实例规格获得。
        public let shardStorage: Int64

        /// 实例分片个数，可选范围2-8，可以通过升级实例进行新增分片到最多64个分片。
        public let shardCount: Int64

        /// 付费类型。postpaid：按量付费   prepaid：预付费
        public let paymode: String?

        /// 价格金额单位，不传默认单位为分，取值：
        /// * pent：分
        /// * microPent：微分
        public let amountUnit: String?

        public init(zone: String, count: Int64, period: Int64, shardNodeCount: Int64, shardMemory: Int64, shardStorage: Int64, shardCount: Int64, paymode: String? = nil, amountUnit: String? = nil) {
            self.zone = zone
            self.count = count
            self.period = period
            self.shardNodeCount = shardNodeCount
            self.shardMemory = shardMemory
            self.shardStorage = shardStorage
            self.shardCount = shardCount
            self.paymode = paymode
            self.amountUnit = amountUnit
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case count = "Count"
            case period = "Period"
            case shardNodeCount = "ShardNodeCount"
            case shardMemory = "ShardMemory"
            case shardStorage = "ShardStorage"
            case shardCount = "ShardCount"
            case paymode = "Paymode"
            case amountUnit = "AmountUnit"
        }
    }

    /// DescribeDCDBPrice返回参数结构体
    public struct DescribeDCDBPriceResponse: TCResponse {
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

    /// 新购分布式数据库实例询价
    ///
    /// 本接口（DescribeDCDBPrice）用于在购买实例前，查询实例的价格。
    @inlinable
    public func describeDCDBPrice(_ input: DescribeDCDBPriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBPriceResponse> {
        self.client.execute(action: "DescribeDCDBPrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新购分布式数据库实例询价
    ///
    /// 本接口（DescribeDCDBPrice）用于在购买实例前，查询实例的价格。
    @inlinable
    public func describeDCDBPrice(_ input: DescribeDCDBPriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBPriceResponse {
        try await self.client.execute(action: "DescribeDCDBPrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新购分布式数据库实例询价
    ///
    /// 本接口（DescribeDCDBPrice）用于在购买实例前，查询实例的价格。
    @inlinable
    public func describeDCDBPrice(zone: String, count: Int64, period: Int64, shardNodeCount: Int64, shardMemory: Int64, shardStorage: Int64, shardCount: Int64, paymode: String? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBPriceResponse> {
        self.describeDCDBPrice(.init(zone: zone, count: count, period: period, shardNodeCount: shardNodeCount, shardMemory: shardMemory, shardStorage: shardStorage, shardCount: shardCount, paymode: paymode, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }

    /// 新购分布式数据库实例询价
    ///
    /// 本接口（DescribeDCDBPrice）用于在购买实例前，查询实例的价格。
    @inlinable
    public func describeDCDBPrice(zone: String, count: Int64, period: Int64, shardNodeCount: Int64, shardMemory: Int64, shardStorage: Int64, shardCount: Int64, paymode: String? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBPriceResponse {
        try await self.describeDCDBPrice(.init(zone: zone, count: count, period: period, shardNodeCount: shardNodeCount, shardMemory: shardMemory, shardStorage: shardStorage, shardCount: shardCount, paymode: paymode, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }
}
