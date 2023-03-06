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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Teo {
    /// DescribeWebManagedRulesHitRuleDetail请求参数结构体
    public struct DescribeWebManagedRulesHitRuleDetailRequest: TCPaginatedRequest {
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

        /// 站点集合，不填默认选择全部站点。
        public let zoneIds: [String]?

        /// 子域名列表，不填默认选择全部全部子域名。
        public let domains: [String]?

        /// 查询时间粒度，取值有：
        /// <li>min：1分钟；</li>
        /// <li>5min：5分钟；</li>
        /// <li>hour：1小时；</li>
        /// <li>day：1天 。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        public let interval: String?

        /// 筛选条件，key可选的值有：
        /// <li>action ：执行动作 。</li>
        public let queryCondition: [QueryCondition]?

        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: Int64?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?

        public init(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.zoneIds = zoneIds
            self.domains = domains
            self.interval = interval
            self.queryCondition = queryCondition
            self.limit = limit
            self.offset = offset
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case interval = "Interval"
            case queryCondition = "QueryCondition"
            case limit = "Limit"
            case offset = "Offset"
            case area = "Area"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeWebManagedRulesHitRuleDetailResponse) -> DescribeWebManagedRulesHitRuleDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWebManagedRulesHitRuleDetailRequest(startTime: self.startTime, endTime: self.endTime, zoneIds: self.zoneIds, domains: self.domains, interval: self.interval, queryCondition: self.queryCondition, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), area: self.area)
        }
    }

    /// DescribeWebManagedRulesHitRuleDetail返回参数结构体
    public struct DescribeWebManagedRulesHitRuleDetailResponse: TCPaginatedResponse {
        /// 命中规则的详细列表。
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

    /// 查询Web攻击命中规则详情
    ///
    /// 本接口（DescribeWebManagedRulesHitRuleDetail）用于查询WAF攻击命中规则详情。
    @inlinable
    public func describeWebManagedRulesHitRuleDetail(_ input: DescribeWebManagedRulesHitRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebManagedRulesHitRuleDetailResponse> {
        self.client.execute(action: "DescribeWebManagedRulesHitRuleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Web攻击命中规则详情
    ///
    /// 本接口（DescribeWebManagedRulesHitRuleDetail）用于查询WAF攻击命中规则详情。
    @inlinable
    public func describeWebManagedRulesHitRuleDetail(_ input: DescribeWebManagedRulesHitRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesHitRuleDetailResponse {
        try await self.client.execute(action: "DescribeWebManagedRulesHitRuleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Web攻击命中规则详情
    ///
    /// 本接口（DescribeWebManagedRulesHitRuleDetail）用于查询WAF攻击命中规则详情。
    @inlinable
    public func describeWebManagedRulesHitRuleDetail(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebManagedRulesHitRuleDetailResponse> {
        let input = DescribeWebManagedRulesHitRuleDetailRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, domains: domains, interval: interval, queryCondition: queryCondition, limit: limit, offset: offset, area: area)
        return self.client.execute(action: "DescribeWebManagedRulesHitRuleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Web攻击命中规则详情
    ///
    /// 本接口（DescribeWebManagedRulesHitRuleDetail）用于查询WAF攻击命中规则详情。
    @inlinable
    public func describeWebManagedRulesHitRuleDetail(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, interval: String? = nil, queryCondition: [QueryCondition]? = nil, limit: Int64? = nil, offset: Int64? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesHitRuleDetailResponse {
        let input = DescribeWebManagedRulesHitRuleDetailRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, domains: domains, interval: interval, queryCondition: queryCondition, limit: limit, offset: offset, area: area)
        return try await self.client.execute(action: "DescribeWebManagedRulesHitRuleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Web攻击命中规则详情
    ///
    /// 本接口（DescribeWebManagedRulesHitRuleDetail）用于查询WAF攻击命中规则详情。
    @inlinable
    public func describeWebManagedRulesHitRuleDetailPaginated(_ input: DescribeWebManagedRulesHitRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SecHitRuleInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeWebManagedRulesHitRuleDetail, logger: logger, on: eventLoop)
    }

    /// 查询Web攻击命中规则详情
    ///
    /// 本接口（DescribeWebManagedRulesHitRuleDetail）用于查询WAF攻击命中规则详情。
    @inlinable @discardableResult
    public func describeWebManagedRulesHitRuleDetailPaginated(_ input: DescribeWebManagedRulesHitRuleDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWebManagedRulesHitRuleDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWebManagedRulesHitRuleDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Web攻击命中规则详情
    ///
    /// 本接口（DescribeWebManagedRulesHitRuleDetail）用于查询WAF攻击命中规则详情。
    @inlinable
    public func describeWebManagedRulesHitRuleDetailPaginator(_ input: DescribeWebManagedRulesHitRuleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWebManagedRulesHitRuleDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWebManagedRulesHitRuleDetail, logger: logger, on: eventLoop)
    }
}
