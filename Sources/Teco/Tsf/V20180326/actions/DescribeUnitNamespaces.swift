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

extension Tsf {
    /// DescribeUnitNamespaces请求参数结构体
    public struct DescribeUnitNamespacesRequest: TCPaginatedRequest {
        /// 网关实体ID
        public let gatewayInstanceId: String

        /// 根据命名空间名或ID模糊查询
        public let searchWord: String?

        /// 翻页查询偏移量
        public let offset: Int64?

        /// 翻页查询每页记录数
        public let limit: Int64?

        public init(gatewayInstanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.gatewayInstanceId = gatewayInstanceId
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case gatewayInstanceId = "GatewayInstanceId"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUnitNamespacesResponse) -> DescribeUnitNamespacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUnitNamespacesRequest(gatewayInstanceId: self.gatewayInstanceId, searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeUnitNamespaces返回参数结构体
    public struct DescribeUnitNamespacesResponse: TCPaginatedResponse {
        /// 单元化命名空间对象列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageUnitNamespace?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UnitNamespace] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询单元化命名空间列表
    @inlinable
    public func describeUnitNamespaces(_ input: DescribeUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnitNamespacesResponse> {
        self.client.execute(action: "DescribeUnitNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询单元化命名空间列表
    @inlinable
    public func describeUnitNamespaces(_ input: DescribeUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnitNamespacesResponse {
        try await self.client.execute(action: "DescribeUnitNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询单元化命名空间列表
    @inlinable
    public func describeUnitNamespaces(gatewayInstanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnitNamespacesResponse> {
        self.describeUnitNamespaces(.init(gatewayInstanceId: gatewayInstanceId, searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单元化命名空间列表
    @inlinable
    public func describeUnitNamespaces(gatewayInstanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnitNamespacesResponse {
        try await self.describeUnitNamespaces(.init(gatewayInstanceId: gatewayInstanceId, searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单元化命名空间列表
    @inlinable
    public func describeUnitNamespacesPaginated(_ input: DescribeUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UnitNamespace])> {
        self.client.paginate(input: input, region: region, command: self.describeUnitNamespaces, logger: logger, on: eventLoop)
    }

    /// 查询单元化命名空间列表
    @inlinable @discardableResult
    public func describeUnitNamespacesPaginated(_ input: DescribeUnitNamespacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUnitNamespacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUnitNamespaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询单元化命名空间列表
    ///
    /// - Returns: `AsyncSequence`s of `UnitNamespace` and `DescribeUnitNamespacesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUnitNamespacesPaginator(_ input: DescribeUnitNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUnitNamespacesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUnitNamespaces, logger: logger, on: eventLoop)
    }
}
