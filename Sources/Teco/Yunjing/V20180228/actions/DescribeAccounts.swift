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
    /// DescribeAccounts请求参数结构体
    public struct DescribeAccountsRequest: TCPaginatedRequest {
        /// 云镜客户端唯一Uuid。Username和Uuid必填其一，使用Uuid表示，查询该主机下列表信息。
        public let uuid: String?

        /// 云镜客户端唯一Uuid。Username和Uuid必填其一，使用Username表示，查询该用户名下列表信息。
        public let username: String?

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Username - String - 是否必填：否 - 帐号名</li>
        /// <li>Privilege - String - 是否必填：否 - 帐号类型（ORDINARY: 普通帐号 | SUPPER: 超级管理员帐号）</li>
        /// <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        public let filters: [Filter]?

        public init(uuid: String? = nil, username: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.uuid = uuid
            self.username = username
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case username = "Username"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAccountsResponse) -> DescribeAccountsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAccountsRequest(uuid: self.uuid, username: self.username, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeAccounts返回参数结构体
    public struct DescribeAccountsResponse: TCPaginatedResponse {
        /// 帐号列表记录总数。
        public let totalCount: UInt64

        /// 帐号数据列表。
        public let accounts: [Account]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case accounts = "Accounts"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Account] {
            self.accounts
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取帐号列表
    ///
    /// 本接口 (DescribeAccounts) 用于获取帐号列表数据。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountsResponse> {
        self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取帐号列表
    ///
    /// 本接口 (DescribeAccounts) 用于获取帐号列表数据。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        try await self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取帐号列表
    ///
    /// 本接口 (DescribeAccounts) 用于获取帐号列表数据。
    @inlinable
    public func describeAccounts(uuid: String? = nil, username: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountsResponse> {
        let input = DescribeAccountsRequest(uuid: uuid, username: username, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取帐号列表
    ///
    /// 本接口 (DescribeAccounts) 用于获取帐号列表数据。
    @inlinable
    public func describeAccounts(uuid: String? = nil, username: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        let input = DescribeAccountsRequest(uuid: uuid, username: username, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取帐号列表
    ///
    /// 本接口 (DescribeAccounts) 用于获取帐号列表数据。
    @inlinable
    public func describeAccountsPaginated(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Account])> {
        self.client.paginate(input: input, region: region, command: self.describeAccounts, logger: logger, on: eventLoop)
    }

    /// 获取帐号列表
    ///
    /// 本接口 (DescribeAccounts) 用于获取帐号列表数据。
    @inlinable @discardableResult
    public func describeAccountsPaginated(_ input: DescribeAccountsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAccountsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAccounts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取帐号列表
    ///
    /// 本接口 (DescribeAccounts) 用于获取帐号列表数据。
    @inlinable
    public func describeAccountsPaginator(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAccountsRequest, DescribeAccountsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAccountsRequest, DescribeAccountsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAccounts, logger: logger, on: eventLoop)
    }
}
