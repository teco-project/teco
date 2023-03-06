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

extension Yunjing {
    /// DescribeLoginWhiteList请求参数结构体
    public struct DescribeLoginWhiteListRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLoginWhiteListResponse) -> DescribeLoginWhiteListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLoginWhiteListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeLoginWhiteList返回参数结构体
    public struct DescribeLoginWhiteListResponse: TCPaginatedResponse {
        /// 记录总数
        public let totalCount: UInt64

        /// 异地登录白名单数组
        public let loginWhiteLists: [LoginWhiteLists]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case loginWhiteLists = "LoginWhiteLists"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LoginWhiteLists] {
            self.loginWhiteLists
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取异地登录白名单列表
    @inlinable
    public func describeLoginWhiteList(_ input: DescribeLoginWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoginWhiteListResponse> {
        self.client.execute(action: "DescribeLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单列表
    @inlinable
    public func describeLoginWhiteList(_ input: DescribeLoginWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginWhiteListResponse {
        try await self.client.execute(action: "DescribeLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取异地登录白名单列表
    @inlinable
    public func describeLoginWhiteList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoginWhiteListResponse> {
        let input = DescribeLoginWhiteListRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单列表
    @inlinable
    public func describeLoginWhiteList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginWhiteListResponse {
        let input = DescribeLoginWhiteListRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取异地登录白名单列表
    @inlinable
    public func describeLoginWhiteListPaginated(_ input: DescribeLoginWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LoginWhiteLists])> {
        self.client.paginate(input: input, region: region, command: self.describeLoginWhiteList, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单列表
    @inlinable @discardableResult
    public func describeLoginWhiteListPaginated(_ input: DescribeLoginWhiteListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLoginWhiteListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLoginWhiteList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单列表
    ///
    /// - Returns: `AsyncSequence`s of `LoginWhiteLists` and `DescribeLoginWhiteListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLoginWhiteListPaginator(_ input: DescribeLoginWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLoginWhiteListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLoginWhiteList, logger: logger, on: eventLoop)
    }
}
