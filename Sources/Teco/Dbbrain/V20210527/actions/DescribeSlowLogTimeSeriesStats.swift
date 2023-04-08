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

extension Dbbrain {
    /// DescribeSlowLogTimeSeriesStats请求参数结构体
    public struct DescribeSlowLogTimeSeriesStatsRequest: TCRequestModel {
        /// 实例 ID 。
        public let instanceId: String

        /// 开始时间，如“2019-09-10 12:13:14”。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间，如“2019-09-10 12:13:14”，结束时间与开始时间的间隔最大可为7天。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        public let product: String?

        public init(instanceId: String, startTime: Date, endTime: Date, product: String? = nil) {
            self.instanceId = instanceId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case product = "Product"
        }
    }

    /// DescribeSlowLogTimeSeriesStats返回参数结构体
    public struct DescribeSlowLogTimeSeriesStatsResponse: TCResponseModel {
        /// 柱间单位时间间隔，单位为秒。
        public let period: Int64

        /// 单位时间间隔内慢日志数量统计。
        public let timeSeries: [TimeSlice]

        /// 单位时间间隔内的实例 cpu 利用率监控数据。
        public let seriesData: MonitorMetricSeriesData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case period = "Period"
            case timeSeries = "TimeSeries"
            case seriesData = "SeriesData"
            case requestId = "RequestId"
        }
    }

    /// 获取慢日志统计柱状图
    ///
    /// 获取慢日志统计柱状图。
    @inlinable
    public func describeSlowLogTimeSeriesStats(_ input: DescribeSlowLogTimeSeriesStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowLogTimeSeriesStatsResponse> {
        self.client.execute(action: "DescribeSlowLogTimeSeriesStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取慢日志统计柱状图
    ///
    /// 获取慢日志统计柱状图。
    @inlinable
    public func describeSlowLogTimeSeriesStats(_ input: DescribeSlowLogTimeSeriesStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogTimeSeriesStatsResponse {
        try await self.client.execute(action: "DescribeSlowLogTimeSeriesStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取慢日志统计柱状图
    ///
    /// 获取慢日志统计柱状图。
    @inlinable
    public func describeSlowLogTimeSeriesStats(instanceId: String, startTime: Date, endTime: Date, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowLogTimeSeriesStatsResponse> {
        self.describeSlowLogTimeSeriesStats(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 获取慢日志统计柱状图
    ///
    /// 获取慢日志统计柱状图。
    @inlinable
    public func describeSlowLogTimeSeriesStats(instanceId: String, startTime: Date, endTime: Date, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogTimeSeriesStatsResponse {
        try await self.describeSlowLogTimeSeriesStats(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, product: product), region: region, logger: logger, on: eventLoop)
    }
}
