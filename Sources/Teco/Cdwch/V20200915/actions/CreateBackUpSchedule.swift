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

extension Cdwch {
    /// CreateBackUpSchedule请求参数结构体
    public struct CreateBackUpScheduleRequest: TCRequestModel {
        /// 编辑时需要传
        public let scheduleId: Int64?

        /// 选择的星期 逗号分隔，例如 2 代表周二
        public let weekDays: String?

        /// 执行小时
        public let executeHour: Int64?

        /// 备份表列表
        public let backUpTables: [BackupTableContent]?

        public init(scheduleId: Int64? = nil, weekDays: String? = nil, executeHour: Int64? = nil, backUpTables: [BackupTableContent]? = nil) {
            self.scheduleId = scheduleId
            self.weekDays = weekDays
            self.executeHour = executeHour
            self.backUpTables = backUpTables
        }

        enum CodingKeys: String, CodingKey {
            case scheduleId = "ScheduleId"
            case weekDays = "WeekDays"
            case executeHour = "ExecuteHour"
            case backUpTables = "BackUpTables"
        }
    }

    /// CreateBackUpSchedule返回参数结构体
    public struct CreateBackUpScheduleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建或者修改备份策略
    @inlinable @discardableResult
    public func createBackUpSchedule(_ input: CreateBackUpScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackUpScheduleResponse> {
        self.client.execute(action: "CreateBackUpSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建或者修改备份策略
    @inlinable @discardableResult
    public func createBackUpSchedule(_ input: CreateBackUpScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackUpScheduleResponse {
        try await self.client.execute(action: "CreateBackUpSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建或者修改备份策略
    @inlinable @discardableResult
    public func createBackUpSchedule(scheduleId: Int64? = nil, weekDays: String? = nil, executeHour: Int64? = nil, backUpTables: [BackupTableContent]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackUpScheduleResponse> {
        self.createBackUpSchedule(.init(scheduleId: scheduleId, weekDays: weekDays, executeHour: executeHour, backUpTables: backUpTables), region: region, logger: logger, on: eventLoop)
    }

    /// 创建或者修改备份策略
    @inlinable @discardableResult
    public func createBackUpSchedule(scheduleId: Int64? = nil, weekDays: String? = nil, executeHour: Int64? = nil, backUpTables: [BackupTableContent]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackUpScheduleResponse {
        try await self.createBackUpSchedule(.init(scheduleId: scheduleId, weekDays: weekDays, executeHour: executeHour, backUpTables: backUpTables), region: region, logger: logger, on: eventLoop)
    }
}
