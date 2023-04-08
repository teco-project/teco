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

extension Solar {
    /// ReplenishProjectStock请求参数结构体
    public struct ReplenishProjectStockRequest: TCRequestModel {
        /// 项目id
        public let subProjectId: String

        /// 奖品id
        public let prizeId: String

        /// 奖品数量
        public let prizeNum: UInt64

        /// 奖池索引
        public let poolIndex: UInt64

        /// 奖池名称
        public let poolName: String?

        public init(subProjectId: String, prizeId: String, prizeNum: UInt64, poolIndex: UInt64, poolName: String? = nil) {
            self.subProjectId = subProjectId
            self.prizeId = prizeId
            self.prizeNum = prizeNum
            self.poolIndex = poolIndex
            self.poolName = poolName
        }

        enum CodingKeys: String, CodingKey {
            case subProjectId = "SubProjectId"
            case prizeId = "PrizeId"
            case prizeNum = "PrizeNum"
            case poolIndex = "PoolIndex"
            case poolName = "PoolName"
        }
    }

    /// ReplenishProjectStock返回参数结构体
    public struct ReplenishProjectStockResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 补充（子）项目库存
    ///
    /// 补充子项目库存
    @inlinable @discardableResult
    public func replenishProjectStock(_ input: ReplenishProjectStockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplenishProjectStockResponse> {
        self.client.execute(action: "ReplenishProjectStock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 补充（子）项目库存
    ///
    /// 补充子项目库存
    @inlinable @discardableResult
    public func replenishProjectStock(_ input: ReplenishProjectStockRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplenishProjectStockResponse {
        try await self.client.execute(action: "ReplenishProjectStock", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 补充（子）项目库存
    ///
    /// 补充子项目库存
    @inlinable @discardableResult
    public func replenishProjectStock(subProjectId: String, prizeId: String, prizeNum: UInt64, poolIndex: UInt64, poolName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplenishProjectStockResponse> {
        self.replenishProjectStock(.init(subProjectId: subProjectId, prizeId: prizeId, prizeNum: prizeNum, poolIndex: poolIndex, poolName: poolName), region: region, logger: logger, on: eventLoop)
    }

    /// 补充（子）项目库存
    ///
    /// 补充子项目库存
    @inlinable @discardableResult
    public func replenishProjectStock(subProjectId: String, prizeId: String, prizeNum: UInt64, poolIndex: UInt64, poolName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplenishProjectStockResponse {
        try await self.replenishProjectStock(.init(subProjectId: subProjectId, prizeId: prizeId, prizeNum: prizeNum, poolIndex: poolIndex, poolName: poolName), region: region, logger: logger, on: eventLoop)
    }
}
