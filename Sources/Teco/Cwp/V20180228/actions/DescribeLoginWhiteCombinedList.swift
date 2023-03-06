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
    /// DescribeLoginWhiteCombinedList请求参数结构体
    public struct DescribeLoginWhiteCombinedListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>UserName - String - 是否必填：否 - 用户名筛选</li>
        /// <li>ModifyBeginTime - String - 是否必填：否 - 按照修改时间段筛选，开始时间</li>
        /// <li>ModifyEndTime - String - 是否必填：否 - 按照修改时间段筛选，结束时间</li>
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
        public func makeNextRequest(with response: DescribeLoginWhiteCombinedListResponse) -> DescribeLoginWhiteCombinedListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLoginWhiteCombinedListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeLoginWhiteCombinedList返回参数结构体
    public struct DescribeLoginWhiteCombinedListResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: UInt64

        /// 合并后的白名单列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loginWhiteCombinedInfos: [LoginWhiteCombinedInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case loginWhiteCombinedInfos = "LoginWhiteCombinedInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LoginWhiteCombinedInfo] {
            self.loginWhiteCombinedInfos ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取异地登录白名单合并后列表
    @inlinable
    public func describeLoginWhiteCombinedList(_ input: DescribeLoginWhiteCombinedListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoginWhiteCombinedListResponse> {
        self.client.execute(action: "DescribeLoginWhiteCombinedList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单合并后列表
    @inlinable
    public func describeLoginWhiteCombinedList(_ input: DescribeLoginWhiteCombinedListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginWhiteCombinedListResponse {
        try await self.client.execute(action: "DescribeLoginWhiteCombinedList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取异地登录白名单合并后列表
    @inlinable
    public func describeLoginWhiteCombinedList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoginWhiteCombinedListResponse> {
        let input = DescribeLoginWhiteCombinedListRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeLoginWhiteCombinedList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单合并后列表
    @inlinable
    public func describeLoginWhiteCombinedList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginWhiteCombinedListResponse {
        let input = DescribeLoginWhiteCombinedListRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeLoginWhiteCombinedList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取异地登录白名单合并后列表
    @inlinable
    public func describeLoginWhiteCombinedListPaginated(_ input: DescribeLoginWhiteCombinedListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LoginWhiteCombinedInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLoginWhiteCombinedList, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单合并后列表
    @inlinable @discardableResult
    public func describeLoginWhiteCombinedListPaginated(_ input: DescribeLoginWhiteCombinedListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLoginWhiteCombinedListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLoginWhiteCombinedList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单合并后列表
    ///
    /// - Returns: `AsyncSequence`s of `LoginWhiteCombinedInfo` and `DescribeLoginWhiteCombinedListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLoginWhiteCombinedListPaginator(_ input: DescribeLoginWhiteCombinedListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLoginWhiteCombinedListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLoginWhiteCombinedList, logger: logger, on: eventLoop)
    }
}
