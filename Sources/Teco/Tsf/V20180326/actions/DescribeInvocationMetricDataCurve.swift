//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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

extension Tsf {
    /// DescribeInvocationMetricDataCurve请求参数结构体
    public struct DescribeInvocationMetricDataCurveRequest: TCRequestModel {
        /// 查询开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date?

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 查询时间粒度，单位秒可选值：60、3600、86400
        public let period: Int64?

        /// 查询指标维度
        public let metricDimensions: [MetricDimension]?

        /// 查询指标名
        public let metrics: [Metric]?

        /// 视图视角。可选值：SERVER, CLIENT。默认为SERVER
        public let kind: String?

        /// 类型。组件监控使用，可选值：SQL 或者 NoSQL
        public let type: String?

        public init(startTime: Date? = nil, endTime: Date? = nil, period: Int64? = nil, metricDimensions: [MetricDimension]? = nil, metrics: [Metric]? = nil, kind: String? = nil, type: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.period = period
            self.metricDimensions = metricDimensions
            self.metrics = metrics
            self.kind = kind
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case period = "Period"
            case metricDimensions = "MetricDimensions"
            case metrics = "Metrics"
            case kind = "Kind"
            case type = "Type"
        }
    }

    /// DescribeInvocationMetricDataCurve返回参数结构体
    public struct DescribeInvocationMetricDataCurveResponse: TCResponseModel {
        /// 指标监控数据曲线集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [MetricDataCurve]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询调用指标数据变化曲线
    @inlinable
    public func describeInvocationMetricDataCurve(_ input: DescribeInvocationMetricDataCurveRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvocationMetricDataCurveResponse> {
        self.client.execute(action: "DescribeInvocationMetricDataCurve", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询调用指标数据变化曲线
    @inlinable
    public func describeInvocationMetricDataCurve(_ input: DescribeInvocationMetricDataCurveRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationMetricDataCurveResponse {
        try await self.client.execute(action: "DescribeInvocationMetricDataCurve", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询调用指标数据变化曲线
    @inlinable
    public func describeInvocationMetricDataCurve(startTime: Date? = nil, endTime: Date? = nil, period: Int64? = nil, metricDimensions: [MetricDimension]? = nil, metrics: [Metric]? = nil, kind: String? = nil, type: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvocationMetricDataCurveResponse> {
        self.describeInvocationMetricDataCurve(DescribeInvocationMetricDataCurveRequest(startTime: startTime, endTime: endTime, period: period, metricDimensions: metricDimensions, metrics: metrics, kind: kind, type: type), logger: logger, on: eventLoop)
    }

    /// 查询调用指标数据变化曲线
    @inlinable
    public func describeInvocationMetricDataCurve(startTime: Date? = nil, endTime: Date? = nil, period: Int64? = nil, metricDimensions: [MetricDimension]? = nil, metrics: [Metric]? = nil, kind: String? = nil, type: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationMetricDataCurveResponse {
        try await self.describeInvocationMetricDataCurve(DescribeInvocationMetricDataCurveRequest(startTime: startTime, endTime: endTime, period: period, metricDimensions: metricDimensions, metrics: metrics, kind: kind, type: type), logger: logger, on: eventLoop)
    }
}
