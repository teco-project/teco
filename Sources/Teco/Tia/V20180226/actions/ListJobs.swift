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

extension Tia {
    /// ListJobs请求参数结构体
    public struct ListJobsRequest: TCPaginatedRequest {
        /// 运行任务的集群
        public let cluster: String

        /// 分页参数，返回数量
        public let limit: UInt64?

        /// 分页参数，起始位置
        public let offset: UInt64?

        public init(cluster: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.cluster = cluster
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case cluster = "Cluster"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListJobsResponse) -> ListJobsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListJobsRequest(cluster: self.cluster, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// ListJobs返回参数结构体
    public struct ListJobsResponse: TCPaginatedResponse {
        /// 训练任务列表
        public let jobs: [Job]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobs = "Jobs"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Job] {
            self.jobs
        }
    }

    /// 列举Job
    ///
    /// 列举训练任务
    @inlinable
    public func listJobs(_ input: ListJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsResponse> {
        self.client.execute(action: "ListJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列举Job
    ///
    /// 列举训练任务
    @inlinable
    public func listJobs(_ input: ListJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsResponse {
        try await self.client.execute(action: "ListJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列举Job
    ///
    /// 列举训练任务
    @inlinable
    public func listJobs(cluster: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsResponse> {
        let input = ListJobsRequest(cluster: cluster, limit: limit, offset: offset)
        return self.client.execute(action: "ListJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列举Job
    ///
    /// 列举训练任务
    @inlinable
    public func listJobs(cluster: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsResponse {
        let input = ListJobsRequest(cluster: cluster, limit: limit, offset: offset)
        return try await self.client.execute(action: "ListJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列举Job
    ///
    /// 列举训练任务
    @inlinable
    public func listJobsPaginated(_ input: ListJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [Job])> {
        self.client.paginate(input: input, region: region, command: self.listJobs, logger: logger, on: eventLoop)
    }

    /// 列举Job
    ///
    /// 列举训练任务
    @inlinable @discardableResult
    public func listJobsPaginated(_ input: ListJobsRequest, region: TCRegion? = nil, onResponse: @escaping (ListJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 列举Job
    ///
    /// 列举训练任务
    ///
    /// - Returns: `AsyncSequence`s of `Job` and `ListJobsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listJobsPaginator(_ input: ListJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listJobs, logger: logger, on: eventLoop)
    }
}
