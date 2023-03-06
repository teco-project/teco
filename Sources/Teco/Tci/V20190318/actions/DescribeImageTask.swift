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

extension Tci {
    /// DescribeImageTask请求参数结构体
    public struct DescribeImageTaskRequest: TCPaginatedRequest {
        /// 任务标识符
        public let jobId: Int64

        /// 限制数目
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        public init(jobId: Int64, limit: Int64? = nil, offset: Int64? = nil) {
            self.jobId = jobId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImageTaskResponse) -> DescribeImageTaskRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImageTaskRequest(jobId: self.jobId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeImageTask返回参数结构体
    public struct DescribeImageTaskResponse: TCPaginatedResponse {
        /// 任务处理结果
        public let resultSet: [ImageTaskResult]

        /// 任务唯一标识
        public let jobId: Int64

        /// 任务执行进度
        public let progress: Int64

        /// 任务结果数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultSet = "ResultSet"
            case jobId = "JobId"
            case progress = "Progress"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImageTaskResult] {
            self.resultSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 拉取任务详情
    @inlinable
    public func describeImageTask(_ input: DescribeImageTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageTaskResponse> {
        self.client.execute(action: "DescribeImageTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取任务详情
    @inlinable
    public func describeImageTask(_ input: DescribeImageTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageTaskResponse {
        try await self.client.execute(action: "DescribeImageTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取任务详情
    @inlinable
    public func describeImageTask(jobId: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageTaskResponse> {
        let input = DescribeImageTaskRequest(jobId: jobId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeImageTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取任务详情
    @inlinable
    public func describeImageTask(jobId: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageTaskResponse {
        let input = DescribeImageTaskRequest(jobId: jobId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeImageTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取任务详情
    @inlinable
    public func describeImageTaskPaginated(_ input: DescribeImageTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ImageTaskResult])> {
        self.client.paginate(input: input, region: region, command: self.describeImageTask, logger: logger, on: eventLoop)
    }

    /// 拉取任务详情
    @inlinable @discardableResult
    public func describeImageTaskPaginated(_ input: DescribeImageTaskRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImageTaskResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImageTask, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取任务详情
    ///
    /// - Returns: `AsyncSequence`s of `ImageTaskResult` and `DescribeImageTaskResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImageTaskPaginator(_ input: DescribeImageTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImageTaskRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImageTask, logger: logger, on: eventLoop)
    }
}
