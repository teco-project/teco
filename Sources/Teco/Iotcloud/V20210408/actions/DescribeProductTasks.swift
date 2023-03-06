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

import TecoPaginationHelpers

extension Iotcloud {
    /// DescribeProductTasks请求参数结构体
    public struct DescribeProductTasksRequest: TCPaginatedRequest {
        /// 产品ID
        public let productId: String

        /// 产品级别任务列表偏移量
        public let offset: UInt64

        /// 产品级别任务列表拉取个数
        public let limit: UInt64

        public init(productId: String, offset: UInt64, limit: UInt64) {
            self.productId = productId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeProductTasksResponse) -> DescribeProductTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProductTasksRequest(productId: self.productId, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeProductTasks返回参数结构体
    public struct DescribeProductTasksResponse: TCPaginatedResponse {
        /// 符合条件的任务总个数
        public let totalCount: UInt64

        /// 任务详细信息列表
        public let taskInfos: [ProductTaskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case taskInfos = "TaskInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProductTaskInfo] {
            self.taskInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取产品级任务列表
    ///
    /// 本接口（DescribeProductTasks）用于查看产品级别的任务列表
    @inlinable
    public func describeProductTasks(_ input: DescribeProductTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductTasksResponse> {
        self.client.execute(action: "DescribeProductTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品级任务列表
    ///
    /// 本接口（DescribeProductTasks）用于查看产品级别的任务列表
    @inlinable
    public func describeProductTasks(_ input: DescribeProductTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductTasksResponse {
        try await self.client.execute(action: "DescribeProductTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品级任务列表
    ///
    /// 本接口（DescribeProductTasks）用于查看产品级别的任务列表
    @inlinable
    public func describeProductTasks(productId: String, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductTasksResponse> {
        let input = DescribeProductTasksRequest(productId: productId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeProductTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品级任务列表
    ///
    /// 本接口（DescribeProductTasks）用于查看产品级别的任务列表
    @inlinable
    public func describeProductTasks(productId: String, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductTasksResponse {
        let input = DescribeProductTasksRequest(productId: productId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeProductTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品级任务列表
    ///
    /// 本接口（DescribeProductTasks）用于查看产品级别的任务列表
    @inlinable
    public func describeProductTasksPaginated(_ input: DescribeProductTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProductTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeProductTasks, logger: logger, on: eventLoop)
    }

    /// 获取产品级任务列表
    ///
    /// 本接口（DescribeProductTasks）用于查看产品级别的任务列表
    @inlinable @discardableResult
    public func describeProductTasksPaginated(_ input: DescribeProductTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProductTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProductTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取产品级任务列表
    ///
    /// 本接口（DescribeProductTasks）用于查看产品级别的任务列表
    ///
    /// - Returns: `AsyncSequence`s of `ProductTaskInfo` and `DescribeProductTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProductTasksPaginator(_ input: DescribeProductTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProductTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProductTasks, logger: logger, on: eventLoop)
    }
}
