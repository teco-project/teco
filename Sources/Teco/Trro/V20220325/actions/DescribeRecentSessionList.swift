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
import TecoPaginationHelpers

extension Trro {
    /// DescribeRecentSessionList请求参数结构体
    public struct DescribeRecentSessionListRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: String

        /// 页码，从1开始
        public let pageNumber: UInt64

        /// 每页个数
        public let pageSize: UInt64

        /// 设备ID，支持过滤远端设备或现场设备
        public let deviceId: String?

        /// 时间范围的起始时间。时间范围最大为最近两小时，若不传或超出范围，则起始时间按两小时前计算
        public let startTime: UInt64?

        /// 时间范围的结束时间。时间范围最大为最近两小时，若不传或超出范围，则结束时间按当前时间计算
        public let endTime: UInt64?

        public init(projectId: String, pageNumber: UInt64, pageSize: UInt64, deviceId: String? = nil, startTime: UInt64? = nil, endTime: UInt64? = nil) {
            self.projectId = projectId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.deviceId = deviceId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case deviceId = "DeviceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRecentSessionListResponse) -> DescribeRecentSessionListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRecentSessionListRequest(projectId: self.projectId, pageNumber: self.pageNumber + 1, pageSize: self.pageSize, deviceId: self.deviceId, startTime: self.startTime, endTime: self.endTime)
        }
    }

    /// DescribeRecentSessionList返回参数结构体
    public struct DescribeRecentSessionListResponse: TCPaginatedResponse {
        /// 总个数
        public let total: UInt64

        /// 会话列表
        public let recentSessionList: [RecentSessionInfo]

        /// 本页数量
        public let num: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case recentSessionList = "RecentSessionList"
            case num = "Num"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RecentSessionInfo`` list from the paginated response.
        public func getItems() -> [RecentSessionInfo] {
            self.recentSessionList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取最新设备会话列表
    @inlinable
    public func describeRecentSessionList(_ input: DescribeRecentSessionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecentSessionListResponse> {
        self.client.execute(action: "DescribeRecentSessionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取最新设备会话列表
    @inlinable
    public func describeRecentSessionList(_ input: DescribeRecentSessionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecentSessionListResponse {
        try await self.client.execute(action: "DescribeRecentSessionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取最新设备会话列表
    @inlinable
    public func describeRecentSessionList(projectId: String, pageNumber: UInt64, pageSize: UInt64, deviceId: String? = nil, startTime: UInt64? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecentSessionListResponse> {
        self.describeRecentSessionList(.init(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, deviceId: deviceId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取最新设备会话列表
    @inlinable
    public func describeRecentSessionList(projectId: String, pageNumber: UInt64, pageSize: UInt64, deviceId: String? = nil, startTime: UInt64? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecentSessionListResponse {
        try await self.describeRecentSessionList(.init(projectId: projectId, pageNumber: pageNumber, pageSize: pageSize, deviceId: deviceId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取最新设备会话列表
    @inlinable
    public func describeRecentSessionListPaginated(_ input: DescribeRecentSessionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RecentSessionInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeRecentSessionList, logger: logger, on: eventLoop)
    }

    /// 获取最新设备会话列表
    @inlinable @discardableResult
    public func describeRecentSessionListPaginated(_ input: DescribeRecentSessionListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRecentSessionListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRecentSessionList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取最新设备会话列表
    ///
    /// - Returns: `AsyncSequence`s of ``RecentSessionInfo`` and ``DescribeRecentSessionListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRecentSessionListPaginator(_ input: DescribeRecentSessionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRecentSessionListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRecentSessionList, logger: logger, on: eventLoop)
    }
}
