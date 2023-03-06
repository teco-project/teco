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
    /// DescribeHistoryAccounts请求参数结构体
    public struct DescribeHistoryAccountsRequest: TCPaginatedRequest {
        /// 云镜客户端唯一Uuid。
        public let uuid: String

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Username - String - 是否必填：否 - 帐号名</li>
        public let filters: [Filter]?

        public init(uuid: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.uuid = uuid
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeHistoryAccountsResponse) -> DescribeHistoryAccountsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHistoryAccountsRequest(uuid: self.uuid, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeHistoryAccounts返回参数结构体
    public struct DescribeHistoryAccountsResponse: TCPaginatedResponse {
        /// 帐号变更历史列表记录总数。
        public let totalCount: UInt64

        /// 帐号变更历史数据数组。
        public let historyAccounts: [HistoryAccount]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case historyAccounts = "HistoryAccounts"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [HistoryAccount] {
            self.historyAccounts
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取帐号变更历史列表
    ///
    /// 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。
    @inlinable
    public func describeHistoryAccounts(_ input: DescribeHistoryAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHistoryAccountsResponse> {
        self.client.execute(action: "DescribeHistoryAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取帐号变更历史列表
    ///
    /// 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。
    @inlinable
    public func describeHistoryAccounts(_ input: DescribeHistoryAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHistoryAccountsResponse {
        try await self.client.execute(action: "DescribeHistoryAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取帐号变更历史列表
    ///
    /// 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。
    @inlinable
    public func describeHistoryAccounts(uuid: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHistoryAccountsResponse> {
        let input = DescribeHistoryAccountsRequest(uuid: uuid, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeHistoryAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取帐号变更历史列表
    ///
    /// 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。
    @inlinable
    public func describeHistoryAccounts(uuid: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHistoryAccountsResponse {
        let input = DescribeHistoryAccountsRequest(uuid: uuid, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeHistoryAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取帐号变更历史列表
    ///
    /// 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。
    @inlinable
    public func describeHistoryAccountsPaginated(_ input: DescribeHistoryAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [HistoryAccount])> {
        self.client.paginate(input: input, region: region, command: self.describeHistoryAccounts, logger: logger, on: eventLoop)
    }

    /// 获取帐号变更历史列表
    ///
    /// 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。
    @inlinable @discardableResult
    public func describeHistoryAccountsPaginated(_ input: DescribeHistoryAccountsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHistoryAccountsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHistoryAccounts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取帐号变更历史列表
    ///
    /// 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。
    @inlinable
    public func describeHistoryAccountsPaginator(_ input: DescribeHistoryAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHistoryAccountsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHistoryAccounts, logger: logger, on: eventLoop)
    }
}
