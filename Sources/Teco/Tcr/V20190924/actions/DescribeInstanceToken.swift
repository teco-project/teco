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

extension Tcr {
    /// DescribeInstanceToken请求参数结构体
    public struct DescribeInstanceTokenRequest: TCPaginatedRequest {
        /// 实例 ID
        public let registryId: String

        /// 分页单页数量
        public let limit: Int64?

        /// 分页偏移量
        public let offset: Int64?

        public init(registryId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.registryId = registryId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstanceTokenResponse) -> DescribeInstanceTokenRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(registryId: self.registryId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeInstanceToken返回参数结构体
    public struct DescribeInstanceTokenResponse: TCPaginatedResponse {
        /// 长期访问凭证总数
        public let totalCount: Int64

        /// 长期访问凭证列表
        public let tokens: [TcrInstanceToken]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tokens = "Tokens"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TcrInstanceToken`` list from the paginated response.
        public func getItems() -> [TcrInstanceToken] {
            self.tokens
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询长期访问凭证信息
    @inlinable
    public func describeInstanceToken(_ input: DescribeInstanceTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceTokenResponse> {
        self.client.execute(action: "DescribeInstanceToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询长期访问凭证信息
    @inlinable
    public func describeInstanceToken(_ input: DescribeInstanceTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceTokenResponse {
        try await self.client.execute(action: "DescribeInstanceToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询长期访问凭证信息
    @inlinable
    public func describeInstanceToken(registryId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceTokenResponse> {
        self.describeInstanceToken(.init(registryId: registryId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询长期访问凭证信息
    @inlinable
    public func describeInstanceToken(registryId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceTokenResponse {
        try await self.describeInstanceToken(.init(registryId: registryId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询长期访问凭证信息
    @inlinable
    public func describeInstanceTokenPaginated(_ input: DescribeInstanceTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TcrInstanceToken])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceToken, logger: logger, on: eventLoop)
    }

    /// 查询长期访问凭证信息
    @inlinable @discardableResult
    public func describeInstanceTokenPaginated(_ input: DescribeInstanceTokenRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceTokenResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceToken, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询长期访问凭证信息
    ///
    /// - Returns: `AsyncSequence`s of ``TcrInstanceToken`` and ``DescribeInstanceTokenResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstanceTokenPaginator(_ input: DescribeInstanceTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceTokenRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceToken, logger: logger, on: eventLoop)
    }
}
