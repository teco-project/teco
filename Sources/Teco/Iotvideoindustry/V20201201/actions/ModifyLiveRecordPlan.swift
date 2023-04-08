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

import TecoCore

extension Iotvideoindustry {
    /// ModifyLiveRecordPlan请求参数结构体
    public struct ModifyLiveRecordPlanRequest: TCRequestModel {
        /// 录制计划ID
        public let planId: String

        /// 录制计划名
        public let planName: String

        /// 时间模板ID，固定直播时为必填
        public let templateId: String?

        public init(planId: String, planName: String, templateId: String? = nil) {
            self.planId = planId
            self.planName = planName
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case planName = "PlanName"
            case templateId = "TemplateId"
        }
    }

    /// ModifyLiveRecordPlan返回参数结构体
    public struct ModifyLiveRecordPlanResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑直播录制计划
    @inlinable @discardableResult
    public func modifyLiveRecordPlan(_ input: ModifyLiveRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveRecordPlanResponse> {
        self.client.execute(action: "ModifyLiveRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑直播录制计划
    @inlinable @discardableResult
    public func modifyLiveRecordPlan(_ input: ModifyLiveRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveRecordPlanResponse {
        try await self.client.execute(action: "ModifyLiveRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑直播录制计划
    @inlinable @discardableResult
    public func modifyLiveRecordPlan(planId: String, planName: String, templateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveRecordPlanResponse> {
        self.modifyLiveRecordPlan(.init(planId: planId, planName: planName, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑直播录制计划
    @inlinable @discardableResult
    public func modifyLiveRecordPlan(planId: String, planName: String, templateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveRecordPlanResponse {
        try await self.modifyLiveRecordPlan(.init(planId: planId, planName: planName, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
