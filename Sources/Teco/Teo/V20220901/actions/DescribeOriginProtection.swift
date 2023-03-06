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

import TecoPaginationHelpers

extension Teo {
    /// DescribeOriginProtection请求参数结构体
    public struct DescribeOriginProtectionRequest: TCPaginatedRequest {
        /// 查询的站点集合，不填默认查询所有站点。
        public let zoneIds: [String]?

        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// <li>need-update<br>   按照【<strong>站点是否需要更新源站防护IP白名单</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   true：需要更新<br>   false：无需更新<br></li>
        /// <li>plan-support<br>   按照【<strong>站点套餐是否支持源站防护</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   true：支持<br>   false：不支持<br></li>
        public let filters: [Filter]?

        /// 分页查询偏移量，默认为0。
        public let offset: Int64?

        /// 分页查询限制数目。默认值：20，最大值：1000。
        public let limit: Int64?

        public init(zoneIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.zoneIds = zoneIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case zoneIds = "ZoneIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeOriginProtectionResponse) -> DescribeOriginProtectionRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeOriginProtectionRequest(zoneIds: self.zoneIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeOriginProtection返回参数结构体
    public struct DescribeOriginProtectionResponse: TCPaginatedResponse {
        /// 源站防护信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originProtectionInfo: [OriginProtectionInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originProtectionInfo = "OriginProtectionInfo"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [OriginProtectionInfo] {
            self.originProtectionInfo ?? []
        }
    }

    /// 查询源站防护信息
    @inlinable
    public func describeOriginProtection(_ input: DescribeOriginProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOriginProtectionResponse> {
        self.client.execute(action: "DescribeOriginProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询源站防护信息
    @inlinable
    public func describeOriginProtection(_ input: DescribeOriginProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginProtectionResponse {
        try await self.client.execute(action: "DescribeOriginProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询源站防护信息
    @inlinable
    public func describeOriginProtection(zoneIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOriginProtectionResponse> {
        let input = DescribeOriginProtectionRequest(zoneIds: zoneIds, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeOriginProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询源站防护信息
    @inlinable
    public func describeOriginProtection(zoneIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginProtectionResponse {
        let input = DescribeOriginProtectionRequest(zoneIds: zoneIds, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeOriginProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询源站防护信息
    @inlinable
    public func describeOriginProtectionPaginated(_ input: DescribeOriginProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [OriginProtectionInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeOriginProtection, logger: logger, on: eventLoop)
    }

    /// 查询源站防护信息
    @inlinable @discardableResult
    public func describeOriginProtectionPaginated(_ input: DescribeOriginProtectionRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOriginProtectionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOriginProtection, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询源站防护信息
    ///
    /// - Returns: `AsyncSequence`s of `OriginProtectionInfo` and `DescribeOriginProtectionResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeOriginProtectionPaginator(_ input: DescribeOriginProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeOriginProtectionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOriginProtection, logger: logger, on: eventLoop)
    }
}
