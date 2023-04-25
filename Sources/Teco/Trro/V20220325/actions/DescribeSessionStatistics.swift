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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Trro {
    /// DescribeSessionStatistics请求参数结构体
    public struct DescribeSessionStatisticsRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        /// 设备ID
        public let deviceId: String?

        /// 起始时间，单位：秒
        public let startTime: UInt64?

        /// 结束时间，单位：秒
        public let endTime: UInt64?

        public init(projectId: String, deviceId: String? = nil, startTime: UInt64? = nil, endTime: UInt64? = nil) {
            self.projectId = projectId
            self.deviceId = deviceId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case deviceId = "DeviceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeSessionStatistics返回参数结构体
    public struct DescribeSessionStatisticsResponse: TCResponseModel {
        /// 会话数量
        public let sessionNum: UInt64

        /// 通话时长，单位：分钟
        public let totalDuration: UInt64

        /// 活跃现场设备数
        public let activeFieldDeviceNum: UInt64

        /// 活跃远端设备数
        public let activeRemoteDeviceNum: UInt64

        /// 优良会话占比，单位：%
        public let notBadSessionRatio: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sessionNum = "SessionNum"
            case totalDuration = "TotalDuration"
            case activeFieldDeviceNum = "ActiveFieldDeviceNum"
            case activeRemoteDeviceNum = "ActiveRemoteDeviceNum"
            case notBadSessionRatio = "NotBadSessionRatio"
            case requestId = "RequestId"
        }
    }

    /// 获取会话统计值
    @inlinable
    public func describeSessionStatistics(_ input: DescribeSessionStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSessionStatisticsResponse> {
        self.client.execute(action: "DescribeSessionStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取会话统计值
    @inlinable
    public func describeSessionStatistics(_ input: DescribeSessionStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSessionStatisticsResponse {
        try await self.client.execute(action: "DescribeSessionStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取会话统计值
    @inlinable
    public func describeSessionStatistics(projectId: String, deviceId: String? = nil, startTime: UInt64? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSessionStatisticsResponse> {
        self.describeSessionStatistics(.init(projectId: projectId, deviceId: deviceId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取会话统计值
    @inlinable
    public func describeSessionStatistics(projectId: String, deviceId: String? = nil, startTime: UInt64? = nil, endTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSessionStatisticsResponse {
        try await self.describeSessionStatistics(.init(projectId: projectId, deviceId: deviceId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
