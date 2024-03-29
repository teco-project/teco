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

extension Iotvideoindustry {
    /// DeleteRecordingPlan请求参数结构体
    public struct DeleteRecordingPlanRequest: TCRequest {
        /// 录制计划ID
        public let planId: String

        public init(planId: String) {
            self.planId = planId
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
        }
    }

    /// DeleteRecordingPlan返回参数结构体
    public struct DeleteRecordingPlanResponse: TCResponse {
        /// 操作结果，OK：成功，其他：失败
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 删除录制计划
    ///
    /// 本接口(DeleteRecordingPlan)用于删除录制计划
    /// 录制计划删除的同时，会停止该录制计划下的全部录制任务。
    @inlinable
    public func deleteRecordingPlan(_ input: DeleteRecordingPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordingPlanResponse> {
        self.client.execute(action: "DeleteRecordingPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除录制计划
    ///
    /// 本接口(DeleteRecordingPlan)用于删除录制计划
    /// 录制计划删除的同时，会停止该录制计划下的全部录制任务。
    @inlinable
    public func deleteRecordingPlan(_ input: DeleteRecordingPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordingPlanResponse {
        try await self.client.execute(action: "DeleteRecordingPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除录制计划
    ///
    /// 本接口(DeleteRecordingPlan)用于删除录制计划
    /// 录制计划删除的同时，会停止该录制计划下的全部录制任务。
    @inlinable
    public func deleteRecordingPlan(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordingPlanResponse> {
        self.deleteRecordingPlan(.init(planId: planId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除录制计划
    ///
    /// 本接口(DeleteRecordingPlan)用于删除录制计划
    /// 录制计划删除的同时，会停止该录制计划下的全部录制任务。
    @inlinable
    public func deleteRecordingPlan(planId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordingPlanResponse {
        try await self.deleteRecordingPlan(.init(planId: planId), region: region, logger: logger, on: eventLoop)
    }
}
