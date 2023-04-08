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

import Logging
import NIOCore
import TecoCore

extension Mps {
    /// DescribeStreamLinkFlowMediaStatistics请求参数结构体
    public struct DescribeStreamLinkFlowMediaStatisticsRequest: TCRequestModel {
        /// 传输流ID。
        public let flowId: String

        /// 输入或输出类型，可选[input|output]。
        public let type: String

        /// 输入或输出Id。
        public let inputOutputId: String

        /// 主通道或备通道，可选[0|1]。
        public let pipeline: String

        /// 查询间隔，可选[5s|1min|5min|15min]。
        public let period: String

        /// 统计的开始时间，默认为前一小时，最多支持查询近7天。
        /// UTC时间，如'2020-01-01T12:00:00Z'。
        public let startTime: String

        /// 统计的结束时间，默认为StartTime后一小时，最多支持查询24小时的数据。
        /// UTC时间，如'2020-01-01T12:00:00Z'。
        public let endTime: String

        public init(flowId: String, type: String, inputOutputId: String, pipeline: String, period: String, startTime: String, endTime: String) {
            self.flowId = flowId
            self.type = type
            self.inputOutputId = inputOutputId
            self.pipeline = pipeline
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case type = "Type"
            case inputOutputId = "InputOutputId"
            case pipeline = "Pipeline"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeStreamLinkFlowMediaStatistics返回参数结构体
    public struct DescribeStreamLinkFlowMediaStatisticsResponse: TCResponseModel {
        /// 传输流的媒体数据列表。
        public let infos: [FlowMediaInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case infos = "Infos"
            case requestId = "RequestId"
        }
    }

    /// 查询媒体质量数据
    ///
    /// 查询媒体传输流的媒体质量数据。
    @inlinable
    public func describeStreamLinkFlowMediaStatistics(_ input: DescribeStreamLinkFlowMediaStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamLinkFlowMediaStatisticsResponse> {
        self.client.execute(action: "DescribeStreamLinkFlowMediaStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询媒体质量数据
    ///
    /// 查询媒体传输流的媒体质量数据。
    @inlinable
    public func describeStreamLinkFlowMediaStatistics(_ input: DescribeStreamLinkFlowMediaStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowMediaStatisticsResponse {
        try await self.client.execute(action: "DescribeStreamLinkFlowMediaStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询媒体质量数据
    ///
    /// 查询媒体传输流的媒体质量数据。
    @inlinable
    public func describeStreamLinkFlowMediaStatistics(flowId: String, type: String, inputOutputId: String, pipeline: String, period: String, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamLinkFlowMediaStatisticsResponse> {
        self.describeStreamLinkFlowMediaStatistics(.init(flowId: flowId, type: type, inputOutputId: inputOutputId, pipeline: pipeline, period: period, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询媒体质量数据
    ///
    /// 查询媒体传输流的媒体质量数据。
    @inlinable
    public func describeStreamLinkFlowMediaStatistics(flowId: String, type: String, inputOutputId: String, pipeline: String, period: String, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowMediaStatisticsResponse {
        try await self.describeStreamLinkFlowMediaStatistics(.init(flowId: flowId, type: type, inputOutputId: inputOutputId, pipeline: pipeline, period: period, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
