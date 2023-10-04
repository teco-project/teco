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

extension Yinsuda {
    /// DescribeKTVRobots请求参数结构体
    public struct DescribeKTVRobotsRequest: TCPaginatedRequest {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 机器人Id列表。
        public let robotIds: [String]?

        /// 机器人状态，取值有：
        /// - Play：播放
        /// - Pause：暂停
        /// - Destroy：销毁
        public let statuses: [String]?

        /// 匹配创建时间在此时间段内的机器人。
        /// - 包含所指定的头尾时间点。
        public let createTime: TimeRange?

        /// 分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        public let offset: Int64?

        /// 分页返回的起始偏移量，默认值：10。
        public let limit: Int64?

        public init(appName: String, userId: String, robotIds: [String]? = nil, statuses: [String]? = nil, createTime: TimeRange? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.appName = appName
            self.userId = userId
            self.robotIds = robotIds
            self.statuses = statuses
            self.createTime = createTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case robotIds = "RobotIds"
            case statuses = "Statuses"
            case createTime = "CreateTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeKTVRobotsResponse) -> DescribeKTVRobotsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(appName: self.appName, userId: self.userId, robotIds: self.robotIds, statuses: self.statuses, createTime: self.createTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeKTVRobots返回参数结构体
    public struct DescribeKTVRobotsResponse: TCPaginatedResponse {
        /// 机器人总数。
        public let totalCount: Int64

        /// 机器人信息集合。
        public let ktvRobotInfoSet: [KTVRobotInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ktvRobotInfoSet = "KTVRobotInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``KTVRobotInfo`` list from the paginated response.
        public func getItems() -> [KTVRobotInfo] {
            self.ktvRobotInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取机器人信息
    ///
    /// 获取机器人列表，支持 Id、状态等过滤条件。
    @inlinable
    public func describeKTVRobots(_ input: DescribeKTVRobotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVRobotsResponse> {
        self.client.execute(action: "DescribeKTVRobots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机器人信息
    ///
    /// 获取机器人列表，支持 Id、状态等过滤条件。
    @inlinable
    public func describeKTVRobots(_ input: DescribeKTVRobotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVRobotsResponse {
        try await self.client.execute(action: "DescribeKTVRobots", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取机器人信息
    ///
    /// 获取机器人列表，支持 Id、状态等过滤条件。
    @inlinable
    public func describeKTVRobots(appName: String, userId: String, robotIds: [String]? = nil, statuses: [String]? = nil, createTime: TimeRange? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVRobotsResponse> {
        self.describeKTVRobots(.init(appName: appName, userId: userId, robotIds: robotIds, statuses: statuses, createTime: createTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取机器人信息
    ///
    /// 获取机器人列表，支持 Id、状态等过滤条件。
    @inlinable
    public func describeKTVRobots(appName: String, userId: String, robotIds: [String]? = nil, statuses: [String]? = nil, createTime: TimeRange? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVRobotsResponse {
        try await self.describeKTVRobots(.init(appName: appName, userId: userId, robotIds: robotIds, statuses: statuses, createTime: createTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取机器人信息
    ///
    /// 获取机器人列表，支持 Id、状态等过滤条件。
    @inlinable
    public func describeKTVRobotsPaginated(_ input: DescribeKTVRobotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [KTVRobotInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeKTVRobots, logger: logger, on: eventLoop)
    }

    /// 获取机器人信息
    ///
    /// 获取机器人列表，支持 Id、状态等过滤条件。
    @inlinable @discardableResult
    public func describeKTVRobotsPaginated(_ input: DescribeKTVRobotsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeKTVRobotsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeKTVRobots, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取机器人信息
    ///
    /// 获取机器人列表，支持 Id、状态等过滤条件。
    ///
    /// - Returns: `AsyncSequence`s of ``KTVRobotInfo`` and ``DescribeKTVRobotsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeKTVRobotsPaginator(_ input: DescribeKTVRobotsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeKTVRobotsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeKTVRobots, logger: logger, on: eventLoop)
    }
}
