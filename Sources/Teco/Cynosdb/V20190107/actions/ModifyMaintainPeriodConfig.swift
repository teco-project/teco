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

extension Cynosdb {
    /// ModifyMaintainPeriodConfig请求参数结构体
    public struct ModifyMaintainPeriodConfigRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 维护开始时间，单位为秒，如3:00为10800
        public let maintainStartTime: Int64

        /// 维护持续时间，单位为秒，如1小时为3600
        public let maintainDuration: Int64

        /// 每周维护日期，日期取值范围[Mon, Tue, Wed, Thu, Fri, Sat, Sun]
        public let maintainWeekDays: [String]

        public init(instanceId: String, maintainStartTime: Int64, maintainDuration: Int64, maintainWeekDays: [String]) {
            self.instanceId = instanceId
            self.maintainStartTime = maintainStartTime
            self.maintainDuration = maintainDuration
            self.maintainWeekDays = maintainWeekDays
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case maintainStartTime = "MaintainStartTime"
            case maintainDuration = "MaintainDuration"
            case maintainWeekDays = "MaintainWeekDays"
        }
    }

    /// ModifyMaintainPeriodConfig返回参数结构体
    public struct ModifyMaintainPeriodConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改维护时间配置
    @inlinable @discardableResult
    public func modifyMaintainPeriodConfig(_ input: ModifyMaintainPeriodConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMaintainPeriodConfigResponse> {
        self.client.execute(action: "ModifyMaintainPeriodConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改维护时间配置
    @inlinable @discardableResult
    public func modifyMaintainPeriodConfig(_ input: ModifyMaintainPeriodConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMaintainPeriodConfigResponse {
        try await self.client.execute(action: "ModifyMaintainPeriodConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改维护时间配置
    @inlinable @discardableResult
    public func modifyMaintainPeriodConfig(instanceId: String, maintainStartTime: Int64, maintainDuration: Int64, maintainWeekDays: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMaintainPeriodConfigResponse> {
        self.modifyMaintainPeriodConfig(.init(instanceId: instanceId, maintainStartTime: maintainStartTime, maintainDuration: maintainDuration, maintainWeekDays: maintainWeekDays), region: region, logger: logger, on: eventLoop)
    }

    /// 修改维护时间配置
    @inlinable @discardableResult
    public func modifyMaintainPeriodConfig(instanceId: String, maintainStartTime: Int64, maintainDuration: Int64, maintainWeekDays: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMaintainPeriodConfigResponse {
        try await self.modifyMaintainPeriodConfig(.init(instanceId: instanceId, maintainStartTime: maintainStartTime, maintainDuration: maintainDuration, maintainWeekDays: maintainWeekDays), region: region, logger: logger, on: eventLoop)
    }
}
