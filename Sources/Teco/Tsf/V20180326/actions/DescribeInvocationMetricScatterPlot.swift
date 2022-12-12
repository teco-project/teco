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

extension Tsf {
    /// DescribeInvocationMetricScatterPlot请求参数结构体
    public struct DescribeInvocationMetricScatterPlotRequest: TCRequestModel {
        /// 查询开始时间
        public let startTime: Date?
        
        /// 查询结束时间
        public let endTime: Date?
        
        /// 查询时间粒度，单位秒。可选值：60、3600、86400。
        public let period: Int64?
        
        /// 查询指标维度
        public let metricDimensions: [MetricDimension]?
        
        /// 查询指标名
        public let metrics: [Metric]?
        
        /// 视图视角。可选值：SERVER, CLIENT。默认为SERVER
        public let kind: String?
        
        public init (startTime: Date? = nil, endTime: Date? = nil, period: Int64? = nil, metricDimensions: [MetricDimension]? = nil, metrics: [Metric]? = nil, kind: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.period = period
            self.metricDimensions = metricDimensions
            self.metrics = metrics
            self.kind = kind
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case period = "Period"
            case metricDimensions = "MetricDimensions"
            case metrics = "Metrics"
            case kind = "Kind"
        }
    }
    
    /// DescribeInvocationMetricScatterPlot返回参数结构体
    public struct DescribeInvocationMetricScatterPlotResponse: TCResponseModel {
        /// 多值时间抽统计指标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: InvocationMetricScatterPlot?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查询调用指标数据散点图
    @inlinable
    public func describeInvocationMetricScatterPlot(_ input: DescribeInvocationMetricScatterPlotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInvocationMetricScatterPlotResponse > {
        self.client.execute(action: "DescribeInvocationMetricScatterPlot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询调用指标数据散点图
    @inlinable
    public func describeInvocationMetricScatterPlot(_ input: DescribeInvocationMetricScatterPlotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationMetricScatterPlotResponse {
        try await self.client.execute(action: "DescribeInvocationMetricScatterPlot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
