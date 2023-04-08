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

extension Privatedns {
    /// DescribePrivateDNSAccountList请求参数结构体
    public struct DescribePrivateDNSAccountListRequest: TCPaginatedRequest {
        /// 分页偏移量，从0开始
        public let offset: Int64?

        /// 分页限制数目， 最大100，默认20
        public let limit: Int64?

        /// 过滤参数
        public let filters: [Filter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePrivateDNSAccountListResponse) -> DescribePrivateDNSAccountListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrivateDNSAccountListRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribePrivateDNSAccountList返回参数结构体
    public struct DescribePrivateDNSAccountListResponse: TCPaginatedResponse {
        /// 私有域解析账号数量
        public let totalCount: Int64

        /// 私有域解析账号列表
        public let accountSet: [PrivateDNSAccount]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case accountSet = "AccountSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PrivateDNSAccount] {
            self.accountSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取私有域解析账号列表
    @inlinable
    public func describePrivateDNSAccountList(_ input: DescribePrivateDNSAccountListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateDNSAccountListResponse> {
        self.client.execute(action: "DescribePrivateDNSAccountList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号列表
    @inlinable
    public func describePrivateDNSAccountList(_ input: DescribePrivateDNSAccountListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateDNSAccountListResponse {
        try await self.client.execute(action: "DescribePrivateDNSAccountList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取私有域解析账号列表
    @inlinable
    public func describePrivateDNSAccountList(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateDNSAccountListResponse> {
        self.describePrivateDNSAccountList(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号列表
    @inlinable
    public func describePrivateDNSAccountList(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateDNSAccountListResponse {
        try await self.describePrivateDNSAccountList(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号列表
    @inlinable
    public func describePrivateDNSAccountListPaginated(_ input: DescribePrivateDNSAccountListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PrivateDNSAccount])> {
        self.client.paginate(input: input, region: region, command: self.describePrivateDNSAccountList, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号列表
    @inlinable @discardableResult
    public func describePrivateDNSAccountListPaginated(_ input: DescribePrivateDNSAccountListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrivateDNSAccountListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrivateDNSAccountList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号列表
    ///
    /// - Returns: `AsyncSequence`s of `PrivateDNSAccount` and `DescribePrivateDNSAccountListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrivateDNSAccountListPaginator(_ input: DescribePrivateDNSAccountListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrivateDNSAccountListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrivateDNSAccountList, logger: logger, on: eventLoop)
    }
}
