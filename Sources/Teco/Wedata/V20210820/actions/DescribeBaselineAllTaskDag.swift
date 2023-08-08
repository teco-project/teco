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
    /// DescribeBaselineAllTaskDag请求参数结构体
    public struct DescribeBaselineAllTaskDagRequest: TCRequestModel {
        /// 基线id
        public let baselineId: String

        /// 1
        public let projectId: String

        public init(baselineId: String, projectId: String) {
            self.baselineId = baselineId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case baselineId = "BaselineId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeBaselineAllTaskDag返回参数结构体
    public struct DescribeBaselineAllTaskDagResponse: TCResponseModel {
        /// 基线
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DescribeBaselineTaskDagResponse?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询基线DAG
    @inlinable
    public func describeBaselineAllTaskDag(_ input: DescribeBaselineAllTaskDagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineAllTaskDagResponse> {
        self.client.execute(action: "DescribeBaselineAllTaskDag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询基线DAG
    @inlinable
    public func describeBaselineAllTaskDag(_ input: DescribeBaselineAllTaskDagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineAllTaskDagResponse {
        try await self.client.execute(action: "DescribeBaselineAllTaskDag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询基线DAG
    @inlinable
    public func describeBaselineAllTaskDag(baselineId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineAllTaskDagResponse> {
        self.describeBaselineAllTaskDag(.init(baselineId: baselineId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询基线DAG
    @inlinable
    public func describeBaselineAllTaskDag(baselineId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineAllTaskDagResponse {
        try await self.describeBaselineAllTaskDag(.init(baselineId: baselineId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}