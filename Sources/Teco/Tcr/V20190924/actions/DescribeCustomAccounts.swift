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

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tcr {
    /// DescribeCustomAccounts请求参数结构体
    public struct DescribeCustomAccountsRequest: TCPaginatedRequest {
        /// 实例Id
        public let registryId: String

        /// 列出所有自定义账户
        public let all: Bool?

        /// 填充策略
        public let embedPermission: Bool?

        /// 过滤条件
        public let filters: [Filter]?

        /// 偏移量,默认0
        public let offset: Int64?

        /// 最大输出条数，默认20，最大为100
        public let limit: Int64?

        public init(registryId: String, all: Bool? = nil, embedPermission: Bool? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.registryId = registryId
            self.all = all
            self.embedPermission = embedPermission
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case all = "All"
            case embedPermission = "EmbedPermission"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCustomAccountsResponse) -> DescribeCustomAccountsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCustomAccountsRequest(registryId: self.registryId, all: self.all, embedPermission: self.embedPermission, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeCustomAccounts返回参数结构体
    public struct DescribeCustomAccountsResponse: TCPaginatedResponse {
        /// 自定义账户列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customAccounts: [CustomAccount]?

        /// 自定义账户数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customAccounts = "CustomAccounts"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CustomAccount`` list from the paginated response.
        public func getItems() -> [CustomAccount] {
            self.customAccounts ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询自定义账号
    @inlinable
    public func describeCustomAccounts(_ input: DescribeCustomAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomAccountsResponse> {
        self.client.execute(action: "DescribeCustomAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自定义账号
    @inlinable
    public func describeCustomAccounts(_ input: DescribeCustomAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomAccountsResponse {
        try await self.client.execute(action: "DescribeCustomAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自定义账号
    @inlinable
    public func describeCustomAccounts(registryId: String, all: Bool? = nil, embedPermission: Bool? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomAccountsResponse> {
        self.describeCustomAccounts(.init(registryId: registryId, all: all, embedPermission: embedPermission, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自定义账号
    @inlinable
    public func describeCustomAccounts(registryId: String, all: Bool? = nil, embedPermission: Bool? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomAccountsResponse {
        try await self.describeCustomAccounts(.init(registryId: registryId, all: all, embedPermission: embedPermission, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自定义账号
    @inlinable
    public func describeCustomAccountsPaginated(_ input: DescribeCustomAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CustomAccount])> {
        self.client.paginate(input: input, region: region, command: self.describeCustomAccounts, logger: logger, on: eventLoop)
    }

    /// 查询自定义账号
    @inlinable @discardableResult
    public func describeCustomAccountsPaginated(_ input: DescribeCustomAccountsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCustomAccountsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCustomAccounts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询自定义账号
    ///
    /// - Returns: `AsyncSequence`s of ``CustomAccount`` and ``DescribeCustomAccountsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCustomAccountsPaginator(_ input: DescribeCustomAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCustomAccountsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCustomAccounts, logger: logger, on: eventLoop)
    }
}
