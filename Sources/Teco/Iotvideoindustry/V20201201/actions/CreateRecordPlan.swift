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
    /// CreateRecordPlan请求参数结构体
    public struct CreateRecordPlanRequest: TCRequestModel {
        /// 计划名称
        public let name: String

        /// 时间模板ID
        public let timeTemplateId: String

        /// 触发录制的事件类别 1:全部
        public let eventId: Int64

        /// 该录制计划绑定的设备列表
        public let devices: [DeviceItem]?

        /// 存储周期
        public let recordStorageTime: Int64?

        public init(name: String, timeTemplateId: String, eventId: Int64, devices: [DeviceItem]? = nil, recordStorageTime: Int64? = nil) {
            self.name = name
            self.timeTemplateId = timeTemplateId
            self.eventId = eventId
            self.devices = devices
            self.recordStorageTime = recordStorageTime
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case timeTemplateId = "TimeTemplateId"
            case eventId = "EventId"
            case devices = "Devices"
            case recordStorageTime = "RecordStorageTime"
        }
    }

    /// CreateRecordPlan返回参数结构体
    public struct CreateRecordPlanResponse: TCResponseModel {
        /// 录制计划ID
        public let planId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case requestId = "RequestId"
        }
    }

    /// 创建录制计划（旧）
    ///
    /// 本接口(CreateRecordPlan) 用于创建录制计划，使设备与时间模板绑定，以便及时启动录制
    /// 请使用CreateRecordingPlan代替
    @inlinable
    public func createRecordPlan(_ input: CreateRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecordPlanResponse> {
        self.client.execute(action: "CreateRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建录制计划（旧）
    ///
    /// 本接口(CreateRecordPlan) 用于创建录制计划，使设备与时间模板绑定，以便及时启动录制
    /// 请使用CreateRecordingPlan代替
    @inlinable
    public func createRecordPlan(_ input: CreateRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordPlanResponse {
        try await self.client.execute(action: "CreateRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建录制计划（旧）
    ///
    /// 本接口(CreateRecordPlan) 用于创建录制计划，使设备与时间模板绑定，以便及时启动录制
    /// 请使用CreateRecordingPlan代替
    @inlinable
    public func createRecordPlan(name: String, timeTemplateId: String, eventId: Int64, devices: [DeviceItem]? = nil, recordStorageTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecordPlanResponse> {
        let input = CreateRecordPlanRequest(name: name, timeTemplateId: timeTemplateId, eventId: eventId, devices: devices, recordStorageTime: recordStorageTime)
        return self.client.execute(action: "CreateRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建录制计划（旧）
    ///
    /// 本接口(CreateRecordPlan) 用于创建录制计划，使设备与时间模板绑定，以便及时启动录制
    /// 请使用CreateRecordingPlan代替
    @inlinable
    public func createRecordPlan(name: String, timeTemplateId: String, eventId: Int64, devices: [DeviceItem]? = nil, recordStorageTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordPlanResponse {
        let input = CreateRecordPlanRequest(name: name, timeTemplateId: timeTemplateId, eventId: eventId, devices: devices, recordStorageTime: recordStorageTime)
        return try await self.client.execute(action: "CreateRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
