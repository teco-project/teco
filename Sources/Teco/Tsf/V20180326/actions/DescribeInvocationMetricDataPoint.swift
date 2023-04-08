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

extension Tsf {
    /// DescribeInvocationMetricDataPoint请求参数结构体
    public struct DescribeInvocationMetricDataPointRequest: TCRequestModel {
        /// 开始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        /// 维度
        public let metricDimensionValues: [MetricDimensionValue]

        /// 指标
        public let metrics: [Metric]

        /// 调用视角。可选值：SERVER, CLIENT。默认为SERVER
        public let kind: String?

        public init(startTime: String, endTime: String, metricDimensionValues: [MetricDimensionValue], metrics: [Metric], kind: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.metricDimensionValues = metricDimensionValues
            self.metrics = metrics
            self.kind = kind
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricDimensionValues = "MetricDimensionValues"
            case metrics = "Metrics"
            case kind = "Kind"
        }
    }

    /// DescribeInvocationMetricDataPoint返回参数结构体
    public struct DescribeInvocationMetricDataPointResponse: TCResponseModel {
        /// 单值指标列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [MetricDataSingleValue]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询单值指标维度
    @inlinable
    public func describeInvocationMetricDataPoint(_ input: DescribeInvocationMetricDataPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvocationMetricDataPointResponse> {
        self.client.execute(action: "DescribeInvocationMetricDataPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询单值指标维度
    @inlinable
    public func describeInvocationMetricDataPoint(_ input: DescribeInvocationMetricDataPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationMetricDataPointResponse {
        try await self.client.execute(action: "DescribeInvocationMetricDataPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询单值指标维度
    @inlinable
    public func describeInvocationMetricDataPoint(startTime: String, endTime: String, metricDimensionValues: [MetricDimensionValue], metrics: [Metric], kind: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvocationMetricDataPointResponse> {
        self.describeInvocationMetricDataPoint(.init(startTime: startTime, endTime: endTime, metricDimensionValues: metricDimensionValues, metrics: metrics, kind: kind), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单值指标维度
    @inlinable
    public func describeInvocationMetricDataPoint(startTime: String, endTime: String, metricDimensionValues: [MetricDimensionValue], metrics: [Metric], kind: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationMetricDataPointResponse {
        try await self.describeInvocationMetricDataPoint(.init(startTime: startTime, endTime: endTime, metricDimensionValues: metricDimensionValues, metrics: metrics, kind: kind), region: region, logger: logger, on: eventLoop)
    }
}
