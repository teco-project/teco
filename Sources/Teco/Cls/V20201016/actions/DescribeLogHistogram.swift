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

extension Cls {
    /// DescribeLogHistogram请求参数结构体
    public struct DescribeLogHistogramRequest: TCRequest {
        /// 要查询的日志的起始时间，Unix时间戳，单位ms
        public let from: Int64

        /// 要查询的日志的结束时间，Unix时间戳，单位ms
        public let to: Int64

        /// 查询语句
        public let query: String

        /// 要查询的日志主题ID
        public let topicId: String?

        /// 时间间隔: 单位ms  限制性条件：(To-From) / interval <= 200
        public let interval: Int64?

        /// 检索语法规则，默认值为0。
        /// 0：Lucene语法，1：CQL语法。
        /// 详细说明参见[检索条件语法规则](https://cloud.tencent.com/document/product/614/47044#RetrievesConditionalRules)
        public let syntaxRule: UInt64?

        public init(from: Int64, to: Int64, query: String, topicId: String? = nil, interval: Int64? = nil, syntaxRule: UInt64? = nil) {
            self.from = from
            self.to = to
            self.query = query
            self.topicId = topicId
            self.interval = interval
            self.syntaxRule = syntaxRule
        }

        enum CodingKeys: String, CodingKey {
            case from = "From"
            case to = "To"
            case query = "Query"
            case topicId = "TopicId"
            case interval = "Interval"
            case syntaxRule = "SyntaxRule"
        }
    }

    /// DescribeLogHistogram返回参数结构体
    public struct DescribeLogHistogramResponse: TCResponse {
        /// 统计周期： 单位ms
        public let interval: Int64

        /// 命中关键字的日志总条数
        public let totalCount: Int64

        /// 周期内统计结果详情
        public let histogramInfos: [HistogramInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case interval = "Interval"
            case totalCount = "TotalCount"
            case histogramInfos = "HistogramInfos"
            case requestId = "RequestId"
        }
    }

    /// 获取日志数量直方图
    ///
    /// 本接口用于构建日志数量直方图
    @inlinable
    public func describeLogHistogram(_ input: DescribeLogHistogramRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogHistogramResponse> {
        self.client.execute(action: "DescribeLogHistogram", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志数量直方图
    ///
    /// 本接口用于构建日志数量直方图
    @inlinable
    public func describeLogHistogram(_ input: DescribeLogHistogramRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogHistogramResponse {
        try await self.client.execute(action: "DescribeLogHistogram", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取日志数量直方图
    ///
    /// 本接口用于构建日志数量直方图
    @inlinable
    public func describeLogHistogram(from: Int64, to: Int64, query: String, topicId: String? = nil, interval: Int64? = nil, syntaxRule: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogHistogramResponse> {
        self.describeLogHistogram(.init(from: from, to: to, query: query, topicId: topicId, interval: interval, syntaxRule: syntaxRule), region: region, logger: logger, on: eventLoop)
    }

    /// 获取日志数量直方图
    ///
    /// 本接口用于构建日志数量直方图
    @inlinable
    public func describeLogHistogram(from: Int64, to: Int64, query: String, topicId: String? = nil, interval: Int64? = nil, syntaxRule: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogHistogramResponse {
        try await self.describeLogHistogram(.init(from: from, to: to, query: query, topicId: topicId, interval: interval, syntaxRule: syntaxRule), region: region, logger: logger, on: eventLoop)
    }
}
