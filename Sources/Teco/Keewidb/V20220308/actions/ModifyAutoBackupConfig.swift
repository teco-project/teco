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

extension Keewidb {
    /// ModifyAutoBackupConfig请求参数结构体
    public struct ModifyAutoBackupConfigRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String

        /// 备份周期。可设置为 Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday，该参数暂不支持修改、
        public let weekDays: [String]

        /// 备份任务执行时间段。
        /// 可设置的格式为一个整点到下一个整点。例如：00:00-01:00、01:00-02:00、21:00-22:00、23:00-00:00等。
        public let timePeriod: String

        public init(instanceId: String, weekDays: [String], timePeriod: String) {
            self.instanceId = instanceId
            self.weekDays = weekDays
            self.timePeriod = timePeriod
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case weekDays = "WeekDays"
            case timePeriod = "TimePeriod"
        }
    }

    /// ModifyAutoBackupConfig返回参数结构体
    public struct ModifyAutoBackupConfigResponse: TCResponseModel {
        /// 增量备份文件保存天数。
        public let backupStorageDays: Int64

        /// 全量备份文件保存天数。
        public let binlogStorageDays: Int64

        /// 备份时间段。
        public let timePeriod: String

        /// 备份周期。Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday。
        public let weekDays: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case backupStorageDays = "BackupStorageDays"
            case binlogStorageDays = "BinlogStorageDays"
            case timePeriod = "TimePeriod"
            case weekDays = "WeekDays"
            case requestId = "RequestId"
        }
    }

    /// 修改自动备份配置
    ///
    /// 本接口（ModifyAutoBackupConfig）用于修改自动备份配置。
    @inlinable
    public func modifyAutoBackupConfig(_ input: ModifyAutoBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoBackupConfigResponse> {
        self.client.execute(action: "ModifyAutoBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改自动备份配置
    ///
    /// 本接口（ModifyAutoBackupConfig）用于修改自动备份配置。
    @inlinable
    public func modifyAutoBackupConfig(_ input: ModifyAutoBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoBackupConfigResponse {
        try await self.client.execute(action: "ModifyAutoBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改自动备份配置
    ///
    /// 本接口（ModifyAutoBackupConfig）用于修改自动备份配置。
    @inlinable
    public func modifyAutoBackupConfig(instanceId: String, weekDays: [String], timePeriod: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoBackupConfigResponse> {
        self.modifyAutoBackupConfig(.init(instanceId: instanceId, weekDays: weekDays, timePeriod: timePeriod), region: region, logger: logger, on: eventLoop)
    }

    /// 修改自动备份配置
    ///
    /// 本接口（ModifyAutoBackupConfig）用于修改自动备份配置。
    @inlinable
    public func modifyAutoBackupConfig(instanceId: String, weekDays: [String], timePeriod: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoBackupConfigResponse {
        try await self.modifyAutoBackupConfig(.init(instanceId: instanceId, weekDays: weekDays, timePeriod: timePeriod), region: region, logger: logger, on: eventLoop)
    }
}
