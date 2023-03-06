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

extension Tcss {
    /// DescribeReverseShellWhiteLists请求参数结构体
    public struct DescribeReverseShellWhiteListsRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        public let filters: [RunTimeFilters]?

        /// 升序降序,asc desc
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeReverseShellWhiteListsResponse) -> DescribeReverseShellWhiteListsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeReverseShellWhiteListsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeReverseShellWhiteLists返回参数结构体
    public struct DescribeReverseShellWhiteListsResponse: TCPaginatedResponse {
        /// 事件总数量
        public let totalCount: UInt64

        /// 白名单信息列表
        public let whiteListSet: [ReverseShellWhiteListBaseInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case whiteListSet = "WhiteListSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ReverseShellWhiteListBaseInfo] {
            self.whiteListSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 运行时反弹shell白名单列表
    ///
    /// 查询运行时运行时反弹shell白名单列表信息
    @inlinable
    public func describeReverseShellWhiteLists(_ input: DescribeReverseShellWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellWhiteListsResponse> {
        self.client.execute(action: "DescribeReverseShellWhiteLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell白名单列表
    ///
    /// 查询运行时运行时反弹shell白名单列表信息
    @inlinable
    public func describeReverseShellWhiteLists(_ input: DescribeReverseShellWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellWhiteListsResponse {
        try await self.client.execute(action: "DescribeReverseShellWhiteLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时反弹shell白名单列表
    ///
    /// 查询运行时运行时反弹shell白名单列表信息
    @inlinable
    public func describeReverseShellWhiteLists(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellWhiteListsResponse> {
        let input = DescribeReverseShellWhiteListsRequest(limit: limit, offset: offset, filters: filters, order: order, by: by)
        return self.client.execute(action: "DescribeReverseShellWhiteLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell白名单列表
    ///
    /// 查询运行时运行时反弹shell白名单列表信息
    @inlinable
    public func describeReverseShellWhiteLists(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellWhiteListsResponse {
        let input = DescribeReverseShellWhiteListsRequest(limit: limit, offset: offset, filters: filters, order: order, by: by)
        return try await self.client.execute(action: "DescribeReverseShellWhiteLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时反弹shell白名单列表
    ///
    /// 查询运行时运行时反弹shell白名单列表信息
    @inlinable
    public func describeReverseShellWhiteListsPaginated(_ input: DescribeReverseShellWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ReverseShellWhiteListBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeReverseShellWhiteLists, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell白名单列表
    ///
    /// 查询运行时运行时反弹shell白名单列表信息
    @inlinable
    public func describeReverseShellWhiteListsPaginated(_ input: DescribeReverseShellWhiteListsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeReverseShellWhiteListsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeReverseShellWhiteLists, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell白名单列表
    ///
    /// 查询运行时运行时反弹shell白名单列表信息
    @inlinable
    public func describeReverseShellWhiteListsPaginator(_ input: DescribeReverseShellWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeReverseShellWhiteListsRequest, DescribeReverseShellWhiteListsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeReverseShellWhiteListsRequest, DescribeReverseShellWhiteListsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeReverseShellWhiteListsRequest, DescribeReverseShellWhiteListsResponse>.ResultSequence(input: input, region: region, command: self.describeReverseShellWhiteLists, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeReverseShellWhiteListsRequest, DescribeReverseShellWhiteListsResponse>.ResponseSequence(input: input, region: region, command: self.describeReverseShellWhiteLists, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
