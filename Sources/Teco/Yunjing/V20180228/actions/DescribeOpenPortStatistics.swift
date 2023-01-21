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

extension Yunjing {
    /// DescribeOpenPortStatistics请求参数结构体
    public struct DescribeOpenPortStatisticsRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Port - Uint64 - 是否必填：否 - 端口号</li>
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeOpenPortStatistics返回参数结构体
    public struct DescribeOpenPortStatisticsResponse: TCResponseModel {
        /// 端口统计列表总数
        public let totalCount: UInt64

        /// 端口统计数据列表
        public let openPortStatistics: [OpenPortStatistics]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case openPortStatistics = "OpenPortStatistics"
            case requestId = "RequestId"
        }
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatistics(_ input: DescribeOpenPortStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOpenPortStatisticsResponse> {
        self.client.execute(action: "DescribeOpenPortStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatistics(_ input: DescribeOpenPortStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpenPortStatisticsResponse {
        try await self.client.execute(action: "DescribeOpenPortStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOpenPortStatisticsResponse> {
        self.describeOpenPortStatistics(DescribeOpenPortStatisticsRequest(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取端口统计列表
    ///
    /// 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。
    @inlinable
    public func describeOpenPortStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpenPortStatisticsResponse {
        try await self.describeOpenPortStatistics(DescribeOpenPortStatisticsRequest(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
