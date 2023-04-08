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
import TecoCore
import TecoDateHelpers

extension Teo {
    /// DescribeTopL7CacheData请求参数结构体
    public struct DescribeTopL7CacheDataRequest: TCRequestModel {
        /// RFC3339标准，客户端时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// RFC3339标准，客户端时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 时序类访问流量指标
        public let metricName: String

        /// topN,填0时返回全量数据
        public let limit: Int64

        /// 时间间隔，选填{min, 5min, hour, day, week}
        public let interval: String

        /// ZoneId数组
        public let zoneIds: [String]?

        /// 筛选条件
        public let filters: [Filter]?

        /// 加速区域，取值有：
        /// <li>mainland：中国大陆境内;</li>
        /// <li>overseas：全球（不含中国大陆）。</li>
        public let area: String?

        public init(startTime: Date, endTime: Date, metricName: String, limit: Int64, interval: String, zoneIds: [String]? = nil, filters: [Filter]? = nil, area: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricName = metricName
            self.limit = limit
            self.interval = interval
            self.zoneIds = zoneIds
            self.filters = filters
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case limit = "Limit"
            case interval = "Interval"
            case zoneIds = "ZoneIds"
            case filters = "Filters"
            case area = "Area"
        }
    }

    /// DescribeTopL7CacheData返回参数结构体
    public struct DescribeTopL7CacheDataResponse: TCResponseModel {
        /// top详细数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TopDataRecord]?

        /// 查询维度
        public let type: String

        /// 查询指标
        public let metricName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case type = "Type"
            case metricName = "MetricName"
            case requestId = "RequestId"
        }
    }

    /// 七层缓存分析类top流量数据接口
    ///
    /// 七层查询缓存分析top类流量数据
    @inlinable
    public func describeTopL7CacheData(_ input: DescribeTopL7CacheDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopL7CacheDataResponse> {
        self.client.execute(action: "DescribeTopL7CacheData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 七层缓存分析类top流量数据接口
    ///
    /// 七层查询缓存分析top类流量数据
    @inlinable
    public func describeTopL7CacheData(_ input: DescribeTopL7CacheDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopL7CacheDataResponse {
        try await self.client.execute(action: "DescribeTopL7CacheData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 七层缓存分析类top流量数据接口
    ///
    /// 七层查询缓存分析top类流量数据
    @inlinable
    public func describeTopL7CacheData(startTime: Date, endTime: Date, metricName: String, limit: Int64, interval: String, zoneIds: [String]? = nil, filters: [Filter]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopL7CacheDataResponse> {
        self.describeTopL7CacheData(.init(startTime: startTime, endTime: endTime, metricName: metricName, limit: limit, interval: interval, zoneIds: zoneIds, filters: filters, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 七层缓存分析类top流量数据接口
    ///
    /// 七层查询缓存分析top类流量数据
    @inlinable
    public func describeTopL7CacheData(startTime: Date, endTime: Date, metricName: String, limit: Int64, interval: String, zoneIds: [String]? = nil, filters: [Filter]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopL7CacheDataResponse {
        try await self.describeTopL7CacheData(.init(startTime: startTime, endTime: endTime, metricName: metricName, limit: limit, interval: interval, zoneIds: zoneIds, filters: filters, area: area), region: region, logger: logger, on: eventLoop)
    }
}
