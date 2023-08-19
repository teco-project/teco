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
    /// DescribeAllTaskType请求参数结构体
    public struct DescribeAllTaskTypeRequest: TCRequest {
        /// 项目ID
        public let projectId: String?

        public init(projectId: String? = nil) {
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }

    /// DescribeAllTaskType返回参数结构体
    public struct DescribeAllTaskTypeResponse: TCResponse {
        /// 任务类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TaskTypeOpsDto]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取所有任务类型
    @inlinable
    public func describeAllTaskType(_ input: DescribeAllTaskTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllTaskTypeResponse> {
        self.client.execute(action: "DescribeAllTaskType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取所有任务类型
    @inlinable
    public func describeAllTaskType(_ input: DescribeAllTaskTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllTaskTypeResponse {
        try await self.client.execute(action: "DescribeAllTaskType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取所有任务类型
    @inlinable
    public func describeAllTaskType(projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllTaskTypeResponse> {
        self.describeAllTaskType(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取所有任务类型
    @inlinable
    public func describeAllTaskType(projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllTaskTypeResponse {
        try await self.describeAllTaskType(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
