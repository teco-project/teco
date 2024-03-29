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
    /// DescribeDCDBUpgradePrice请求参数结构体
    public struct DescribeDCDBUpgradePriceRequest: TCRequest {
        /// 待升级的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 升级类型，取值范围:
        /// - ADD: 新增分片
        /// - EXPAND: 升级实例中的已有分片
        /// - SPLIT: 将已有分片中的数据切分到新增分片上
        public let upgradeType: String

        /// 新增分片配置，当UpgradeType为ADD时生效。
        public let addShardConfig: AddShardConfig?

        /// 扩容分片配置，当UpgradeType为EXPAND时生效。
        public let expandShardConfig: ExpandShardConfig?

        /// 切分分片配置，当UpgradeType为SPLIT时生效。
        public let splitShardConfig: SplitShardConfig?

        /// 价格金额单位，不传默认单位为分，取值：
        /// * pent：分
        /// * microPent：微分
        public let amountUnit: String?

        public init(instanceId: String, upgradeType: String, addShardConfig: AddShardConfig? = nil, expandShardConfig: ExpandShardConfig? = nil, splitShardConfig: SplitShardConfig? = nil, amountUnit: String? = nil) {
            self.instanceId = instanceId
            self.upgradeType = upgradeType
            self.addShardConfig = addShardConfig
            self.expandShardConfig = expandShardConfig
            self.splitShardConfig = splitShardConfig
            self.amountUnit = amountUnit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case upgradeType = "UpgradeType"
            case addShardConfig = "AddShardConfig"
            case expandShardConfig = "ExpandShardConfig"
            case splitShardConfig = "SplitShardConfig"
            case amountUnit = "AmountUnit"
        }
    }

    /// DescribeDCDBUpgradePrice返回参数结构体
    public struct DescribeDCDBUpgradePriceResponse: TCResponse {
        /// 原价
        /// * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        /// * 币种：国内站为人民币，国际站为美元
        public let originalPrice: Int64

        /// 实际价格，受折扣等影响，可能和原价不同
        /// * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        /// * 币种：国内站人民币，国际站美元
        public let price: Int64

        /// 变配明细计算公式
        public let formula: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originalPrice = "OriginalPrice"
            case price = "Price"
            case formula = "Formula"
            case requestId = "RequestId"
        }
    }

    /// 查询变配分布式数据库实例价格
    ///
    /// 本接口（DescribeDCDBUpgradePrice）用于查询变配分布式数据库实例价格。
    @inlinable
    public func describeDCDBUpgradePrice(_ input: DescribeDCDBUpgradePriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBUpgradePriceResponse> {
        self.client.execute(action: "DescribeDCDBUpgradePrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询变配分布式数据库实例价格
    ///
    /// 本接口（DescribeDCDBUpgradePrice）用于查询变配分布式数据库实例价格。
    @inlinable
    public func describeDCDBUpgradePrice(_ input: DescribeDCDBUpgradePriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBUpgradePriceResponse {
        try await self.client.execute(action: "DescribeDCDBUpgradePrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询变配分布式数据库实例价格
    ///
    /// 本接口（DescribeDCDBUpgradePrice）用于查询变配分布式数据库实例价格。
    @inlinable
    public func describeDCDBUpgradePrice(instanceId: String, upgradeType: String, addShardConfig: AddShardConfig? = nil, expandShardConfig: ExpandShardConfig? = nil, splitShardConfig: SplitShardConfig? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBUpgradePriceResponse> {
        self.describeDCDBUpgradePrice(.init(instanceId: instanceId, upgradeType: upgradeType, addShardConfig: addShardConfig, expandShardConfig: expandShardConfig, splitShardConfig: splitShardConfig, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询变配分布式数据库实例价格
    ///
    /// 本接口（DescribeDCDBUpgradePrice）用于查询变配分布式数据库实例价格。
    @inlinable
    public func describeDCDBUpgradePrice(instanceId: String, upgradeType: String, addShardConfig: AddShardConfig? = nil, expandShardConfig: ExpandShardConfig? = nil, splitShardConfig: SplitShardConfig? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBUpgradePriceResponse {
        try await self.describeDCDBUpgradePrice(.init(instanceId: instanceId, upgradeType: upgradeType, addShardConfig: addShardConfig, expandShardConfig: expandShardConfig, splitShardConfig: splitShardConfig, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }
}
