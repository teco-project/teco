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
    /// DescribeBaselineInstanceDag请求参数结构体
    public struct DescribeBaselineInstanceDagRequest: TCRequest {
        /// 基线实例id
        public let baselineInstanceId: Int64

        /// 项目id
        public let projectId: String

        /// 要展开的上游实例id，格式为 taskIdA_curRunDate1,taskIdB_curRunDate2
        public let upstreamInstanceIds: String?

        /// 向上展开层级
        public let level: Int64?

        public init(baselineInstanceId: Int64, projectId: String, upstreamInstanceIds: String? = nil, level: Int64? = nil) {
            self.baselineInstanceId = baselineInstanceId
            self.projectId = projectId
            self.upstreamInstanceIds = upstreamInstanceIds
            self.level = level
        }

        enum CodingKeys: String, CodingKey {
            case baselineInstanceId = "BaselineInstanceId"
            case projectId = "ProjectId"
            case upstreamInstanceIds = "UpstreamInstanceIds"
            case level = "Level"
        }
    }

    /// DescribeBaselineInstanceDag返回参数结构体
    public struct DescribeBaselineInstanceDagResponse: TCResponse {
        /// 基线实例dag
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: BaselineInstanceVo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询基线实例DAG
    @inlinable
    public func describeBaselineInstanceDag(_ input: DescribeBaselineInstanceDagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineInstanceDagResponse> {
        self.client.execute(action: "DescribeBaselineInstanceDag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询基线实例DAG
    @inlinable
    public func describeBaselineInstanceDag(_ input: DescribeBaselineInstanceDagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineInstanceDagResponse {
        try await self.client.execute(action: "DescribeBaselineInstanceDag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询基线实例DAG
    @inlinable
    public func describeBaselineInstanceDag(baselineInstanceId: Int64, projectId: String, upstreamInstanceIds: String? = nil, level: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineInstanceDagResponse> {
        self.describeBaselineInstanceDag(.init(baselineInstanceId: baselineInstanceId, projectId: projectId, upstreamInstanceIds: upstreamInstanceIds, level: level), region: region, logger: logger, on: eventLoop)
    }

    /// 查询基线实例DAG
    @inlinable
    public func describeBaselineInstanceDag(baselineInstanceId: Int64, projectId: String, upstreamInstanceIds: String? = nil, level: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineInstanceDagResponse {
        try await self.describeBaselineInstanceDag(.init(baselineInstanceId: baselineInstanceId, projectId: projectId, upstreamInstanceIds: upstreamInstanceIds, level: level), region: region, logger: logger, on: eventLoop)
    }
}
