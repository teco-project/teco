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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Pts {
    /// UpdateCronJob请求参数结构体
    public struct UpdateCronJobRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        /// 定时任务ID
        public let cronJobId: String

        /// 备注
        public let note: String

        /// cron表达式
        public let cronExpression: String

        /// 执行频率类型，1:只执行一次; 2:日粒度; 3:周粒度; 4:高级
        public let frequencyType: Int64

        /// 定时任务名字
        public let name: String

        /// 场景ID
        public let scenarioId: String

        /// 场景名称
        public let scenarioName: String

        /// 任务发起人
        public let jobOwner: String

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// Notice ID
        public let noticeId: String?

        public init(projectId: String, cronJobId: String, note: String, cronExpression: String, frequencyType: Int64, name: String, scenarioId: String, scenarioName: String, jobOwner: String, endTime: Date? = nil, noticeId: String? = nil) {
            self.projectId = projectId
            self.cronJobId = cronJobId
            self.note = note
            self.cronExpression = cronExpression
            self.frequencyType = frequencyType
            self.name = name
            self.scenarioId = scenarioId
            self.scenarioName = scenarioName
            self.jobOwner = jobOwner
            self._endTime = .init(wrappedValue: endTime)
            self.noticeId = noticeId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case cronJobId = "CronJobId"
            case note = "Note"
            case cronExpression = "CronExpression"
            case frequencyType = "FrequencyType"
            case name = "Name"
            case scenarioId = "ScenarioId"
            case scenarioName = "ScenarioName"
            case jobOwner = "JobOwner"
            case endTime = "EndTime"
            case noticeId = "NoticeId"
        }
    }

    /// UpdateCronJob返回参数结构体
    public struct UpdateCronJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新定时任务
    @inlinable @discardableResult
    public func updateCronJob(_ input: UpdateCronJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCronJobResponse> {
        self.client.execute(action: "UpdateCronJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新定时任务
    @inlinable @discardableResult
    public func updateCronJob(_ input: UpdateCronJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCronJobResponse {
        try await self.client.execute(action: "UpdateCronJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新定时任务
    @inlinable @discardableResult
    public func updateCronJob(projectId: String, cronJobId: String, note: String, cronExpression: String, frequencyType: Int64, name: String, scenarioId: String, scenarioName: String, jobOwner: String, endTime: Date? = nil, noticeId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCronJobResponse> {
        self.updateCronJob(.init(projectId: projectId, cronJobId: cronJobId, note: note, cronExpression: cronExpression, frequencyType: frequencyType, name: name, scenarioId: scenarioId, scenarioName: scenarioName, jobOwner: jobOwner, endTime: endTime, noticeId: noticeId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新定时任务
    @inlinable @discardableResult
    public func updateCronJob(projectId: String, cronJobId: String, note: String, cronExpression: String, frequencyType: Int64, name: String, scenarioId: String, scenarioName: String, jobOwner: String, endTime: Date? = nil, noticeId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCronJobResponse {
        try await self.updateCronJob(.init(projectId: projectId, cronJobId: cronJobId, note: note, cronExpression: cronExpression, frequencyType: frequencyType, name: name, scenarioId: scenarioId, scenarioName: scenarioName, jobOwner: jobOwner, endTime: endTime, noticeId: noticeId), region: region, logger: logger, on: eventLoop)
    }
}
