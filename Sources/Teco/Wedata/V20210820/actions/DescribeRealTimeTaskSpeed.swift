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

import TecoCore

extension Wedata {
    /// DescribeRealTimeTaskSpeed请求参数结构体
    public struct DescribeRealTimeTaskSpeedRequest: TCRequestModel {
        /// 无
        public let taskId: String

        /// 带毫秒的时间戳
        public let startTime: UInt64

        /// 带毫秒的时间戳
        public let endTime: UInt64

        /// 粒度，1或者5
        public let granularity: UInt64

        /// 无
        public let projectId: String

        public init(taskId: String, startTime: UInt64, endTime: UInt64, granularity: UInt64, projectId: String) {
            self.taskId = taskId
            self.startTime = startTime
            self.endTime = endTime
            self.granularity = granularity
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case granularity = "Granularity"
            case projectId = "ProjectId"
        }
    }

    /// DescribeRealTimeTaskSpeed返回参数结构体
    public struct DescribeRealTimeTaskSpeedResponse: TCResponseModel {
        /// 同步速度条/s列表
        public let recordsSpeedList: [RecordsSpeed]

        /// 同步速度字节/s列表
        public let bytesSpeedList: [BytesSpeed]

        /// 同步速度，包括了RecordsSpeedList和BytesSpeedList
        public let data: RealTimeTaskSpeed

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recordsSpeedList = "RecordsSpeedList"
            case bytesSpeedList = "BytesSpeedList"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 实时任务同步速度趋势
    @inlinable
    public func describeRealTimeTaskSpeed(_ input: DescribeRealTimeTaskSpeedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealTimeTaskSpeedResponse> {
        self.client.execute(action: "DescribeRealTimeTaskSpeed", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实时任务同步速度趋势
    @inlinable
    public func describeRealTimeTaskSpeed(_ input: DescribeRealTimeTaskSpeedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealTimeTaskSpeedResponse {
        try await self.client.execute(action: "DescribeRealTimeTaskSpeed", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实时任务同步速度趋势
    @inlinable
    public func describeRealTimeTaskSpeed(taskId: String, startTime: UInt64, endTime: UInt64, granularity: UInt64, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealTimeTaskSpeedResponse> {
        self.describeRealTimeTaskSpeed(.init(taskId: taskId, startTime: startTime, endTime: endTime, granularity: granularity, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 实时任务同步速度趋势
    @inlinable
    public func describeRealTimeTaskSpeed(taskId: String, startTime: UInt64, endTime: UInt64, granularity: UInt64, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealTimeTaskSpeedResponse {
        try await self.describeRealTimeTaskSpeed(.init(taskId: taskId, startTime: startTime, endTime: endTime, granularity: granularity, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
