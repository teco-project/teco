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

extension Iotvideoindustry {
    /// CreateLiveRecordPlan请求参数结构体
    public struct CreateLiveRecordPlanRequest: TCRequestModel {
        /// 录制计划名
        public let planName: String

        /// 计划类型 1：固定直播 2：移动直播
        public let planType: Int64

        /// 时间模板ID,固定直播时为必填
        public let templateId: String?

        /// 录制文件存储时长，单位天，默认30天
        public let recordStorageTime: Int64?

        /// 绑定的直播频道ID列表
        public let liveChannelIds: [String]?

        public init(planName: String, planType: Int64, templateId: String? = nil, recordStorageTime: Int64? = nil, liveChannelIds: [String]? = nil) {
            self.planName = planName
            self.planType = planType
            self.templateId = templateId
            self.recordStorageTime = recordStorageTime
            self.liveChannelIds = liveChannelIds
        }

        enum CodingKeys: String, CodingKey {
            case planName = "PlanName"
            case planType = "PlanType"
            case templateId = "TemplateId"
            case recordStorageTime = "RecordStorageTime"
            case liveChannelIds = "LiveChannelIds"
        }
    }

    /// CreateLiveRecordPlan返回参数结构体
    public struct CreateLiveRecordPlanResponse: TCResponseModel {
        /// 录制计划名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let planId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case requestId = "RequestId"
        }
    }

    /// 创建直播录制计划
    @inlinable
    public func createLiveRecordPlan(_ input: CreateLiveRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveRecordPlanResponse> {
        self.client.execute(action: "CreateLiveRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建直播录制计划
    @inlinable
    public func createLiveRecordPlan(_ input: CreateLiveRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveRecordPlanResponse {
        try await self.client.execute(action: "CreateLiveRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建直播录制计划
    @inlinable
    public func createLiveRecordPlan(planName: String, planType: Int64, templateId: String? = nil, recordStorageTime: Int64? = nil, liveChannelIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveRecordPlanResponse> {
        self.createLiveRecordPlan(.init(planName: planName, planType: planType, templateId: templateId, recordStorageTime: recordStorageTime, liveChannelIds: liveChannelIds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建直播录制计划
    @inlinable
    public func createLiveRecordPlan(planName: String, planType: Int64, templateId: String? = nil, recordStorageTime: Int64? = nil, liveChannelIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveRecordPlanResponse {
        try await self.createLiveRecordPlan(.init(planName: planName, planType: planType, templateId: templateId, recordStorageTime: recordStorageTime, liveChannelIds: liveChannelIds), region: region, logger: logger, on: eventLoop)
    }
}
