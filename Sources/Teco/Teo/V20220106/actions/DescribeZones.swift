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

extension Teo {
    /// DescribeZones请求参数结构体
    public struct DescribeZonesRequest: TCPaginatedRequest {
        /// 分页查询偏移量。默认值：0，最小值：0。
        public let offset: Int64?

        /// 分页查询限制数目。默认值：1000，最大值：1000。
        public let limit: Int64?

        /// 查询条件过滤器，复杂类型。
        public let filters: [ZoneFilter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [ZoneFilter]? = nil) {
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
        public func makeNextRequest(with response: DescribeZonesResponse) -> DescribeZonesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeZones返回参数结构体
    public struct DescribeZonesResponse: TCPaginatedResponse {
        /// 符合条件的站点个数。
        public let totalCount: Int64

        /// 站点详细信息列表。
        public let zones: [Zone]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case zones = "Zones"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Zone`` list from the paginated response.
        public func getItems() -> [Zone] {
            self.zones
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZonesResponse> {
        self.client.execute(action: "DescribeZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.client.execute(action: "DescribeZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页
    @inlinable
    public func describeZones(offset: Int64? = nil, limit: Int64? = nil, filters: [ZoneFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZonesResponse> {
        self.describeZones(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页
    @inlinable
    public func describeZones(offset: Int64? = nil, limit: Int64? = nil, filters: [ZoneFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.describeZones(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页
    @inlinable
    public func describeZonesPaginated(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Zone])> {
        self.client.paginate(input: input, region: region, command: self.describeZones, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页
    @inlinable @discardableResult
    public func describeZonesPaginated(_ input: DescribeZonesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeZonesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeZones, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页
    ///
    /// - Returns: `AsyncSequence`s of ``Zone`` and ``DescribeZonesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeZonesPaginator(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeZonesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeZones, logger: logger, on: eventLoop)
    }
}
