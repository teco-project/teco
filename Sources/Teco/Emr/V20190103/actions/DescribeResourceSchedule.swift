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

extension Emr {
    /// DescribeResourceSchedule请求参数结构体
    public struct DescribeResourceScheduleRequest: TCRequest {
        /// emr集群的英文id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeResourceSchedule返回参数结构体
    public struct DescribeResourceScheduleResponse: TCResponse {
        /// 资源调度功能是否开启
        public let openSwitch: Bool

        /// 正在使用的资源调度器
        public let scheduler: String

        /// 公平调度器的信息
        public let fsInfo: String

        /// 容量调度器的信息
        public let csInfo: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case openSwitch = "OpenSwitch"
            case scheduler = "Scheduler"
            case fsInfo = "FSInfo"
            case csInfo = "CSInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询YARN资源调度数据信息
    @inlinable
    public func describeResourceSchedule(_ input: DescribeResourceScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceScheduleResponse> {
        self.client.execute(action: "DescribeResourceSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询YARN资源调度数据信息
    @inlinable
    public func describeResourceSchedule(_ input: DescribeResourceScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceScheduleResponse {
        try await self.client.execute(action: "DescribeResourceSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询YARN资源调度数据信息
    @inlinable
    public func describeResourceSchedule(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceScheduleResponse> {
        self.describeResourceSchedule(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询YARN资源调度数据信息
    @inlinable
    public func describeResourceSchedule(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceScheduleResponse {
        try await self.describeResourceSchedule(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
