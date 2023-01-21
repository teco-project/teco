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

extension Cls {
    /// DescribeLogHistogram请求参数结构体
    public struct DescribeLogHistogramRequest: TCRequestModel {
        /// 要查询的日志主题ID
        public let topicId: String

        /// 要查询的日志的起始时间，Unix时间戳，单位ms
        public let from: Int64

        /// 要查询的日志的结束时间，Unix时间戳，单位ms
        public let to: Int64

        /// 查询语句
        public let query: String

        /// 时间间隔: 单位ms  限制性条件：(To-From) / interval <= 200
        public let interval: Int64?

        public init(topicId: String, from: Int64, to: Int64, query: String, interval: Int64? = nil) {
            self.topicId = topicId
            self.from = from
            self.to = to
            self.query = query
            self.interval = interval
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case from = "From"
            case to = "To"
            case query = "Query"
            case interval = "Interval"
        }
    }

    /// DescribeLogHistogram返回参数结构体
    public struct DescribeLogHistogramResponse: TCResponseModel {
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
    public func describeLogHistogram(topicId: String, from: Int64, to: Int64, query: String, interval: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogHistogramResponse> {
        self.describeLogHistogram(DescribeLogHistogramRequest(topicId: topicId, from: from, to: to, query: query, interval: interval), region: region, logger: logger, on: eventLoop)
    }

    /// 获取日志数量直方图
    ///
    /// 本接口用于构建日志数量直方图
    @inlinable
    public func describeLogHistogram(topicId: String, from: Int64, to: Int64, query: String, interval: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogHistogramResponse {
        try await self.describeLogHistogram(DescribeLogHistogramRequest(topicId: topicId, from: from, to: to, query: query, interval: interval), region: region, logger: logger, on: eventLoop)
    }
}
