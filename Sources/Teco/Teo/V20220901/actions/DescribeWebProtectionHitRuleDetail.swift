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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Teo {
    /// DescribeWebProtectionHitRuleDetail请求参数结构体
    public struct DescribeWebProtectionHitRuleDetailRequest: TCPaginatedRequest {
        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 所属规则数据类型，支持的规则有：
        /// <li>rate：限速规则；</li>
        /// <li>acl：自定义规则。</li>
        public let entityType: String

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 域名列表，不填默认选择全部子域名。
        public let domains: [String]?

        /// 筛选条件，key可选的值有：
        /// <li>action：执行动作。</li>
        public let queryCondition: [QueryCondition]?

        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: Int64?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 查询时间粒度，支持的时间粒度有：
        /// <li>min：1分钟；</li>
        /// <li>5min：5分钟；</li>
        /// <li>hour：1小时；</li>
        /// <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?

        public init(startTime: Date, endTime: Date, entityType: String, zoneIds: [String]? = nil, domains: [String]? = nil, queryCondition: [QueryCondition]? = nil, limit: Int64? = nil, offset: Int64? = nil, interval: String? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.entityType = entityType
            self.zoneIds = zoneIds
            self.domains = domains
            self.queryCondition = queryCondition
            self.limit = limit
            self.offset = offset
            self.interval = interval
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case entityType = "EntityType"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case queryCondition = "QueryCondition"
            case limit = "Limit"
            case offset = "Offset"
            case interval = "Interval"
            case area = "Area"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWebProtectionHitRuleDetailResponse) -> DescribeWebProtectionHitRuleDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWebProtectionHitRuleDetailRequest(startTime: self.startTime, endTime: self.endTime, entityType: self.entityType, zoneIds: self.zoneIds, domains: self.domains, queryCondition: self.queryCondition, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), interval: self.interval, area: self.area)
        }
    }

    /// DescribeWebProtectionHitRuleDetail返回参数结构体
    public struct DescribeWebProtectionHitRuleDetailResponse: TCPaginatedResponse {
        /// cc防护命中规则列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [SecHitRuleInfo]?

        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SecHitRuleInfo] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询CC防护命中规则详情列表
    ///
    /// 本接口（DescribeWebProtectionHitRuleDetail）用于查询CC防护命中规则详情列表。
    @inlinable
    public func describeWebProtectionHitRuleDetail(_ input: DescribeWebProtectionHitRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebProtectionHitRuleDetailResponse> {
        self.client.execute(action: "DescribeWebProtectionHitRuleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询CC防护命中规则详情列表
    ///
    /// 本接口（DescribeWebProtectionHitRuleDetail）用于查询CC防护命中规则详情列表。
    @inlinable
    public func describeWebProtectionHitRuleDetail(_ input: DescribeWebProtectionHitRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebProtectionHitRuleDetailResponse {
        try await self.client.execute(action: "DescribeWebProtectionHitRuleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询CC防护命中规则详情列表
    ///
    /// 本接口（DescribeWebProtectionHitRuleDetail）用于查询CC防护命中规则详情列表。
    @inlinable
    public func describeWebProtectionHitRuleDetail(startTime: Date, endTime: Date, entityType: String, zoneIds: [String]? = nil, domains: [String]? = nil, queryCondition: [QueryCondition]? = nil, limit: Int64? = nil, offset: Int64? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebProtectionHitRuleDetailResponse> {
        self.describeWebProtectionHitRuleDetail(.init(startTime: startTime, endTime: endTime, entityType: entityType, zoneIds: zoneIds, domains: domains, queryCondition: queryCondition, limit: limit, offset: offset, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询CC防护命中规则详情列表
    ///
    /// 本接口（DescribeWebProtectionHitRuleDetail）用于查询CC防护命中规则详情列表。
    @inlinable
    public func describeWebProtectionHitRuleDetail(startTime: Date, endTime: Date, entityType: String, zoneIds: [String]? = nil, domains: [String]? = nil, queryCondition: [QueryCondition]? = nil, limit: Int64? = nil, offset: Int64? = nil, interval: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebProtectionHitRuleDetailResponse {
        try await self.describeWebProtectionHitRuleDetail(.init(startTime: startTime, endTime: endTime, entityType: entityType, zoneIds: zoneIds, domains: domains, queryCondition: queryCondition, limit: limit, offset: offset, interval: interval, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 查询CC防护命中规则详情列表
    ///
    /// 本接口（DescribeWebProtectionHitRuleDetail）用于查询CC防护命中规则详情列表。
    @inlinable
    public func describeWebProtectionHitRuleDetailPaginated(_ input: DescribeWebProtectionHitRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SecHitRuleInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeWebProtectionHitRuleDetail, logger: logger, on: eventLoop)
    }

    /// 查询CC防护命中规则详情列表
    ///
    /// 本接口（DescribeWebProtectionHitRuleDetail）用于查询CC防护命中规则详情列表。
    @inlinable @discardableResult
    public func describeWebProtectionHitRuleDetailPaginated(_ input: DescribeWebProtectionHitRuleDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWebProtectionHitRuleDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWebProtectionHitRuleDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询CC防护命中规则详情列表
    ///
    /// 本接口（DescribeWebProtectionHitRuleDetail）用于查询CC防护命中规则详情列表。
    ///
    /// - Returns: `AsyncSequence`s of `SecHitRuleInfo` and `DescribeWebProtectionHitRuleDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWebProtectionHitRuleDetailPaginator(_ input: DescribeWebProtectionHitRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWebProtectionHitRuleDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWebProtectionHitRuleDetail, logger: logger, on: eventLoop)
    }
}
