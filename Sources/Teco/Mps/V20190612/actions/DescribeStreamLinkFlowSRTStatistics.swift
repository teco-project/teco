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

extension Mps {
    /// DescribeStreamLinkFlowSRTStatistics请求参数结构体
    public struct DescribeStreamLinkFlowSRTStatisticsRequest: TCRequestModel {
        /// 传输流ID。
        public let flowId: String

        /// 输入或输出类型，可选[input|output]。
        public let type: String

        /// 输入或输出Id。
        public let inputOutputId: String

        /// 主通道或备通道，可选[0|1]。
        public let pipeline: String

        /// 统计的开始时间，默认为前一小时，最多支持查询近7天。
        /// UTC时间，如'2020-01-01T12:00:00Z'。
        public let startTime: String

        /// 统计的结束时间，默认为StartTime后一小时，最多支持查询24小时的数据。
        /// UTC时间，如'2020-01-01T12:00:00Z'。
        public let endTime: String

        /// 查询间隔，可选[5s|1min|5min|15min]。
        public let period: String

        public init(flowId: String, type: String, inputOutputId: String, pipeline: String, startTime: String, endTime: String, period: String) {
            self.flowId = flowId
            self.type = type
            self.inputOutputId = inputOutputId
            self.pipeline = pipeline
            self.startTime = startTime
            self.endTime = endTime
            self.period = period
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case type = "Type"
            case inputOutputId = "InputOutputId"
            case pipeline = "Pipeline"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case period = "Period"
        }
    }

    /// DescribeStreamLinkFlowSRTStatistics返回参数结构体
    public struct DescribeStreamLinkFlowSRTStatisticsResponse: TCResponseModel {
        /// 传输流的SRT质量数据列表。
        public let infos: [FlowSRTInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case infos = "Infos"
            case requestId = "RequestId"
        }
    }

    /// 查询SRT数据信息
    ///
    /// 查询媒体传输流的SRT质量数据。
    @inlinable
    public func describeStreamLinkFlowSRTStatistics(_ input: DescribeStreamLinkFlowSRTStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamLinkFlowSRTStatisticsResponse> {
        self.client.execute(action: "DescribeStreamLinkFlowSRTStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询SRT数据信息
    ///
    /// 查询媒体传输流的SRT质量数据。
    @inlinable
    public func describeStreamLinkFlowSRTStatistics(_ input: DescribeStreamLinkFlowSRTStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowSRTStatisticsResponse {
        try await self.client.execute(action: "DescribeStreamLinkFlowSRTStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询SRT数据信息
    ///
    /// 查询媒体传输流的SRT质量数据。
    @inlinable
    public func describeStreamLinkFlowSRTStatistics(flowId: String, type: String, inputOutputId: String, pipeline: String, startTime: String, endTime: String, period: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamLinkFlowSRTStatisticsResponse> {
        self.describeStreamLinkFlowSRTStatistics(DescribeStreamLinkFlowSRTStatisticsRequest(flowId: flowId, type: type, inputOutputId: inputOutputId, pipeline: pipeline, startTime: startTime, endTime: endTime, period: period), region: region, logger: logger, on: eventLoop)
    }

    /// 查询SRT数据信息
    ///
    /// 查询媒体传输流的SRT质量数据。
    @inlinable
    public func describeStreamLinkFlowSRTStatistics(flowId: String, type: String, inputOutputId: String, pipeline: String, startTime: String, endTime: String, period: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowSRTStatisticsResponse {
        try await self.describeStreamLinkFlowSRTStatistics(DescribeStreamLinkFlowSRTStatisticsRequest(flowId: flowId, type: type, inputOutputId: inputOutputId, pipeline: pipeline, startTime: startTime, endTime: endTime, period: period), region: region, logger: logger, on: eventLoop)
    }
}
