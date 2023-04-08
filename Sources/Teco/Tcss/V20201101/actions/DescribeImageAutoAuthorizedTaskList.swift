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

@_exported import struct Foundation.Date
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Tcss {
    /// DescribeImageAutoAuthorizedTaskList请求参数结构体
    public struct DescribeImageAutoAuthorizedTaskListRequest: TCPaginatedRequest {
        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endTime: Date

        /// 过滤字段
        /// Status授权结果，全部授权成功：ALLSUCCSESS，部分授权失败：PARTIALFAIL,全部授权失败：ALLFAIL
        /// Type授权方式，AUTO:自动授权，MANUAL:手动授权
        /// Source 镜像来源，LOCAL:本地镜像，REGISTRY:仓库镜像
        public let filters: [AssetFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        public init(startTime: Date, endTime: Date, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImageAutoAuthorizedTaskListResponse) -> DescribeImageAutoAuthorizedTaskListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImageAutoAuthorizedTaskListRequest(startTime: self.startTime, endTime: self.endTime, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeImageAutoAuthorizedTaskList返回参数结构体
    public struct DescribeImageAutoAuthorizedTaskListResponse: TCPaginatedResponse {
        /// 自动授权任务列表
        public let list: [ImageAutoAuthorizedTask]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImageAutoAuthorizedTask] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询镜像自动授权任务列表
    @inlinable
    public func describeImageAutoAuthorizedTaskList(_ input: DescribeImageAutoAuthorizedTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageAutoAuthorizedTaskListResponse> {
        self.client.execute(action: "DescribeImageAutoAuthorizedTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权任务列表
    @inlinable
    public func describeImageAutoAuthorizedTaskList(_ input: DescribeImageAutoAuthorizedTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageAutoAuthorizedTaskListResponse {
        try await self.client.execute(action: "DescribeImageAutoAuthorizedTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像自动授权任务列表
    @inlinable
    public func describeImageAutoAuthorizedTaskList(startTime: Date, endTime: Date, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageAutoAuthorizedTaskListResponse> {
        self.describeImageAutoAuthorizedTaskList(.init(startTime: startTime, endTime: endTime, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权任务列表
    @inlinable
    public func describeImageAutoAuthorizedTaskList(startTime: Date, endTime: Date, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageAutoAuthorizedTaskListResponse {
        try await self.describeImageAutoAuthorizedTaskList(.init(startTime: startTime, endTime: endTime, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权任务列表
    @inlinable
    public func describeImageAutoAuthorizedTaskListPaginated(_ input: DescribeImageAutoAuthorizedTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImageAutoAuthorizedTask])> {
        self.client.paginate(input: input, region: region, command: self.describeImageAutoAuthorizedTaskList, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权任务列表
    @inlinable @discardableResult
    public func describeImageAutoAuthorizedTaskListPaginated(_ input: DescribeImageAutoAuthorizedTaskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImageAutoAuthorizedTaskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImageAutoAuthorizedTaskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权任务列表
    ///
    /// - Returns: `AsyncSequence`s of `ImageAutoAuthorizedTask` and `DescribeImageAutoAuthorizedTaskListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImageAutoAuthorizedTaskListPaginator(_ input: DescribeImageAutoAuthorizedTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImageAutoAuthorizedTaskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImageAutoAuthorizedTaskList, logger: logger, on: eventLoop)
    }
}
