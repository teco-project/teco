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

extension Cwp {
    /// DescribeMaliciousRequestWhiteList请求参数结构体
    public struct DescribeMaliciousRequestWhiteListRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64

        /// 偏移量，默认为0。
        public let offset: UInt64

        /// 过滤条件。
        /// - Domain  - String - 基线名称
        public let filters: [Filters]?

        public init(limit: UInt64, offset: UInt64, filters: [Filters]? = nil) {
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
        public func makeNextRequest(with response: DescribeMaliciousRequestWhiteListResponse) -> DescribeMaliciousRequestWhiteListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMaliciousRequestWhiteListRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeMaliciousRequestWhiteList返回参数结构体
    public struct DescribeMaliciousRequestWhiteListResponse: TCPaginatedResponse {
        /// 白名单信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [MaliciousRequestWhiteListInfo]?

        /// 分页查询记录总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MaliciousRequestWhiteListInfo`` list from the paginated response.
        public func getItems() -> [MaliciousRequestWhiteListInfo] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询恶意请求白名单列表
    @inlinable
    public func describeMaliciousRequestWhiteList(_ input: DescribeMaliciousRequestWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaliciousRequestWhiteListResponse> {
        self.client.execute(action: "DescribeMaliciousRequestWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询恶意请求白名单列表
    @inlinable
    public func describeMaliciousRequestWhiteList(_ input: DescribeMaliciousRequestWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaliciousRequestWhiteListResponse {
        try await self.client.execute(action: "DescribeMaliciousRequestWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询恶意请求白名单列表
    @inlinable
    public func describeMaliciousRequestWhiteList(limit: UInt64, offset: UInt64, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaliciousRequestWhiteListResponse> {
        self.describeMaliciousRequestWhiteList(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询恶意请求白名单列表
    @inlinable
    public func describeMaliciousRequestWhiteList(limit: UInt64, offset: UInt64, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaliciousRequestWhiteListResponse {
        try await self.describeMaliciousRequestWhiteList(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询恶意请求白名单列表
    @inlinable
    public func describeMaliciousRequestWhiteListPaginated(_ input: DescribeMaliciousRequestWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [MaliciousRequestWhiteListInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeMaliciousRequestWhiteList, logger: logger, on: eventLoop)
    }

    /// 查询恶意请求白名单列表
    @inlinable @discardableResult
    public func describeMaliciousRequestWhiteListPaginated(_ input: DescribeMaliciousRequestWhiteListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMaliciousRequestWhiteListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMaliciousRequestWhiteList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询恶意请求白名单列表
    ///
    /// - Returns: `AsyncSequence`s of ``MaliciousRequestWhiteListInfo`` and ``DescribeMaliciousRequestWhiteListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMaliciousRequestWhiteListPaginator(_ input: DescribeMaliciousRequestWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMaliciousRequestWhiteListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMaliciousRequestWhiteList, logger: logger, on: eventLoop)
    }
}
