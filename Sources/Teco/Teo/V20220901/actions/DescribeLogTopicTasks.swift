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

extension Teo {
    /// DescribeLogTopicTasks请求参数结构体
    public struct DescribeLogTopicTasksRequest: TCPaginatedRequest {
        /// 站点ID。
        public let zoneId: String

        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: UInt64?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        public init(zoneId: String, limit: UInt64? = nil, offset: Int64? = nil) {
            self.zoneId = zoneId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLogTopicTasksResponse) -> DescribeLogTopicTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLogTopicTasksRequest(zoneId: self.zoneId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeLogTopicTasks返回参数结构体
    public struct DescribeLogTopicTasksResponse: TCPaginatedResponse {
        /// 推送任务列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicList: [ClsLogTopicInfo]?

        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topicList = "TopicList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClsLogTopicInfo] {
            self.topicList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取推送任务列表
    ///
    /// 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。
    @inlinable
    public func describeLogTopicTasks(_ input: DescribeLogTopicTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogTopicTasksResponse> {
        self.client.execute(action: "DescribeLogTopicTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取推送任务列表
    ///
    /// 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。
    @inlinable
    public func describeLogTopicTasks(_ input: DescribeLogTopicTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogTopicTasksResponse {
        try await self.client.execute(action: "DescribeLogTopicTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取推送任务列表
    ///
    /// 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。
    @inlinable
    public func describeLogTopicTasks(zoneId: String, limit: UInt64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogTopicTasksResponse> {
        let input = DescribeLogTopicTasksRequest(zoneId: zoneId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeLogTopicTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取推送任务列表
    ///
    /// 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。
    @inlinable
    public func describeLogTopicTasks(zoneId: String, limit: UInt64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogTopicTasksResponse {
        let input = DescribeLogTopicTasksRequest(zoneId: zoneId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeLogTopicTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取推送任务列表
    ///
    /// 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。
    @inlinable
    public func describeLogTopicTasksPaginated(_ input: DescribeLogTopicTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClsLogTopicInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLogTopicTasks, logger: logger, on: eventLoop)
    }

    /// 获取推送任务列表
    ///
    /// 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。
    @inlinable @discardableResult
    public func describeLogTopicTasksPaginated(_ input: DescribeLogTopicTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLogTopicTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLogTopicTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取推送任务列表
    ///
    /// 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。
    @inlinable
    public func describeLogTopicTasksPaginator(_ input: DescribeLogTopicTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeLogTopicTasksRequest, DescribeLogTopicTasksResponse>.ResultSequence, responses: TCClient.Paginator<DescribeLogTopicTasksRequest, DescribeLogTopicTasksResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLogTopicTasks, logger: logger, on: eventLoop)
    }
}
