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

extension Cwp {
    /// DescribeProcessStatistics请求参数结构体
    public struct DescribeProcessStatisticsRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>ProcessName - String - 是否必填：否 - 进程名</li>
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

    /// DescribeProcessStatistics返回参数结构体
    public struct DescribeProcessStatisticsResponse: TCResponseModel {
        /// 进程统计列表记录总数。
        public let totalCount: UInt64

        /// 进程统计列表数据数组。
        public let processStatistics: [ProcessStatistics]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case processStatistics = "ProcessStatistics"
            case requestId = "RequestId"
        }
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable
    public func describeProcessStatistics(_ input: DescribeProcessStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProcessStatisticsResponse > {
        self.client.execute(action: "DescribeProcessStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable
    public func describeProcessStatistics(_ input: DescribeProcessStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcessStatisticsResponse {
        try await self.client.execute(action: "DescribeProcessStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable
    public func describeProcessStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProcessStatisticsResponse > {
        self.describeProcessStatistics(DescribeProcessStatisticsRequest(limit: limit, offset: offset, filters: filters), logger: logger, on: eventLoop)
    }

    /// 获取进程统计列表
    ///
    /// 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。
    @inlinable
    public func describeProcessStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcessStatisticsResponse {
        try await self.describeProcessStatistics(DescribeProcessStatisticsRequest(limit: limit, offset: offset, filters: filters), logger: logger, on: eventLoop)
    }
}
