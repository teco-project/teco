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

extension Dbbrain {
    /// DescribeIndexRecommendInfo请求参数结构体
    public struct DescribeIndexRecommendInfoRequest: TCRequest {
        /// 服务产品类型，支持值包括："mongodb" - 云数据库 。
        public let product: String

        /// 实例ID。
        public let instanceId: String

        public init(product: String, instanceId: String) {
            self.product = product
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case instanceId = "InstanceId"
        }
    }

    /// DescribeIndexRecommendInfo返回参数结构体
    public struct DescribeIndexRecommendInfoResponse: TCResponse {
        /// 索引推荐的集合数量。
        public let collectionNum: Int64

        /// 索引推荐的索引数量。
        public let indexNum: Int64

        /// 索引项。
        public let items: [MongoDBIndex]

        /// 优化级别，1-4，优先级从高到低。
        public let level: Int64

        /// 历史优化数。
        public let optimized: Int64

        /// 累计优化条数。
        public let optimizedCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case collectionNum = "CollectionNum"
            case indexNum = "IndexNum"
            case items = "Items"
            case level = "Level"
            case optimized = "Optimized"
            case optimizedCount = "OptimizedCount"
            case requestId = "RequestId"
        }
    }

    /// 查询实例的索引推荐信息
    ///
    /// 查询实例的索引推荐信息，包括索引统计相关信息，推荐索引列表，无效索引列表等。
    @inlinable
    public func describeIndexRecommendInfo(_ input: DescribeIndexRecommendInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexRecommendInfoResponse> {
        self.client.execute(action: "DescribeIndexRecommendInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例的索引推荐信息
    ///
    /// 查询实例的索引推荐信息，包括索引统计相关信息，推荐索引列表，无效索引列表等。
    @inlinable
    public func describeIndexRecommendInfo(_ input: DescribeIndexRecommendInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexRecommendInfoResponse {
        try await self.client.execute(action: "DescribeIndexRecommendInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例的索引推荐信息
    ///
    /// 查询实例的索引推荐信息，包括索引统计相关信息，推荐索引列表，无效索引列表等。
    @inlinable
    public func describeIndexRecommendInfo(product: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexRecommendInfoResponse> {
        self.describeIndexRecommendInfo(.init(product: product, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例的索引推荐信息
    ///
    /// 查询实例的索引推荐信息，包括索引统计相关信息，推荐索引列表，无效索引列表等。
    @inlinable
    public func describeIndexRecommendInfo(product: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexRecommendInfoResponse {
        try await self.describeIndexRecommendInfo(.init(product: product, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
