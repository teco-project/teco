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

extension Redis {
    /// ModifyAutoBackupConfig请求参数结构体
    public struct ModifyAutoBackupConfigRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 日期 Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday，该参数暂不支持修改。
        public let weekDays: [String]

        /// 时间段 00:00-01:00, 01:00-02:00...... 23:00-00:00
        public let timePeriod: String

        /// 自动备份类型： 1 “定时回档”
        public let autoBackupType: Int64?

        public init(instanceId: String, weekDays: [String], timePeriod: String, autoBackupType: Int64? = nil) {
            self.instanceId = instanceId
            self.weekDays = weekDays
            self.timePeriod = timePeriod
            self.autoBackupType = autoBackupType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case weekDays = "WeekDays"
            case timePeriod = "TimePeriod"
            case autoBackupType = "AutoBackupType"
        }
    }

    /// ModifyAutoBackupConfig返回参数结构体
    public struct ModifyAutoBackupConfigResponse: TCResponseModel {
        /// 自动备份类型： 1 “定时回档”
        public let autoBackupType: Int64

        /// 日期Monday，Tuesday，Wednesday，Thursday，Friday，Saturday，Sunday。
        public let weekDays: [String]

        /// 时间段 00:00-01:00, 01:00-02:00...... 23:00-00:00
        public let timePeriod: String

        /// 全量备份文件保存天数,单位：天
        public let backupStorageDays: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoBackupType = "AutoBackupType"
            case weekDays = "WeekDays"
            case timePeriod = "TimePeriod"
            case backupStorageDays = "BackupStorageDays"
            case requestId = "RequestId"
        }
    }

    /// 设置自动备份配置
    @inlinable
    public func modifyAutoBackupConfig(_ input: ModifyAutoBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoBackupConfigResponse> {
        self.client.execute(action: "ModifyAutoBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置自动备份配置
    @inlinable
    public func modifyAutoBackupConfig(_ input: ModifyAutoBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoBackupConfigResponse {
        try await self.client.execute(action: "ModifyAutoBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置自动备份配置
    @inlinable
    public func modifyAutoBackupConfig(instanceId: String, weekDays: [String], timePeriod: String, autoBackupType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoBackupConfigResponse> {
        self.modifyAutoBackupConfig(ModifyAutoBackupConfigRequest(instanceId: instanceId, weekDays: weekDays, timePeriod: timePeriod, autoBackupType: autoBackupType), region: region, logger: logger, on: eventLoop)
    }

    /// 设置自动备份配置
    @inlinable
    public func modifyAutoBackupConfig(instanceId: String, weekDays: [String], timePeriod: String, autoBackupType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoBackupConfigResponse {
        try await self.modifyAutoBackupConfig(ModifyAutoBackupConfigRequest(instanceId: instanceId, weekDays: weekDays, timePeriod: timePeriod, autoBackupType: autoBackupType), region: region, logger: logger, on: eventLoop)
    }
}
