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

extension Vod {
    /// DescribeSubAppIds请求参数结构体
    public struct DescribeSubAppIdsRequest: TCPaginatedRequest {
        /// 子应用名称。
        public let name: String?

        /// 标签信息，查询指定标签的子应用列表。
        public let tags: [ResourceTag]?

        /// 分页拉取的起始偏移量。默认值：0。
        public let offset: UInt64?

        /// 分页拉取的最大返回结果数。默认值：200；最大值：200。
        public let limit: UInt64?

        public init(name: String? = nil, tags: [ResourceTag]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.name = name
            self.tags = tags
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case tags = "Tags"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSubAppIdsResponse) -> DescribeSubAppIdsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(name: self.name, tags: self.tags, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSubAppIds返回参数结构体
    public struct DescribeSubAppIdsResponse: TCPaginatedResponse {
        /// 子应用信息集合。
        public let subAppIdInfoSet: [SubAppIdInfo]

        /// 子应用总数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subAppIdInfoSet = "SubAppIdInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SubAppIdInfo`` list from the paginated response.
        public func getItems() -> [SubAppIdInfo] {
            self.subAppIdInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable
    public func describeSubAppIds(_ input: DescribeSubAppIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubAppIdsResponse> {
        self.client.execute(action: "DescribeSubAppIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable
    public func describeSubAppIds(_ input: DescribeSubAppIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubAppIdsResponse {
        try await self.client.execute(action: "DescribeSubAppIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable
    public func describeSubAppIds(name: String? = nil, tags: [ResourceTag]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubAppIdsResponse> {
        self.describeSubAppIds(.init(name: name, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable
    public func describeSubAppIds(name: String? = nil, tags: [ResourceTag]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubAppIdsResponse {
        try await self.describeSubAppIds(.init(name: name, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable
    public func describeSubAppIdsPaginated(_ input: DescribeSubAppIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SubAppIdInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSubAppIds, logger: logger, on: eventLoop)
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable @discardableResult
    public func describeSubAppIdsPaginated(_ input: DescribeSubAppIdsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSubAppIdsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSubAppIds, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    ///
    /// - Returns: `AsyncSequence`s of ``SubAppIdInfo`` and ``DescribeSubAppIdsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSubAppIdsPaginator(_ input: DescribeSubAppIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSubAppIdsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSubAppIds, logger: logger, on: eventLoop)
    }
}
