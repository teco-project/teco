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

extension Privatedns {
    /// DescribePrivateZoneList请求参数结构体
    public struct DescribePrivateZoneListRequest: TCPaginatedRequest {
        /// 分页偏移量，从0开始
        public let offset: Int64?

        /// 分页限制数目， 最大100，默认20
        public let limit: Int64?

        /// 过滤参数
        public let filters: [Filter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePrivateZoneListResponse) -> DescribePrivateZoneListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribePrivateZoneList返回参数结构体
    public struct DescribePrivateZoneListResponse: TCPaginatedResponse {
        /// 私有域数量
        public let totalCount: Int64

        /// 私有域列表
        public let privateZoneSet: [PrivateZone]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case privateZoneSet = "PrivateZoneSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PrivateZone`` list from the paginated response.
        public func getItems() -> [PrivateZone] {
            self.privateZoneSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取私有域列表
    @inlinable
    public func describePrivateZoneList(_ input: DescribePrivateZoneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateZoneListResponse> {
        self.client.execute(action: "DescribePrivateZoneList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有域列表
    @inlinable
    public func describePrivateZoneList(_ input: DescribePrivateZoneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateZoneListResponse {
        try await self.client.execute(action: "DescribePrivateZoneList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取私有域列表
    @inlinable
    public func describePrivateZoneList(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateZoneListResponse> {
        self.describePrivateZoneList(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取私有域列表
    @inlinable
    public func describePrivateZoneList(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateZoneListResponse {
        try await self.describePrivateZoneList(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取私有域列表
    @inlinable
    public func describePrivateZoneListPaginated(_ input: DescribePrivateZoneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PrivateZone])> {
        self.client.paginate(input: input, region: region, command: self.describePrivateZoneList, logger: logger, on: eventLoop)
    }

    /// 获取私有域列表
    @inlinable @discardableResult
    public func describePrivateZoneListPaginated(_ input: DescribePrivateZoneListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrivateZoneListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrivateZoneList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取私有域列表
    ///
    /// - Returns: `AsyncSequence`s of ``PrivateZone`` and ``DescribePrivateZoneListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrivateZoneListPaginator(_ input: DescribePrivateZoneListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrivateZoneListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrivateZoneList, logger: logger, on: eventLoop)
    }
}
