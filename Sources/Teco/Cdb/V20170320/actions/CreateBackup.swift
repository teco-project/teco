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

extension Cdb {
    /// CreateBackup请求参数结构体
    public struct CreateBackupRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 目标备份方法，可选的值：logical - 逻辑冷备，physical - 物理冷备。
        public let backupMethod: String

        /// 需要备份的库表信息，如果不设置该参数，则默认整实例备份。在 BackupMethod=logical 逻辑备份中才可设置该参数。指定的库表必须存在，否则可能导致备份失败。
        /// 例：如果需要备份 db1 库的 tb1、tb2 表 和 db2 库。则该参数设置为 [{"Db": "db1", "Table": "tb1"}, {"Db": "db1", "Table": "tb2"}, {"Db": "db2"} ]。
        public let backupDBTableList: [BackupItem]?

        /// 手动备份别名
        public let manualBackupName: String?

        public init(instanceId: String, backupMethod: String, backupDBTableList: [BackupItem]? = nil, manualBackupName: String? = nil) {
            self.instanceId = instanceId
            self.backupMethod = backupMethod
            self.backupDBTableList = backupDBTableList
            self.manualBackupName = manualBackupName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupMethod = "BackupMethod"
            case backupDBTableList = "BackupDBTableList"
            case manualBackupName = "ManualBackupName"
        }
    }

    /// CreateBackup返回参数结构体
    public struct CreateBackupResponse: TCResponseModel {
        /// 备份任务 ID。
        public let backupId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case backupId = "BackupId"
            case requestId = "RequestId"
        }
    }

    /// 创建云数据库备份
    ///
    /// 本接口(CreateBackup)用于创建数据库备份。
    @inlinable
    public func createBackup(_ input: CreateBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupResponse> {
        self.client.execute(action: "CreateBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云数据库备份
    ///
    /// 本接口(CreateBackup)用于创建数据库备份。
    @inlinable
    public func createBackup(_ input: CreateBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupResponse {
        try await self.client.execute(action: "CreateBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云数据库备份
    ///
    /// 本接口(CreateBackup)用于创建数据库备份。
    @inlinable
    public func createBackup(instanceId: String, backupMethod: String, backupDBTableList: [BackupItem]? = nil, manualBackupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupResponse> {
        let input = CreateBackupRequest(instanceId: instanceId, backupMethod: backupMethod, backupDBTableList: backupDBTableList, manualBackupName: manualBackupName)
        return self.client.execute(action: "CreateBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云数据库备份
    ///
    /// 本接口(CreateBackup)用于创建数据库备份。
    @inlinable
    public func createBackup(instanceId: String, backupMethod: String, backupDBTableList: [BackupItem]? = nil, manualBackupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupResponse {
        let input = CreateBackupRequest(instanceId: instanceId, backupMethod: backupMethod, backupDBTableList: backupDBTableList, manualBackupName: manualBackupName)
        return try await self.client.execute(action: "CreateBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
