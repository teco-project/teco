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

extension Cwp {
    /// DescribeComponentStatistics请求参数结构体
    public struct DescribeComponentStatisticsRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// ComponentName - String - 是否必填：否 - 组件名称
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

    /// DescribeComponentStatistics返回参数结构体
    public struct DescribeComponentStatisticsResponse: TCResponseModel {
        /// 组件统计列表记录总数。
        public let totalCount: UInt64

        /// 组件统计列表数据数组。
        public let componentStatistics: [ComponentStatistics]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case componentStatistics = "ComponentStatistics"
            case requestId = "RequestId"
        }
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable
    public func describeComponentStatistics(_ input: DescribeComponentStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComponentStatisticsResponse> {
        self.client.execute(action: "DescribeComponentStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable
    public func describeComponentStatistics(_ input: DescribeComponentStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentStatisticsResponse {
        try await self.client.execute(action: "DescribeComponentStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable
    public func describeComponentStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComponentStatisticsResponse> {
        self.describeComponentStatistics(DescribeComponentStatisticsRequest(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组件统计列表
    ///
    /// 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。
    @inlinable
    public func describeComponentStatistics(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentStatisticsResponse {
        try await self.describeComponentStatistics(DescribeComponentStatisticsRequest(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
