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
    /// DescribeWebManagedRulesLog请求参数结构体
    public struct DescribeWebManagedRulesLogRequest: TCPaginatedRequest {
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

        /// 域名集合，不填默认选择全部子域名。
        public let domains: [String]?

        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: UInt64?

        /// 分页的偏移量，默认值为0。
        public let offset: UInt64?

        /// 筛选条件，key可选的值有：
        /// <li>attackType：攻击类型；</li>
        /// <li>riskLevel：风险等级；</li>
        /// <li>action：执行动作（处置方式）；</li>
        /// <li>ruleId：规则id；</li>
        /// <li>sipCountryCode：ip所在国家；</li>
        /// <li>attackIp：攻击ip；</li>
        /// <li>oriDomain：被攻击的子域名；</li>
        /// <li>eventId：事件id；</li>
        /// <li>ua：用户代理；</li>
        /// <li>requestMethod：请求方法；</li>
        /// <li>uri：统一资源标识符。</li>
        public let queryCondition: [QueryCondition]?

        /// 数据归属地区，取值有：
        /// <li>overseas：全球（除中国大陆地区）数据；</li>
        /// <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        public let area: String?

        public init(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.zoneIds = zoneIds
            self.domains = domains
            self.limit = limit
            self.offset = offset
            self.queryCondition = queryCondition
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case zoneIds = "ZoneIds"
            case domains = "Domains"
            case limit = "Limit"
            case offset = "Offset"
            case queryCondition = "QueryCondition"
            case area = "Area"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWebManagedRulesLogResponse) -> DescribeWebManagedRulesLogRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWebManagedRulesLogRequest(startTime: self.startTime, endTime: self.endTime, zoneIds: self.zoneIds, domains: self.domains, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), queryCondition: self.queryCondition, area: self.area)
        }
    }

    /// DescribeWebManagedRulesLog返回参数结构体
    public struct DescribeWebManagedRulesLogResponse: TCPaginatedResponse {
        /// Web攻击日志数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [WebLogs]?

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
        public func getItems() -> [WebLogs] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询Web攻击日志
    ///
    /// 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。
    @inlinable
    public func describeWebManagedRulesLog(_ input: DescribeWebManagedRulesLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebManagedRulesLogResponse> {
        self.client.execute(action: "DescribeWebManagedRulesLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Web攻击日志
    ///
    /// 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。
    @inlinable
    public func describeWebManagedRulesLog(_ input: DescribeWebManagedRulesLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesLogResponse {
        try await self.client.execute(action: "DescribeWebManagedRulesLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Web攻击日志
    ///
    /// 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。
    @inlinable
    public func describeWebManagedRulesLog(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebManagedRulesLogResponse> {
        let input = DescribeWebManagedRulesLogRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, domains: domains, limit: limit, offset: offset, queryCondition: queryCondition, area: area)
        return self.client.execute(action: "DescribeWebManagedRulesLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Web攻击日志
    ///
    /// 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。
    @inlinable
    public func describeWebManagedRulesLog(startTime: Date, endTime: Date, zoneIds: [String]? = nil, domains: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, queryCondition: [QueryCondition]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebManagedRulesLogResponse {
        let input = DescribeWebManagedRulesLogRequest(startTime: startTime, endTime: endTime, zoneIds: zoneIds, domains: domains, limit: limit, offset: offset, queryCondition: queryCondition, area: area)
        return try await self.client.execute(action: "DescribeWebManagedRulesLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Web攻击日志
    ///
    /// 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。
    @inlinable
    public func describeWebManagedRulesLogPaginated(_ input: DescribeWebManagedRulesLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [WebLogs])> {
        self.client.paginate(input: input, region: region, command: self.describeWebManagedRulesLog, logger: logger, on: eventLoop)
    }

    /// 查询Web攻击日志
    ///
    /// 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。
    @inlinable @discardableResult
    public func describeWebManagedRulesLogPaginated(_ input: DescribeWebManagedRulesLogRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWebManagedRulesLogResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWebManagedRulesLog, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Web攻击日志
    ///
    /// 本接口（DescribeWebManagedRulesLog）用于查询Web攻击日志。
    ///
    /// - Returns: `AsyncSequence`s of `WebLogs` and `DescribeWebManagedRulesLogResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWebManagedRulesLogPaginator(_ input: DescribeWebManagedRulesLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWebManagedRulesLogRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWebManagedRulesLog, logger: logger, on: eventLoop)
    }
}
