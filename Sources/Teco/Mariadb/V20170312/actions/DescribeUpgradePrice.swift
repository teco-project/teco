//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Mariadb {
    /// DescribeUpgradePrice请求参数结构体
    public struct DescribeUpgradePriceRequest: TCRequestModel {
        /// 待升级的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 内存大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得。
        public let memory: Int64

        /// 存储空间大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        ///  查询实例规格获得不同内存大小对应的磁盘规格下限和上限。
        public let storage: Int64

        /// 新节点数，传0表示节点数不变
        public let nodeCount: Int64?

        /// 价格金额单位，不传默认单位为分，取值：
        /// * pent：分
        /// * microPent：微分
        public let amountUnit: String?

        public init(instanceId: String, memory: Int64, storage: Int64, nodeCount: Int64? = nil, amountUnit: String? = nil) {
            self.instanceId = instanceId
            self.memory = memory
            self.storage = storage
            self.nodeCount = nodeCount
            self.amountUnit = amountUnit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case memory = "Memory"
            case storage = "Storage"
            case nodeCount = "NodeCount"
            case amountUnit = "AmountUnit"
        }
    }

    /// DescribeUpgradePrice返回参数结构体
    public struct DescribeUpgradePriceResponse: TCResponseModel {
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

    /// 变配实例询价
    ///
    /// 本接口（DescribeUpgradePrice）用于在扩容云数据库实例时，查询变配的价格。
    @inlinable
    public func describeUpgradePrice(_ input: DescribeUpgradePriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUpgradePriceResponse> {
        self.client.execute(action: "DescribeUpgradePrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 变配实例询价
    ///
    /// 本接口（DescribeUpgradePrice）用于在扩容云数据库实例时，查询变配的价格。
    @inlinable
    public func describeUpgradePrice(_ input: DescribeUpgradePriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUpgradePriceResponse {
        try await self.client.execute(action: "DescribeUpgradePrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 变配实例询价
    ///
    /// 本接口（DescribeUpgradePrice）用于在扩容云数据库实例时，查询变配的价格。
    @inlinable
    public func describeUpgradePrice(instanceId: String, memory: Int64, storage: Int64, nodeCount: Int64? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUpgradePriceResponse> {
        self.describeUpgradePrice(DescribeUpgradePriceRequest(instanceId: instanceId, memory: memory, storage: storage, nodeCount: nodeCount, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }

    /// 变配实例询价
    ///
    /// 本接口（DescribeUpgradePrice）用于在扩容云数据库实例时，查询变配的价格。
    @inlinable
    public func describeUpgradePrice(instanceId: String, memory: Int64, storage: Int64, nodeCount: Int64? = nil, amountUnit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUpgradePriceResponse {
        try await self.describeUpgradePrice(DescribeUpgradePriceRequest(instanceId: instanceId, memory: memory, storage: storage, nodeCount: nodeCount, amountUnit: amountUnit), region: region, logger: logger, on: eventLoop)
    }
}
