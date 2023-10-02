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

extension Iotvideo {
    /// DescribeAIModelUsage请求参数结构体
    public struct DescribeAIModelUsageRequest: TCPaginatedRequest {
        /// 模型ID
        public let modelId: String

        /// 产品ID
        public let productId: String

        /// 偏移量，从0开始
        public let offset: UInt64

        /// 分页的大小，最大100
        public let limit: UInt64

        public init(modelId: String, productId: String, offset: UInt64, limit: UInt64) {
            self.modelId = modelId
            self.productId = productId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case productId = "ProductId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAIModelUsageResponse) -> DescribeAIModelUsageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(modelId: self.modelId, productId: self.productId, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAIModelUsage返回参数结构体
    public struct DescribeAIModelUsageResponse: TCPaginatedResponse {
        /// AI模型资源包总量
        public let totalCount: UInt64

        /// AI模型资源包信息数组
        public let usageInfo: [AIModelUsageInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case usageInfo = "UsageInfo"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AIModelUsageInfo`` list from the paginated response.
        public func getItems() -> [AIModelUsageInfo] {
            self.usageInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查看AI模型资源包
    @inlinable
    public func describeAIModelUsage(_ input: DescribeAIModelUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIModelUsageResponse> {
        self.client.execute(action: "DescribeAIModelUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看AI模型资源包
    @inlinable
    public func describeAIModelUsage(_ input: DescribeAIModelUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIModelUsageResponse {
        try await self.client.execute(action: "DescribeAIModelUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看AI模型资源包
    @inlinable
    public func describeAIModelUsage(modelId: String, productId: String, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIModelUsageResponse> {
        self.describeAIModelUsage(.init(modelId: modelId, productId: productId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看AI模型资源包
    @inlinable
    public func describeAIModelUsage(modelId: String, productId: String, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIModelUsageResponse {
        try await self.describeAIModelUsage(.init(modelId: modelId, productId: productId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看AI模型资源包
    @inlinable
    public func describeAIModelUsagePaginated(_ input: DescribeAIModelUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AIModelUsageInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAIModelUsage, logger: logger, on: eventLoop)
    }

    /// 查看AI模型资源包
    @inlinable @discardableResult
    public func describeAIModelUsagePaginated(_ input: DescribeAIModelUsageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAIModelUsageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAIModelUsage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看AI模型资源包
    ///
    /// - Returns: `AsyncSequence`s of ``AIModelUsageInfo`` and ``DescribeAIModelUsageResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAIModelUsagePaginator(_ input: DescribeAIModelUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAIModelUsageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAIModelUsage, logger: logger, on: eventLoop)
    }
}
