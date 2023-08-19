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

extension Wedata {
    /// DescribeRealTimeTaskInstanceNodeInfo请求参数结构体
    public struct DescribeRealTimeTaskInstanceNodeInfoRequest: TCRequest {
        /// 实时任务id
        public let taskId: String

        /// 工程id
        public let projectId: String

        public init(taskId: String, projectId: String) {
            self.taskId = taskId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeRealTimeTaskInstanceNodeInfo返回参数结构体
    public struct DescribeRealTimeTaskInstanceNodeInfoResponse: TCResponse {
        /// 实时任务实例节点相关信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realTimeTaskInstanceNodeInfo: RealTimeTaskInstanceNodeInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case realTimeTaskInstanceNodeInfo = "RealTimeTaskInstanceNodeInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询实时任务实例节点信息
    @inlinable
    public func describeRealTimeTaskInstanceNodeInfo(_ input: DescribeRealTimeTaskInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealTimeTaskInstanceNodeInfoResponse> {
        self.client.execute(action: "DescribeRealTimeTaskInstanceNodeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实时任务实例节点信息
    @inlinable
    public func describeRealTimeTaskInstanceNodeInfo(_ input: DescribeRealTimeTaskInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealTimeTaskInstanceNodeInfoResponse {
        try await self.client.execute(action: "DescribeRealTimeTaskInstanceNodeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实时任务实例节点信息
    @inlinable
    public func describeRealTimeTaskInstanceNodeInfo(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealTimeTaskInstanceNodeInfoResponse> {
        self.describeRealTimeTaskInstanceNodeInfo(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实时任务实例节点信息
    @inlinable
    public func describeRealTimeTaskInstanceNodeInfo(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealTimeTaskInstanceNodeInfoResponse {
        try await self.describeRealTimeTaskInstanceNodeInfo(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
