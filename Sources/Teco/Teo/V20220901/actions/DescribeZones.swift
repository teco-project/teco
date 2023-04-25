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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Teo {
    /// DescribeZones请求参数结构体
    public struct DescribeZonesRequest: TCPaginatedRequest {
        /// 分页查询偏移量。默认值：0。
        public let offset: Int64?

        /// 分页查询限制数目。默认值：20，最大值：1000。
        public let limit: Int64?

        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// <li>zone-name<br>   按照【<strong>站点名称</strong>】进行过滤。<br>   类型：String<br>   必选：否</li><li>zone-id<br>   按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-xxx。<br>   类型：String<br>   必选：否</li><li>status<br>   按照【<strong>站点状态</strong>】进行过滤。<br>   类型：String<br>   必选：否</li><li>tag-key<br>   按照【<strong>标签键</strong>】进行过滤。<br>   类型：String<br>   必选：否</li><li>tag-value<br>   按照【<strong>标签值</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>模糊查询时仅支持过滤字段名为zone-name。
        public let filters: [AdvancedFilter]?

        /// 排序字段，取值有：
        /// <li> type：接入类型；</li>
        /// <li> area：加速区域；</li>
        /// <li> create-time：创建时间；</li>
        /// <li> zone-name：站点名称；</li>
        /// <li> use-time：最近使用时间；</li>
        /// <li> active-status：生效状态。</li>不填写使用默认值create-time。
        public let order: String?

        /// 排序方向，取值有：
        /// <li> asc：从小到大排序；</li>
        /// <li> desc：从大到小排序。</li>不填写使用默认值desc。
        public let direction: String?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil, order: String? = nil, direction: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.order = order
            self.direction = direction
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case order = "Order"
            case direction = "Direction"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeZonesResponse) -> DescribeZonesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeZonesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, order: self.order, direction: self.direction)
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

        /// Extract the returned item list from the paginated response.
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
    /// 用户查询用户站点信息列表，支持分页。
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZonesResponse> {
        self.client.execute(action: "DescribeZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页。
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.client.execute(action: "DescribeZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页。
    @inlinable
    public func describeZones(offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil, order: String? = nil, direction: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZonesResponse> {
        self.describeZones(.init(offset: offset, limit: limit, filters: filters, order: order, direction: direction), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页。
    @inlinable
    public func describeZones(offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil, order: String? = nil, direction: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.describeZones(.init(offset: offset, limit: limit, filters: filters, order: order, direction: direction), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页。
    @inlinable
    public func describeZonesPaginated(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Zone])> {
        self.client.paginate(input: input, region: region, command: self.describeZones, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页。
    @inlinable @discardableResult
    public func describeZonesPaginated(_ input: DescribeZonesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeZonesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeZones, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询用户站点信息列表
    ///
    /// 用户查询用户站点信息列表，支持分页。
    ///
    /// - Returns: `AsyncSequence`s of `Zone` and `DescribeZonesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeZonesPaginator(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeZonesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeZones, logger: logger, on: eventLoop)
    }
}
