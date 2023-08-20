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
    /// DescribeSchedulerTaskTypeCnt请求参数结构体
    public struct DescribeSchedulerTaskTypeCntRequest: TCRequest {
        /// 项目ID
        public let projectId: String

        /// 1
        public let inCharge: String?

        public init(projectId: String, inCharge: String? = nil) {
            self.projectId = projectId
            self.inCharge = inCharge
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case inCharge = "InCharge"
        }
    }

    /// DescribeSchedulerTaskTypeCnt返回参数结构体
    public struct DescribeSchedulerTaskTypeCntResponse: TCResponse {
        /// data
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TaskTypeCnt]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 运维大屏-任务状态分布
    @inlinable
    public func describeSchedulerTaskTypeCnt(_ input: DescribeSchedulerTaskTypeCntRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchedulerTaskTypeCntResponse> {
        self.client.execute(action: "DescribeSchedulerTaskTypeCnt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运维大屏-任务状态分布
    @inlinable
    public func describeSchedulerTaskTypeCnt(_ input: DescribeSchedulerTaskTypeCntRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSchedulerTaskTypeCntResponse {
        try await self.client.execute(action: "DescribeSchedulerTaskTypeCnt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运维大屏-任务状态分布
    @inlinable
    public func describeSchedulerTaskTypeCnt(projectId: String, inCharge: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchedulerTaskTypeCntResponse> {
        self.describeSchedulerTaskTypeCnt(.init(projectId: projectId, inCharge: inCharge), region: region, logger: logger, on: eventLoop)
    }

    /// 运维大屏-任务状态分布
    @inlinable
    public func describeSchedulerTaskTypeCnt(projectId: String, inCharge: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSchedulerTaskTypeCntResponse {
        try await self.describeSchedulerTaskTypeCnt(.init(projectId: projectId, inCharge: inCharge), region: region, logger: logger, on: eventLoop)
    }
}
