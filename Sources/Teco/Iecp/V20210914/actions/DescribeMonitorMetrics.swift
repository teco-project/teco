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

extension Iecp {
    /// DescribeMonitorMetrics请求参数结构体
    public struct DescribeMonitorMetricsRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// 查询维度
        public let queryType: String

        /// 起始时间Unix秒时间戳
        public let startTime: Int64

        /// 终止时间Unix秒时间戳
        public let endTime: Int64

        /// 步长（分钟）
        public let interval: Int64

        /// 节点名称，查询节点监控时必填
        public let nodeName: String?

        /// 命名空间，不填则默认为default
        public let namespace: String?

        /// Pod名称，查询Pod监控时必填
        public let podName: String?

        /// Workload名称，查询Workload监控时必填
        public let workloadName: String?

        public init(edgeUnitId: UInt64, queryType: String, startTime: Int64, endTime: Int64, interval: Int64, nodeName: String? = nil, namespace: String? = nil, podName: String? = nil, workloadName: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.queryType = queryType
            self.startTime = startTime
            self.endTime = endTime
            self.interval = interval
            self.nodeName = nodeName
            self.namespace = namespace
            self.podName = podName
            self.workloadName = workloadName
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case queryType = "QueryType"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case interval = "Interval"
            case nodeName = "NodeName"
            case namespace = "Namespace"
            case podName = "PodName"
            case workloadName = "WorkloadName"
        }
    }

    /// DescribeMonitorMetrics返回参数结构体
    public struct DescribeMonitorMetricsResponse: TCResponseModel {
        /// 查询监控指标结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metrics: [MonitorMetricsColumn]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metrics = "Metrics"
            case requestId = "RequestId"
        }
    }

    /// 查询边缘单元监控数据
    @inlinable
    public func describeMonitorMetrics(_ input: DescribeMonitorMetricsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMonitorMetricsResponse> {
        self.client.execute(action: "DescribeMonitorMetrics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元监控数据
    @inlinable
    public func describeMonitorMetrics(_ input: DescribeMonitorMetricsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMonitorMetricsResponse {
        try await self.client.execute(action: "DescribeMonitorMetrics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘单元监控数据
    @inlinable
    public func describeMonitorMetrics(edgeUnitId: UInt64, queryType: String, startTime: Int64, endTime: Int64, interval: Int64, nodeName: String? = nil, namespace: String? = nil, podName: String? = nil, workloadName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMonitorMetricsResponse> {
        self.describeMonitorMetrics(DescribeMonitorMetricsRequest(edgeUnitId: edgeUnitId, queryType: queryType, startTime: startTime, endTime: endTime, interval: interval, nodeName: nodeName, namespace: namespace, podName: podName, workloadName: workloadName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元监控数据
    @inlinable
    public func describeMonitorMetrics(edgeUnitId: UInt64, queryType: String, startTime: Int64, endTime: Int64, interval: Int64, nodeName: String? = nil, namespace: String? = nil, podName: String? = nil, workloadName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMonitorMetricsResponse {
        try await self.describeMonitorMetrics(DescribeMonitorMetricsRequest(edgeUnitId: edgeUnitId, queryType: queryType, startTime: startTime, endTime: endTime, interval: interval, nodeName: nodeName, namespace: namespace, podName: podName, workloadName: workloadName), region: region, logger: logger, on: eventLoop)
    }
}
