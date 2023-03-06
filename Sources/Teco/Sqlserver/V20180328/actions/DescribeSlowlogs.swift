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

extension Sqlserver {
    /// DescribeSlowlogs请求参数结构体
    public struct DescribeSlowlogsRequest: TCPaginatedRequest {
        /// 实例ID，形如mssql-k8voqdlz
        public let instanceId: String

        /// 查询开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 分页返回，每页返回的数目，取值为1-100，默认值为20
        public let limit: Int64?

        /// 分页返回，页编号，默认值为第0页
        public let offset: UInt64?

        public init(instanceId: String, startTime: Date, endTime: Date, limit: Int64? = nil, offset: UInt64? = nil) {
            self.instanceId = instanceId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeSlowlogsResponse) -> DescribeSlowlogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSlowlogsRequest(instanceId: self.instanceId, startTime: self.startTime, endTime: self.endTime, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeSlowlogs返回参数结构体
    public struct DescribeSlowlogsResponse: TCPaginatedResponse {
        /// 查询总数
        public let totalCount: Int64

        /// 慢查询日志信息列表
        public let slowlogs: [SlowlogInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case slowlogs = "Slowlogs"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SlowlogInfo] {
            self.slowlogs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取慢查询日志文件信息
    ///
    /// 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息
    @inlinable
    public func describeSlowlogs(_ input: DescribeSlowlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowlogsResponse> {
        self.client.execute(action: "DescribeSlowlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取慢查询日志文件信息
    ///
    /// 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息
    @inlinable
    public func describeSlowlogs(_ input: DescribeSlowlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowlogsResponse {
        try await self.client.execute(action: "DescribeSlowlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取慢查询日志文件信息
    ///
    /// 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息
    @inlinable
    public func describeSlowlogs(instanceId: String, startTime: Date, endTime: Date, limit: Int64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowlogsResponse> {
        let input = DescribeSlowlogsRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeSlowlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取慢查询日志文件信息
    ///
    /// 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息
    @inlinable
    public func describeSlowlogs(instanceId: String, startTime: Date, endTime: Date, limit: Int64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowlogsResponse {
        let input = DescribeSlowlogsRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeSlowlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取慢查询日志文件信息
    ///
    /// 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息
    @inlinable
    public func describeSlowlogsPaginated(_ input: DescribeSlowlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SlowlogInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSlowlogs, logger: logger, on: eventLoop)
    }

    /// 获取慢查询日志文件信息
    ///
    /// 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息
    @inlinable
    public func describeSlowlogsPaginated(_ input: DescribeSlowlogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSlowlogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSlowlogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取慢查询日志文件信息
    ///
    /// 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息
    @inlinable
    public func describeSlowlogsPaginator(_ input: DescribeSlowlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeSlowlogsRequest, DescribeSlowlogsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeSlowlogsRequest, DescribeSlowlogsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeSlowlogsRequest, DescribeSlowlogsResponse>.ResultSequence(input: input, region: region, command: self.describeSlowlogs, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeSlowlogsRequest, DescribeSlowlogsResponse>.ResponseSequence(input: input, region: region, command: self.describeSlowlogs, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
