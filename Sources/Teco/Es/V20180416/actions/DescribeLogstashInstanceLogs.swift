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

import TecoPaginationHelpers

extension Es {
    /// DescribeLogstashInstanceLogs请求参数结构体
    public struct DescribeLogstashInstanceLogsRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 日志类型，默认值为1
        /// <li>1, 主日志</li>
        /// <li>2, 慢日志</li>
        /// <li>3, GC日志</li>
        public let logType: UInt64?

        /// 搜索词，支持LUCENE语法，如 level:WARN、ip:1.1.1.1、message:test-index等
        public let searchKey: String?

        /// 日志开始时间，格式为YYYY-MM-DD HH:MM:SS, 如2019-01-22 20:15:53
        public let startTime: String?

        /// 日志结束时间，格式为YYYY-MM-DD HH:MM:SS, 如2019-01-22 20:15:53
        public let endTime: String?

        /// 分页起始值, 默认值为0
        public let offset: UInt64?

        /// 分页大小，默认值为100，最大值100
        public let limit: UInt64?

        /// 时间排序方式，默认值为0
        /// <li>0, 降序</li>
        /// <li>1, 升序</li>
        public let orderByType: UInt64?

        public init(instanceId: String, logType: UInt64? = nil, searchKey: String? = nil, startTime: String? = nil, endTime: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderByType: UInt64? = nil) {
            self.instanceId = instanceId
            self.logType = logType
            self.searchKey = searchKey
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case logType = "LogType"
            case searchKey = "SearchKey"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLogstashInstanceLogsResponse) -> DescribeLogstashInstanceLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLogstashInstanceLogsRequest(instanceId: self.instanceId, logType: self.logType, searchKey: self.searchKey, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderByType: self.orderByType)
        }
    }

    /// DescribeLogstashInstanceLogs返回参数结构体
    public struct DescribeLogstashInstanceLogsResponse: TCPaginatedResponse {
        /// 返回的日志条数
        public let totalCount: UInt64

        /// 日志详细信息列表
        public let instanceLogList: [InstanceLog]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceLogList = "InstanceLogList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceLog] {
            self.instanceLogList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询Logstash实例日志
    ///
    /// 查询用户该地域下符合条件的Logstash实例的日志
    @inlinable
    public func describeLogstashInstanceLogs(_ input: DescribeLogstashInstanceLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogstashInstanceLogsResponse> {
        self.client.execute(action: "DescribeLogstashInstanceLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Logstash实例日志
    ///
    /// 查询用户该地域下符合条件的Logstash实例的日志
    @inlinable
    public func describeLogstashInstanceLogs(_ input: DescribeLogstashInstanceLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogstashInstanceLogsResponse {
        try await self.client.execute(action: "DescribeLogstashInstanceLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Logstash实例日志
    ///
    /// 查询用户该地域下符合条件的Logstash实例的日志
    @inlinable
    public func describeLogstashInstanceLogs(instanceId: String, logType: UInt64? = nil, searchKey: String? = nil, startTime: String? = nil, endTime: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderByType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogstashInstanceLogsResponse> {
        let input = DescribeLogstashInstanceLogsRequest(instanceId: instanceId, logType: logType, searchKey: searchKey, startTime: startTime, endTime: endTime, offset: offset, limit: limit, orderByType: orderByType)
        return self.client.execute(action: "DescribeLogstashInstanceLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Logstash实例日志
    ///
    /// 查询用户该地域下符合条件的Logstash实例的日志
    @inlinable
    public func describeLogstashInstanceLogs(instanceId: String, logType: UInt64? = nil, searchKey: String? = nil, startTime: String? = nil, endTime: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderByType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogstashInstanceLogsResponse {
        let input = DescribeLogstashInstanceLogsRequest(instanceId: instanceId, logType: logType, searchKey: searchKey, startTime: startTime, endTime: endTime, offset: offset, limit: limit, orderByType: orderByType)
        return try await self.client.execute(action: "DescribeLogstashInstanceLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Logstash实例日志
    ///
    /// 查询用户该地域下符合条件的Logstash实例的日志
    @inlinable
    public func describeLogstashInstanceLogsPaginated(_ input: DescribeLogstashInstanceLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [InstanceLog])> {
        self.client.paginate(input: input, region: region, command: self.describeLogstashInstanceLogs, logger: logger, on: eventLoop)
    }

    /// 查询Logstash实例日志
    ///
    /// 查询用户该地域下符合条件的Logstash实例的日志
    @inlinable @discardableResult
    public func describeLogstashInstanceLogsPaginated(_ input: DescribeLogstashInstanceLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLogstashInstanceLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLogstashInstanceLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Logstash实例日志
    ///
    /// 查询用户该地域下符合条件的Logstash实例的日志
    @inlinable
    public func describeLogstashInstanceLogsPaginator(_ input: DescribeLogstashInstanceLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeLogstashInstanceLogsRequest, DescribeLogstashInstanceLogsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeLogstashInstanceLogsRequest, DescribeLogstashInstanceLogsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLogstashInstanceLogs, logger: logger, on: eventLoop)
    }
}
