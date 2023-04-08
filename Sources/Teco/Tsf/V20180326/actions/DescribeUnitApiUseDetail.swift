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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Tsf {
    /// DescribeUnitApiUseDetail请求参数结构体
    public struct DescribeUnitApiUseDetailRequest: TCPaginatedRequest {
        /// 网关部署组ID
        public let gatewayDeployGroupId: String

        /// 网关分组Api ID
        public let apiId: String

        /// 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 网关实例ID
        public let gatewayInstanceId: String

        /// 网关分组ID
        public let groupId: String

        /// 翻页查询偏移量
        public let offset: Int64

        /// 翻页查询每页记录数
        public let limit: Int64

        /// 监控统计数据粒度
        public let period: Int64?

        public init(gatewayDeployGroupId: String, apiId: String, startTime: Date, endTime: Date, gatewayInstanceId: String, groupId: String, offset: Int64, limit: Int64, period: Int64? = nil) {
            self.gatewayDeployGroupId = gatewayDeployGroupId
            self.apiId = apiId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.gatewayInstanceId = gatewayInstanceId
            self.groupId = groupId
            self.offset = offset
            self.limit = limit
            self.period = period
        }

        enum CodingKeys: String, CodingKey {
            case gatewayDeployGroupId = "GatewayDeployGroupId"
            case apiId = "ApiId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case gatewayInstanceId = "GatewayInstanceId"
            case groupId = "GroupId"
            case offset = "Offset"
            case limit = "Limit"
            case period = "Period"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUnitApiUseDetailResponse) -> DescribeUnitApiUseDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUnitApiUseDetailRequest(gatewayDeployGroupId: self.gatewayDeployGroupId, apiId: self.apiId, startTime: self.startTime, endTime: self.endTime, gatewayInstanceId: self.gatewayInstanceId, groupId: self.groupId, offset: self.offset + .init(response.getItems().count), limit: self.limit, period: self.period)
        }
    }

    /// DescribeUnitApiUseDetail返回参数结构体
    public struct DescribeUnitApiUseDetailResponse: TCPaginatedResponse {
        /// 单元化使用统计对象
        public let result: GroupUnitApiUseStatistics

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GroupUnitApiDailyUseStatistics] {
            self.result.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询单元化网关API监控明细数据
    ///
    /// 查询网关API监控明细数据（仅单元化网关），非单元化网关使用DescribeApiUseDetail
    @inlinable
    public func describeUnitApiUseDetail(_ input: DescribeUnitApiUseDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnitApiUseDetailResponse> {
        self.client.execute(action: "DescribeUnitApiUseDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询单元化网关API监控明细数据
    ///
    /// 查询网关API监控明细数据（仅单元化网关），非单元化网关使用DescribeApiUseDetail
    @inlinable
    public func describeUnitApiUseDetail(_ input: DescribeUnitApiUseDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnitApiUseDetailResponse {
        try await self.client.execute(action: "DescribeUnitApiUseDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询单元化网关API监控明细数据
    ///
    /// 查询网关API监控明细数据（仅单元化网关），非单元化网关使用DescribeApiUseDetail
    @inlinable
    public func describeUnitApiUseDetail(gatewayDeployGroupId: String, apiId: String, startTime: Date, endTime: Date, gatewayInstanceId: String, groupId: String, offset: Int64, limit: Int64, period: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnitApiUseDetailResponse> {
        self.describeUnitApiUseDetail(.init(gatewayDeployGroupId: gatewayDeployGroupId, apiId: apiId, startTime: startTime, endTime: endTime, gatewayInstanceId: gatewayInstanceId, groupId: groupId, offset: offset, limit: limit, period: period), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单元化网关API监控明细数据
    ///
    /// 查询网关API监控明细数据（仅单元化网关），非单元化网关使用DescribeApiUseDetail
    @inlinable
    public func describeUnitApiUseDetail(gatewayDeployGroupId: String, apiId: String, startTime: Date, endTime: Date, gatewayInstanceId: String, groupId: String, offset: Int64, limit: Int64, period: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnitApiUseDetailResponse {
        try await self.describeUnitApiUseDetail(.init(gatewayDeployGroupId: gatewayDeployGroupId, apiId: apiId, startTime: startTime, endTime: endTime, gatewayInstanceId: gatewayInstanceId, groupId: groupId, offset: offset, limit: limit, period: period), region: region, logger: logger, on: eventLoop)
    }

    /// 查询单元化网关API监控明细数据
    ///
    /// 查询网关API监控明细数据（仅单元化网关），非单元化网关使用DescribeApiUseDetail
    @inlinable
    public func describeUnitApiUseDetailPaginated(_ input: DescribeUnitApiUseDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [GroupUnitApiDailyUseStatistics])> {
        self.client.paginate(input: input, region: region, command: self.describeUnitApiUseDetail, logger: logger, on: eventLoop)
    }

    /// 查询单元化网关API监控明细数据
    ///
    /// 查询网关API监控明细数据（仅单元化网关），非单元化网关使用DescribeApiUseDetail
    @inlinable @discardableResult
    public func describeUnitApiUseDetailPaginated(_ input: DescribeUnitApiUseDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUnitApiUseDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUnitApiUseDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询单元化网关API监控明细数据
    ///
    /// 查询网关API监控明细数据（仅单元化网关），非单元化网关使用DescribeApiUseDetail
    ///
    /// - Returns: `AsyncSequence`s of `GroupUnitApiDailyUseStatistics` and `DescribeUnitApiUseDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUnitApiUseDetailPaginator(_ input: DescribeUnitApiUseDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUnitApiUseDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUnitApiUseDetail, logger: logger, on: eventLoop)
    }
}
