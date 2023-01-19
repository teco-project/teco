//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Gaap {
    /// DescribeListenerStatistics请求参数结构体
    public struct DescribeListenerStatisticsRequest: TCRequestModel {
        /// 监听器ID
        public let listenerId: String

        /// 起始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 统计指标名称列表，支持: 入带宽:InBandwidth, 出带宽:OutBandwidth, 并发:Concurrent, 入包量:InPackets, 出包量:OutPackets。
        public let metricNames: [String]

        /// 监控粒度，目前支持300，3600，86400，单位：秒。
        /// 查询时间范围不超过1天，支持最小粒度300秒；
        /// 查询间范围不超过7天，支持最小粒度3600秒；
        /// 查询间范围超过7天，支持最小粒度86400秒。
        public let granularity: UInt64

        public init(listenerId: String, startTime: Date, endTime: Date, metricNames: [String], granularity: UInt64) {
            self.listenerId = listenerId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricNames = metricNames
            self.granularity = granularity
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case granularity = "Granularity"
        }
    }

    /// DescribeListenerStatistics返回参数结构体
    public struct DescribeListenerStatisticsResponse: TCResponseModel {
        /// 通道组统计数据
        public let statisticsData: [MetricStatisticsInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case statisticsData = "StatisticsData"
            case requestId = "RequestId"
        }
    }

    /// 查询监听器统计数据
    ///
    /// 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发数据。支持300秒, 3600秒和86400秒的细粒度，取值为细粒度范围内最大值。
    @inlinable
    public func describeListenerStatistics(_ input: DescribeListenerStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenerStatisticsResponse> {
        self.client.execute(action: "DescribeListenerStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询监听器统计数据
    ///
    /// 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发数据。支持300秒, 3600秒和86400秒的细粒度，取值为细粒度范围内最大值。
    @inlinable
    public func describeListenerStatistics(_ input: DescribeListenerStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenerStatisticsResponse {
        try await self.client.execute(action: "DescribeListenerStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询监听器统计数据
    ///
    /// 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发数据。支持300秒, 3600秒和86400秒的细粒度，取值为细粒度范围内最大值。
    @inlinable
    public func describeListenerStatistics(listenerId: String, startTime: Date, endTime: Date, metricNames: [String], granularity: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenerStatisticsResponse> {
        self.describeListenerStatistics(DescribeListenerStatisticsRequest(listenerId: listenerId, startTime: startTime, endTime: endTime, metricNames: metricNames, granularity: granularity), region: region, logger: logger, on: eventLoop)
    }

    /// 查询监听器统计数据
    ///
    /// 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发数据。支持300秒, 3600秒和86400秒的细粒度，取值为细粒度范围内最大值。
    @inlinable
    public func describeListenerStatistics(listenerId: String, startTime: Date, endTime: Date, metricNames: [String], granularity: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenerStatisticsResponse {
        try await self.describeListenerStatistics(DescribeListenerStatisticsRequest(listenerId: listenerId, startTime: startTime, endTime: endTime, metricNames: metricNames, granularity: granularity), region: region, logger: logger, on: eventLoop)
    }
}
