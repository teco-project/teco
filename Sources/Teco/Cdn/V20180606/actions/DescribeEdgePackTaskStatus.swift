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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Cdn {
    /// DescribeEdgePackTaskStatus请求参数结构体
    public struct DescribeEdgePackTaskStatusRequest: TCPaginatedRequest {
        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 分页查询限制数目，默认为 100，最大可设置为 1000
        public let limit: Int64?

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 查询条件过滤器
        public let filters: [EdgePackTaskFilter]?

        public init(startTime: Date, endTime: Date, limit: Int64? = nil, offset: Int64? = nil, filters: [EdgePackTaskFilter]? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEdgePackTaskStatusResponse) -> DescribeEdgePackTaskStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEdgePackTaskStatusRequest(startTime: self.startTime, endTime: self.endTime, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeEdgePackTaskStatus返回参数结构体
    public struct DescribeEdgePackTaskStatusResponse: TCPaginatedResponse {
        /// 动态打包任务状态列表
        public let edgePackTaskStatusSet: [EdgePackTaskStatus]

        /// 总数，用于分页查询
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case edgePackTaskStatusSet = "EdgePackTaskStatusSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [EdgePackTaskStatus] {
            self.edgePackTaskStatusSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询动态打包任务状态列表
    ///
    /// DescribeEdgePackTaskStatus 用于查询动态打包任务状态列表
    @inlinable
    public func describeEdgePackTaskStatus(_ input: DescribeEdgePackTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgePackTaskStatusResponse> {
        self.client.execute(action: "DescribeEdgePackTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询动态打包任务状态列表
    ///
    /// DescribeEdgePackTaskStatus 用于查询动态打包任务状态列表
    @inlinable
    public func describeEdgePackTaskStatus(_ input: DescribeEdgePackTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgePackTaskStatusResponse {
        try await self.client.execute(action: "DescribeEdgePackTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询动态打包任务状态列表
    ///
    /// DescribeEdgePackTaskStatus 用于查询动态打包任务状态列表
    @inlinable
    public func describeEdgePackTaskStatus(startTime: Date, endTime: Date, limit: Int64? = nil, offset: Int64? = nil, filters: [EdgePackTaskFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgePackTaskStatusResponse> {
        self.describeEdgePackTaskStatus(.init(startTime: startTime, endTime: endTime, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询动态打包任务状态列表
    ///
    /// DescribeEdgePackTaskStatus 用于查询动态打包任务状态列表
    @inlinable
    public func describeEdgePackTaskStatus(startTime: Date, endTime: Date, limit: Int64? = nil, offset: Int64? = nil, filters: [EdgePackTaskFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgePackTaskStatusResponse {
        try await self.describeEdgePackTaskStatus(.init(startTime: startTime, endTime: endTime, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询动态打包任务状态列表
    ///
    /// DescribeEdgePackTaskStatus 用于查询动态打包任务状态列表
    @inlinable
    public func describeEdgePackTaskStatusPaginated(_ input: DescribeEdgePackTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [EdgePackTaskStatus])> {
        self.client.paginate(input: input, region: region, command: self.describeEdgePackTaskStatus, logger: logger, on: eventLoop)
    }

    /// 查询动态打包任务状态列表
    ///
    /// DescribeEdgePackTaskStatus 用于查询动态打包任务状态列表
    @inlinable @discardableResult
    public func describeEdgePackTaskStatusPaginated(_ input: DescribeEdgePackTaskStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEdgePackTaskStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEdgePackTaskStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询动态打包任务状态列表
    ///
    /// DescribeEdgePackTaskStatus 用于查询动态打包任务状态列表
    ///
    /// - Returns: `AsyncSequence`s of `EdgePackTaskStatus` and `DescribeEdgePackTaskStatusResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEdgePackTaskStatusPaginator(_ input: DescribeEdgePackTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEdgePackTaskStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEdgePackTaskStatus, logger: logger, on: eventLoop)
    }
}
