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

extension Privatedns {
    /// DescribeAccountVpcList请求参数结构体
    public struct DescribeAccountVpcListRequest: TCPaginatedRequest {
        /// 关联账号的uin
        public let accountUin: String

        /// 分页偏移量，从0开始
        public let offset: Int64?

        /// 分页限制数目， 最大100，默认20
        public let limit: Int64?

        /// 过滤参数
        public let filters: [Filter]?

        public init(accountUin: String, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.accountUin = accountUin
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case accountUin = "AccountUin"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAccountVpcListResponse) -> DescribeAccountVpcListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAccountVpcListRequest(accountUin: self.accountUin, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeAccountVpcList返回参数结构体
    public struct DescribeAccountVpcListResponse: TCPaginatedResponse {
        /// VPC数量
        public let totalCount: Int64

        /// VPC 列表
        public let vpcSet: [AccountVpcInfoOut]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vpcSet = "VpcSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AccountVpcInfoOut] {
            self.vpcSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取私有域解析账号的VPC列表
    @inlinable
    public func describeAccountVpcList(_ input: DescribeAccountVpcListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountVpcListResponse> {
        self.client.execute(action: "DescribeAccountVpcList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号的VPC列表
    @inlinable
    public func describeAccountVpcList(_ input: DescribeAccountVpcListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountVpcListResponse {
        try await self.client.execute(action: "DescribeAccountVpcList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取私有域解析账号的VPC列表
    @inlinable
    public func describeAccountVpcList(accountUin: String, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountVpcListResponse> {
        self.describeAccountVpcList(.init(accountUin: accountUin, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号的VPC列表
    @inlinable
    public func describeAccountVpcList(accountUin: String, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountVpcListResponse {
        try await self.describeAccountVpcList(.init(accountUin: accountUin, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号的VPC列表
    @inlinable
    public func describeAccountVpcListPaginated(_ input: DescribeAccountVpcListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AccountVpcInfoOut])> {
        self.client.paginate(input: input, region: region, command: self.describeAccountVpcList, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号的VPC列表
    @inlinable @discardableResult
    public func describeAccountVpcListPaginated(_ input: DescribeAccountVpcListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAccountVpcListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAccountVpcList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析账号的VPC列表
    ///
    /// - Returns: `AsyncSequence`s of `AccountVpcInfoOut` and `DescribeAccountVpcListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAccountVpcListPaginator(_ input: DescribeAccountVpcListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAccountVpcListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAccountVpcList, logger: logger, on: eventLoop)
    }
}
