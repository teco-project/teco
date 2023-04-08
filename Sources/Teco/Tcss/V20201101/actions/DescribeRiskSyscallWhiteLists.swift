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

import TecoCore
import TecoPaginationHelpers

extension Tcss {
    /// DescribeRiskSyscallWhiteLists请求参数结构体
    public struct DescribeRiskSyscallWhiteListsRequest: TCPaginatedRequest {
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
        public func makeNextRequest(with response: DescribeRiskSyscallWhiteListsResponse) -> DescribeRiskSyscallWhiteListsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRiskSyscallWhiteListsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeRiskSyscallWhiteLists返回参数结构体
    public struct DescribeRiskSyscallWhiteListsResponse: TCPaginatedResponse {
        /// 事件总数量
        public let totalCount: UInt64

        /// 白名单信息列表
        public let whiteListSet: [RiskSyscallWhiteListBaseInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case whiteListSet = "WhiteListSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RiskSyscallWhiteListBaseInfo] {
            self.whiteListSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 运行时高危系统调用白名单列表
    ///
    /// 查询运行时高危系统调用白名单列表信息
    @inlinable
    public func describeRiskSyscallWhiteLists(_ input: DescribeRiskSyscallWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskSyscallWhiteListsResponse> {
        self.client.execute(action: "DescribeRiskSyscallWhiteLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用白名单列表
    ///
    /// 查询运行时高危系统调用白名单列表信息
    @inlinable
    public func describeRiskSyscallWhiteLists(_ input: DescribeRiskSyscallWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskSyscallWhiteListsResponse {
        try await self.client.execute(action: "DescribeRiskSyscallWhiteLists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时高危系统调用白名单列表
    ///
    /// 查询运行时高危系统调用白名单列表信息
    @inlinable
    public func describeRiskSyscallWhiteLists(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskSyscallWhiteListsResponse> {
        self.describeRiskSyscallWhiteLists(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用白名单列表
    ///
    /// 查询运行时高危系统调用白名单列表信息
    @inlinable
    public func describeRiskSyscallWhiteLists(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskSyscallWhiteListsResponse {
        try await self.describeRiskSyscallWhiteLists(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用白名单列表
    ///
    /// 查询运行时高危系统调用白名单列表信息
    @inlinable
    public func describeRiskSyscallWhiteListsPaginated(_ input: DescribeRiskSyscallWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RiskSyscallWhiteListBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeRiskSyscallWhiteLists, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用白名单列表
    ///
    /// 查询运行时高危系统调用白名单列表信息
    @inlinable @discardableResult
    public func describeRiskSyscallWhiteListsPaginated(_ input: DescribeRiskSyscallWhiteListsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRiskSyscallWhiteListsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRiskSyscallWhiteLists, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用白名单列表
    ///
    /// 查询运行时高危系统调用白名单列表信息
    ///
    /// - Returns: `AsyncSequence`s of `RiskSyscallWhiteListBaseInfo` and `DescribeRiskSyscallWhiteListsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRiskSyscallWhiteListsPaginator(_ input: DescribeRiskSyscallWhiteListsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRiskSyscallWhiteListsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRiskSyscallWhiteLists, logger: logger, on: eventLoop)
    }
}
