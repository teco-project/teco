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
import TecoPaginationHelpers

extension Emr {
    /// DescribeImpalaQueries请求参数结构体
    public struct DescribeImpalaQueriesRequest: TCPaginatedRequest {
        /// 集群ID
        public let instanceId: String

        /// 起始时间秒
        public let startTime: Int64

        /// 结束时间秒，EndTime-StartTime不得超过1天秒数86400
        public let endTime: Int64

        /// 分页起始偏移，从0开始
        public let offset: Int64

        /// 分页大小，合法范围[1,100]
        public let limit: Int64

        public init(instanceId: String, startTime: Int64, endTime: Int64, offset: Int64, limit: Int64) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImpalaQueriesResponse) -> DescribeImpalaQueriesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImpalaQueriesRequest(instanceId: self.instanceId, startTime: self.startTime, endTime: self.endTime, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeImpalaQueries返回参数结构体
    public struct DescribeImpalaQueriesResponse: TCPaginatedResponse {
        /// 总数
        public let total: Int64

        /// 结果列表
        public let results: [ImpalaQuery]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case results = "Results"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ImpalaQuery`` list from the paginated response.
        public func getItems() -> [ImpalaQuery] {
            self.results
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取Impala查询列表
    ///
    /// DescribeImpalaQueries
    @inlinable
    public func describeImpalaQueries(_ input: DescribeImpalaQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImpalaQueriesResponse> {
        self.client.execute(action: "DescribeImpalaQueries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Impala查询列表
    ///
    /// DescribeImpalaQueries
    @inlinable
    public func describeImpalaQueries(_ input: DescribeImpalaQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImpalaQueriesResponse {
        try await self.client.execute(action: "DescribeImpalaQueries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Impala查询列表
    ///
    /// DescribeImpalaQueries
    @inlinable
    public func describeImpalaQueries(instanceId: String, startTime: Int64, endTime: Int64, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImpalaQueriesResponse> {
        self.describeImpalaQueries(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Impala查询列表
    ///
    /// DescribeImpalaQueries
    @inlinable
    public func describeImpalaQueries(instanceId: String, startTime: Int64, endTime: Int64, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImpalaQueriesResponse {
        try await self.describeImpalaQueries(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Impala查询列表
    ///
    /// DescribeImpalaQueries
    @inlinable
    public func describeImpalaQueriesPaginated(_ input: DescribeImpalaQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ImpalaQuery])> {
        self.client.paginate(input: input, region: region, command: self.describeImpalaQueries, logger: logger, on: eventLoop)
    }

    /// 获取Impala查询列表
    ///
    /// DescribeImpalaQueries
    @inlinable @discardableResult
    public func describeImpalaQueriesPaginated(_ input: DescribeImpalaQueriesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImpalaQueriesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImpalaQueries, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取Impala查询列表
    ///
    /// DescribeImpalaQueries
    ///
    /// - Returns: `AsyncSequence`s of `ImpalaQuery` and `DescribeImpalaQueriesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImpalaQueriesPaginator(_ input: DescribeImpalaQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImpalaQueriesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImpalaQueries, logger: logger, on: eventLoop)
    }
}
