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

extension Wedata {
    /// DescribeIntegrationNode请求参数结构体
    public struct DescribeIntegrationNodeRequest: TCRequestModel {
        /// 节点id
        public let id: String

        /// 项目id
        public let projectId: String

        /// 任务类型
        public let taskType: UInt64?

        public init(id: String, projectId: String, taskType: UInt64? = nil) {
            self.id = id
            self.projectId = projectId
            self.taskType = taskType
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case projectId = "ProjectId"
            case taskType = "TaskType"
        }
    }

    /// DescribeIntegrationNode返回参数结构体
    public struct DescribeIntegrationNodeResponse: TCResponseModel {
        /// 节点信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeInfo: IntegrationNodeInfo?

        /// 上游节点是否已经修改。true 已修改，需要提示；false 没有修改
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceCheckFlag: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodeInfo = "NodeInfo"
            case sourceCheckFlag = "SourceCheckFlag"
            case requestId = "RequestId"
        }
    }

    /// 查询集成节点
    @inlinable
    public func describeIntegrationNode(_ input: DescribeIntegrationNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationNodeResponse> {
        self.client.execute(action: "DescribeIntegrationNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集成节点
    @inlinable
    public func describeIntegrationNode(_ input: DescribeIntegrationNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationNodeResponse {
        try await self.client.execute(action: "DescribeIntegrationNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集成节点
    @inlinable
    public func describeIntegrationNode(id: String, projectId: String, taskType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationNodeResponse> {
        self.describeIntegrationNode(.init(id: id, projectId: projectId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集成节点
    @inlinable
    public func describeIntegrationNode(id: String, projectId: String, taskType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationNodeResponse {
        try await self.describeIntegrationNode(.init(id: id, projectId: projectId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }
}
