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

extension Cynosdb {
    /// InquirePriceRenew请求参数结构体
    public struct InquirePriceRenewRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 购买时长,与TimeUnit组合才能生效
        public let timeSpan: Int64

        /// 购买时长单位, 与TimeSpan组合生效，可选:日:d,月:m
        public let timeUnit: String

        public init(clusterId: String, timeSpan: Int64, timeUnit: String) {
            self.clusterId = clusterId
            self.timeSpan = timeSpan
            self.timeUnit = timeUnit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case timeSpan = "TimeSpan"
            case timeUnit = "TimeUnit"
        }
    }

    /// InquirePriceRenew返回参数结构体
    public struct InquirePriceRenewResponse: TCResponse {
        /// 集群ID
        public let clusterId: String

        /// 实例ID列表
        public let instanceIds: [String]

        /// 对应的询价结果数组
        public let prices: [TradePrice]

        /// 续费计算节点的总价格
        public let instanceRealTotalPrice: Int64

        /// 续费存储节点的总价格
        public let storageRealTotalPrice: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIds = "InstanceIds"
            case prices = "Prices"
            case instanceRealTotalPrice = "InstanceRealTotalPrice"
            case storageRealTotalPrice = "StorageRealTotalPrice"
            case requestId = "RequestId"
        }
    }

    /// 续费集群询价
    ///
    /// 查询续费集群价格
    @inlinable
    public func inquirePriceRenew(_ input: InquirePriceRenewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceRenewResponse> {
        self.client.execute(action: "InquirePriceRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费集群询价
    ///
    /// 查询续费集群价格
    @inlinable
    public func inquirePriceRenew(_ input: InquirePriceRenewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceRenewResponse {
        try await self.client.execute(action: "InquirePriceRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费集群询价
    ///
    /// 查询续费集群价格
    @inlinable
    public func inquirePriceRenew(clusterId: String, timeSpan: Int64, timeUnit: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceRenewResponse> {
        self.inquirePriceRenew(.init(clusterId: clusterId, timeSpan: timeSpan, timeUnit: timeUnit), region: region, logger: logger, on: eventLoop)
    }

    /// 续费集群询价
    ///
    /// 查询续费集群价格
    @inlinable
    public func inquirePriceRenew(clusterId: String, timeSpan: Int64, timeUnit: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceRenewResponse {
        try await self.inquirePriceRenew(.init(clusterId: clusterId, timeSpan: timeSpan, timeUnit: timeUnit), region: region, logger: logger, on: eventLoop)
    }
}
