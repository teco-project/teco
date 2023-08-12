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

extension Ckafka {
    /// DescribeConnectResources请求参数结构体
    public struct DescribeConnectResourcesRequest: TCPaginatedRequest {
        /// 连接源类型
        public let type: String?

        /// 连接源名称的关键字查询
        public let searchWord: String?

        /// 分页偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?

        /// 连接源的关键字查询, 根据地域查询本地域内连接管理列表中的连接(仅支持包含region输入的连接源)
        public let resourceRegion: String?

        public init(type: String? = nil, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceRegion: String? = nil) {
            self.type = type
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
            self.resourceRegion = resourceRegion
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
            case resourceRegion = "ResourceRegion"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeConnectResourcesResponse) -> DescribeConnectResourcesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeConnectResourcesRequest(type: self.type, searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, resourceRegion: self.resourceRegion)
        }
    }

    /// DescribeConnectResources返回参数结构体
    public struct DescribeConnectResourcesResponse: TCPaginatedResponse {
        /// 连接源列表
        public let result: DescribeConnectResourcesResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DescribeConnectResource`` list from the paginated response.
        public func getItems() -> [DescribeConnectResource] {
            self.result.connectResourceList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询Datahub连接源列表
    @inlinable
    public func describeConnectResources(_ input: DescribeConnectResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConnectResourcesResponse> {
        self.client.execute(action: "DescribeConnectResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Datahub连接源列表
    @inlinable
    public func describeConnectResources(_ input: DescribeConnectResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConnectResourcesResponse {
        try await self.client.execute(action: "DescribeConnectResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Datahub连接源列表
    @inlinable
    public func describeConnectResources(type: String? = nil, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConnectResourcesResponse> {
        self.describeConnectResources(.init(type: type, searchWord: searchWord, offset: offset, limit: limit, resourceRegion: resourceRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Datahub连接源列表
    @inlinable
    public func describeConnectResources(type: String? = nil, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConnectResourcesResponse {
        try await self.describeConnectResources(.init(type: type, searchWord: searchWord, offset: offset, limit: limit, resourceRegion: resourceRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Datahub连接源列表
    @inlinable
    public func describeConnectResourcesPaginated(_ input: DescribeConnectResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DescribeConnectResource])> {
        self.client.paginate(input: input, region: region, command: self.describeConnectResources, logger: logger, on: eventLoop)
    }

    /// 查询Datahub连接源列表
    @inlinable @discardableResult
    public func describeConnectResourcesPaginated(_ input: DescribeConnectResourcesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeConnectResourcesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeConnectResources, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Datahub连接源列表
    ///
    /// - Returns: `AsyncSequence`s of ``DescribeConnectResource`` and ``DescribeConnectResourcesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeConnectResourcesPaginator(_ input: DescribeConnectResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeConnectResourcesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeConnectResources, logger: logger, on: eventLoop)
    }
}
