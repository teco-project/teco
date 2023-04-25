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

// Test PR teco-project/teco-code-generator#23.

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Gme {
    /// DescribeAppStatistics请求参数结构体
    public struct DescribeAppStatisticsRequest: TCRequestModel {
        /// GME应用ID
        public let bizId: UInt64

        /// 数据开始时间，东八区时间，格式: 年-月-日，如: 2018-07-13
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 数据结束时间，东八区时间，格式: 年-月-日，如: 2018-07-13
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        /// 要查询的服务列表，取值：RealTimeSpeech/VoiceMessage/VoiceFilter/SpeechToText
        public let services: [String]

        public init(bizId: UInt64, startDate: Date, endDate: Date, services: [String]) {
            self.bizId = bizId
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.services = services
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case services = "Services"
        }
    }

    /// DescribeAppStatistics返回参数结构体
    public struct DescribeAppStatisticsResponse: TCResponseModel {
        /// 应用用量统计数据
        public let data: DescribeAppStatisticsResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取应用用量统计数据
    ///
    /// 本接口(DescribeAppStatistics)用于获取某个GME应用的用量数据。包括实时语音，语音消息及转文本，语音分析等。最长查询周期为最近60天。
    @inlinable
    public func describeAppStatistics(_ input: DescribeAppStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppStatisticsResponse> {
        self.client.execute(action: "DescribeAppStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用用量统计数据
    ///
    /// 本接口(DescribeAppStatistics)用于获取某个GME应用的用量数据。包括实时语音，语音消息及转文本，语音分析等。最长查询周期为最近60天。
    @inlinable
    public func describeAppStatistics(_ input: DescribeAppStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppStatisticsResponse {
        try await self.client.execute(action: "DescribeAppStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用用量统计数据
    ///
    /// 本接口(DescribeAppStatistics)用于获取某个GME应用的用量数据。包括实时语音，语音消息及转文本，语音分析等。最长查询周期为最近60天。
    @inlinable
    public func describeAppStatistics(bizId: UInt64, startDate: Date, endDate: Date, services: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppStatisticsResponse> {
        self.describeAppStatistics(.init(bizId: bizId, startDate: startDate, endDate: endDate, services: services), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用用量统计数据
    ///
    /// 本接口(DescribeAppStatistics)用于获取某个GME应用的用量数据。包括实时语音，语音消息及转文本，语音分析等。最长查询周期为最近60天。
    @inlinable
    public func describeAppStatistics(bizId: UInt64, startDate: Date, endDate: Date, services: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppStatisticsResponse {
        try await self.describeAppStatistics(.init(bizId: bizId, startDate: startDate, endDate: endDate, services: services), region: region, logger: logger, on: eventLoop)
    }
}
