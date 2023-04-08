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
    /// CreateRecordingPlan请求参数结构体
    public struct CreateRecordingPlanRequest: TCRequestModel {
        /// 计划名称
        public let name: String

        /// 时间模板ID
        public let timeTemplateId: String

        /// 该录制计划绑定的通道列表
        public let channels: [ChannelItem]?

        /// 存储周期(天)；默认存储30天
        public let recordStorageTime: Int64?

        public init(name: String, timeTemplateId: String, channels: [ChannelItem]? = nil, recordStorageTime: Int64? = nil) {
            self.name = name
            self.timeTemplateId = timeTemplateId
            self.channels = channels
            self.recordStorageTime = recordStorageTime
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case timeTemplateId = "TimeTemplateId"
            case channels = "Channels"
            case recordStorageTime = "RecordStorageTime"
        }
    }

    /// CreateRecordingPlan返回参数结构体
    public struct CreateRecordingPlanResponse: TCResponseModel {
        /// 录制计划ID
        public let planId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case requestId = "RequestId"
        }
    }

    /// 创建录制计划
    ///
    /// 本接口(CreateRecordingPlan) 用于创建录制计划，使通道与时间模板绑定，以便及时启动录制
    @inlinable
    public func createRecordingPlan(_ input: CreateRecordingPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecordingPlanResponse> {
        self.client.execute(action: "CreateRecordingPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建录制计划
    ///
    /// 本接口(CreateRecordingPlan) 用于创建录制计划，使通道与时间模板绑定，以便及时启动录制
    @inlinable
    public func createRecordingPlan(_ input: CreateRecordingPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordingPlanResponse {
        try await self.client.execute(action: "CreateRecordingPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建录制计划
    ///
    /// 本接口(CreateRecordingPlan) 用于创建录制计划，使通道与时间模板绑定，以便及时启动录制
    @inlinable
    public func createRecordingPlan(name: String, timeTemplateId: String, channels: [ChannelItem]? = nil, recordStorageTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecordingPlanResponse> {
        self.createRecordingPlan(.init(name: name, timeTemplateId: timeTemplateId, channels: channels, recordStorageTime: recordStorageTime), region: region, logger: logger, on: eventLoop)
    }

    /// 创建录制计划
    ///
    /// 本接口(CreateRecordingPlan) 用于创建录制计划，使通道与时间模板绑定，以便及时启动录制
    @inlinable
    public func createRecordingPlan(name: String, timeTemplateId: String, channels: [ChannelItem]? = nil, recordStorageTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordingPlanResponse {
        try await self.createRecordingPlan(.init(name: name, timeTemplateId: timeTemplateId, channels: channels, recordStorageTime: recordStorageTime), region: region, logger: logger, on: eventLoop)
    }
}
