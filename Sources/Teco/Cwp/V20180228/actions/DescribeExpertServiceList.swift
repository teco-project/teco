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

extension Cwp {
    /// DescribeExpertServiceList请求参数结构体
    public struct DescribeExpertServiceListRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// <li>Keyword- String - 是否必填：否 - 关键词过滤，</li>
        /// <li>Uuids - String - 是否必填：否 - 主机id过滤</li>
        public let filters: [Filters]?

        /// 需要返回的数量，最大值为100
        public let limit: UInt64?

        /// 排序步长
        public let offset: UInt64?

        /// 排序方法
        public let order: String?

        /// 排序字段 StartTime，EndTime
        public let by: String?

        public init(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeExpertServiceListResponse) -> DescribeExpertServiceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeExpertServiceListRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeExpertServiceList返回参数结构体
    public struct DescribeExpertServiceListResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: UInt64

        /// 安全管家数据
        public let list: [SecurityButlerInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SecurityButlerInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 安全管家列表
    ///
    /// 专家服务-安全管家列表
    @inlinable
    public func describeExpertServiceList(_ input: DescribeExpertServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExpertServiceListResponse> {
        self.client.execute(action: "DescribeExpertServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全管家列表
    ///
    /// 专家服务-安全管家列表
    @inlinable
    public func describeExpertServiceList(_ input: DescribeExpertServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExpertServiceListResponse {
        try await self.client.execute(action: "DescribeExpertServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全管家列表
    ///
    /// 专家服务-安全管家列表
    @inlinable
    public func describeExpertServiceList(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExpertServiceListResponse> {
        let input = DescribeExpertServiceListRequest(filters: filters, limit: limit, offset: offset, order: order, by: by)
        return self.client.execute(action: "DescribeExpertServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全管家列表
    ///
    /// 专家服务-安全管家列表
    @inlinable
    public func describeExpertServiceList(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExpertServiceListResponse {
        let input = DescribeExpertServiceListRequest(filters: filters, limit: limit, offset: offset, order: order, by: by)
        return try await self.client.execute(action: "DescribeExpertServiceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全管家列表
    ///
    /// 专家服务-安全管家列表
    @inlinable
    public func describeExpertServiceListPaginated(_ input: DescribeExpertServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SecurityButlerInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeExpertServiceList, logger: logger, on: eventLoop)
    }

    /// 安全管家列表
    ///
    /// 专家服务-安全管家列表
    @inlinable @discardableResult
    public func describeExpertServiceListPaginated(_ input: DescribeExpertServiceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeExpertServiceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeExpertServiceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 安全管家列表
    ///
    /// 专家服务-安全管家列表
    @inlinable
    public func describeExpertServiceListPaginator(_ input: DescribeExpertServiceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeExpertServiceListRequest, DescribeExpertServiceListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeExpertServiceListRequest, DescribeExpertServiceListResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeExpertServiceList, logger: logger, on: eventLoop)
    }
}
