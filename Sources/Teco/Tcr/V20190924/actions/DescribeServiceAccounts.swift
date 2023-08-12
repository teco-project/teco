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
    /// DescribeServiceAccounts请求参数结构体
    public struct DescribeServiceAccountsRequest: TCPaginatedRequest {
        /// 实例Id
        public let registryId: String

        /// 列出所有服务级账号
        public let all: Bool?

        /// 是否填充策略
        public let embedPermission: Bool?

        /// 过滤条件
        public let filters: [Filter]?

        /// 偏移量,默认0
        public let offset: Int64?

        /// 最大输出条数，默认20，最大为100（超出最大值，调整到最大值）
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
        public func makeNextRequest(with response: DescribeServiceAccountsResponse) -> DescribeServiceAccountsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeServiceAccountsRequest(registryId: self.registryId, all: self.all, embedPermission: self.embedPermission, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeServiceAccounts返回参数结构体
    public struct DescribeServiceAccountsResponse: TCPaginatedResponse {
        /// 服务级账号列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceAccounts: [ServiceAccount]?

        /// 自定义账户数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceAccounts = "ServiceAccounts"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ServiceAccount`` list from the paginated response.
        public func getItems() -> [ServiceAccount] {
            self.serviceAccounts ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询服务级账号
    @inlinable
    public func describeServiceAccounts(_ input: DescribeServiceAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceAccountsResponse> {
        self.client.execute(action: "DescribeServiceAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务级账号
    @inlinable
    public func describeServiceAccounts(_ input: DescribeServiceAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceAccountsResponse {
        try await self.client.execute(action: "DescribeServiceAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务级账号
    @inlinable
    public func describeServiceAccounts(registryId: String, all: Bool? = nil, embedPermission: Bool? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceAccountsResponse> {
        self.describeServiceAccounts(.init(registryId: registryId, all: all, embedPermission: embedPermission, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务级账号
    @inlinable
    public func describeServiceAccounts(registryId: String, all: Bool? = nil, embedPermission: Bool? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceAccountsResponse {
        try await self.describeServiceAccounts(.init(registryId: registryId, all: all, embedPermission: embedPermission, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务级账号
    @inlinable
    public func describeServiceAccountsPaginated(_ input: DescribeServiceAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ServiceAccount])> {
        self.client.paginate(input: input, region: region, command: self.describeServiceAccounts, logger: logger, on: eventLoop)
    }

    /// 查询服务级账号
    @inlinable @discardableResult
    public func describeServiceAccountsPaginated(_ input: DescribeServiceAccountsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeServiceAccountsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeServiceAccounts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询服务级账号
    ///
    /// - Returns: `AsyncSequence`s of ``ServiceAccount`` and ``DescribeServiceAccountsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeServiceAccountsPaginator(_ input: DescribeServiceAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeServiceAccountsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeServiceAccounts, logger: logger, on: eventLoop)
    }
}
