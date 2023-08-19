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
    /// KillOpsMakePlanInstances请求参数结构体
    public struct KillOpsMakePlanInstancesRequest: TCRequest {
        /// 项目ID
        public let projectId: String

        /// 补录计划ID
        public let planId: String

        public init(projectId: String, planId: String) {
            self.projectId = projectId
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case planId = "PlanId"
        }
    }

    /// KillOpsMakePlanInstances返回参数结构体
    public struct KillOpsMakePlanInstancesResponse: TCResponse {
        /// 批量操作结果
        public let data: BatchOperateResultOpsDto

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 按补录计划批量终止实例
    ///
    /// 按补录计划批量终止实例。
    @inlinable
    public func killOpsMakePlanInstances(_ input: KillOpsMakePlanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KillOpsMakePlanInstancesResponse> {
        self.client.execute(action: "KillOpsMakePlanInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按补录计划批量终止实例
    ///
    /// 按补录计划批量终止实例。
    @inlinable
    public func killOpsMakePlanInstances(_ input: KillOpsMakePlanInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KillOpsMakePlanInstancesResponse {
        try await self.client.execute(action: "KillOpsMakePlanInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按补录计划批量终止实例
    ///
    /// 按补录计划批量终止实例。
    @inlinable
    public func killOpsMakePlanInstances(projectId: String, planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KillOpsMakePlanInstancesResponse> {
        self.killOpsMakePlanInstances(.init(projectId: projectId, planId: planId), region: region, logger: logger, on: eventLoop)
    }

    /// 按补录计划批量终止实例
    ///
    /// 按补录计划批量终止实例。
    @inlinable
    public func killOpsMakePlanInstances(projectId: String, planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KillOpsMakePlanInstancesResponse {
        try await self.killOpsMakePlanInstances(.init(projectId: projectId, planId: planId), region: region, logger: logger, on: eventLoop)
    }
}
