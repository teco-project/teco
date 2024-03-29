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
    /// EditBaseline请求参数结构体
    public struct EditBaselineRequest: TCRequest {
        /// 项目id
        public let projectId: String

        /// 基线名称
        public let baselineName: String

        /// D或者H；分别表示天基线和小时基线
        public let baselineType: String

        /// 基线负责人id
        public let inChargeUin: String

        /// 基线负责人名称
        public let inChargeName: String

        /// 保障任务
        public let promiseTasks: [BaselineTaskInfo]

        /// 保障时间
        public let promiseTime: String

        /// 告警余量/分钟
        public let warningMargin: UInt64

        /// 基线id
        public let baselineId: String

        /// 更新人id
        public let updateUin: String

        /// 更新人名字
        public let updateName: String

        public let isNewAlarm: Bool

        /// 现有告警规则信息
        public let alarmRuleDto: AlarmRuleDto?

        /// 告警更新请求
        public let baselineModifyAlarmRuleRequest: ModifyAlarmRuleRequest?

        public init(projectId: String, baselineName: String, baselineType: String, inChargeUin: String, inChargeName: String, promiseTasks: [BaselineTaskInfo], promiseTime: String, warningMargin: UInt64, baselineId: String, updateUin: String, updateName: String, isNewAlarm: Bool, alarmRuleDto: AlarmRuleDto? = nil, baselineModifyAlarmRuleRequest: ModifyAlarmRuleRequest? = nil) {
            self.projectId = projectId
            self.baselineName = baselineName
            self.baselineType = baselineType
            self.inChargeUin = inChargeUin
            self.inChargeName = inChargeName
            self.promiseTasks = promiseTasks
            self.promiseTime = promiseTime
            self.warningMargin = warningMargin
            self.baselineId = baselineId
            self.updateUin = updateUin
            self.updateName = updateName
            self.isNewAlarm = isNewAlarm
            self.alarmRuleDto = alarmRuleDto
            self.baselineModifyAlarmRuleRequest = baselineModifyAlarmRuleRequest
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case baselineName = "BaselineName"
            case baselineType = "BaselineType"
            case inChargeUin = "InChargeUin"
            case inChargeName = "InChargeName"
            case promiseTasks = "PromiseTasks"
            case promiseTime = "PromiseTime"
            case warningMargin = "WarningMargin"
            case baselineId = "BaselineId"
            case updateUin = "UpdateUin"
            case updateName = "UpdateName"
            case isNewAlarm = "IsNewAlarm"
            case alarmRuleDto = "AlarmRuleDto"
            case baselineModifyAlarmRuleRequest = "BaselineModifyAlarmRuleRequest"
        }
    }

    /// EditBaseline返回参数结构体
    public struct EditBaselineResponse: TCResponse {
        /// 1
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: BooleanResponse?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 编辑基线
    @inlinable
    public func editBaseline(_ input: EditBaselineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditBaselineResponse> {
        self.client.execute(action: "EditBaseline", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑基线
    @inlinable
    public func editBaseline(_ input: EditBaselineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditBaselineResponse {
        try await self.client.execute(action: "EditBaseline", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑基线
    @inlinable
    public func editBaseline(projectId: String, baselineName: String, baselineType: String, inChargeUin: String, inChargeName: String, promiseTasks: [BaselineTaskInfo], promiseTime: String, warningMargin: UInt64, baselineId: String, updateUin: String, updateName: String, isNewAlarm: Bool, alarmRuleDto: AlarmRuleDto? = nil, baselineModifyAlarmRuleRequest: ModifyAlarmRuleRequest? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditBaselineResponse> {
        self.editBaseline(.init(projectId: projectId, baselineName: baselineName, baselineType: baselineType, inChargeUin: inChargeUin, inChargeName: inChargeName, promiseTasks: promiseTasks, promiseTime: promiseTime, warningMargin: warningMargin, baselineId: baselineId, updateUin: updateUin, updateName: updateName, isNewAlarm: isNewAlarm, alarmRuleDto: alarmRuleDto, baselineModifyAlarmRuleRequest: baselineModifyAlarmRuleRequest), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑基线
    @inlinable
    public func editBaseline(projectId: String, baselineName: String, baselineType: String, inChargeUin: String, inChargeName: String, promiseTasks: [BaselineTaskInfo], promiseTime: String, warningMargin: UInt64, baselineId: String, updateUin: String, updateName: String, isNewAlarm: Bool, alarmRuleDto: AlarmRuleDto? = nil, baselineModifyAlarmRuleRequest: ModifyAlarmRuleRequest? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditBaselineResponse {
        try await self.editBaseline(.init(projectId: projectId, baselineName: baselineName, baselineType: baselineType, inChargeUin: inChargeUin, inChargeName: inChargeName, promiseTasks: promiseTasks, promiseTime: promiseTime, warningMargin: warningMargin, baselineId: baselineId, updateUin: updateUin, updateName: updateName, isNewAlarm: isNewAlarm, alarmRuleDto: alarmRuleDto, baselineModifyAlarmRuleRequest: baselineModifyAlarmRuleRequest), region: region, logger: logger, on: eventLoop)
    }
}
