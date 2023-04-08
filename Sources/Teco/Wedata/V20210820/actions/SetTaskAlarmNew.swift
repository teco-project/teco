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
    /// SetTaskAlarmNew请求参数结构体
    public struct SetTaskAlarmNewRequest: TCRequestModel {
        /// 设置任务超时告警和失败告警信息
        public let alarmInfoList: [AlarmInfo]

        /// 项目Id
        public let projectId: String

        public init(alarmInfoList: [AlarmInfo], projectId: String) {
            self.alarmInfoList = alarmInfoList
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case alarmInfoList = "AlarmInfoList"
            case projectId = "ProjectId"
        }
    }

    /// SetTaskAlarmNew返回参数结构体
    public struct SetTaskAlarmNewResponse: TCResponseModel {
        /// 返回批量操作成功个数、失败个数、操作总数
        public let data: BatchOperateResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 设置任务告警【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 设置任务告警，新建/更新告警信息（最新）
    @inlinable
    public func setTaskAlarmNew(_ input: SetTaskAlarmNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetTaskAlarmNewResponse> {
        self.client.execute(action: "SetTaskAlarmNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置任务告警【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 设置任务告警，新建/更新告警信息（最新）
    @inlinable
    public func setTaskAlarmNew(_ input: SetTaskAlarmNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetTaskAlarmNewResponse {
        try await self.client.execute(action: "SetTaskAlarmNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置任务告警【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 设置任务告警，新建/更新告警信息（最新）
    @inlinable
    public func setTaskAlarmNew(alarmInfoList: [AlarmInfo], projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetTaskAlarmNewResponse> {
        self.setTaskAlarmNew(.init(alarmInfoList: alarmInfoList, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 设置任务告警【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 设置任务告警，新建/更新告警信息（最新）
    @inlinable
    public func setTaskAlarmNew(alarmInfoList: [AlarmInfo], projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetTaskAlarmNewResponse {
        try await self.setTaskAlarmNew(.init(alarmInfoList: alarmInfoList, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
