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

extension Sqlserver {
    /// ModifyBackupMigration请求参数结构体
    public struct ModifyBackupMigrationRequest: TCRequestModel {
        /// 导入目标实例ID
        public let instanceId: String

        /// 备份导入任务ID，由CreateBackupMigration接口返回
        public let backupMigrationId: String

        /// 任务名称
        public let migrationName: String?

        /// 迁移任务恢复类型，FULL,FULL_LOG,FULL_DIFF
        public let recoveryType: String?

        /// COS_URL-备份放在用户的对象存储上，提供URL。COS_UPLOAD-备份放在业务的对象存储上，用户上传
        public let uploadType: String?

        /// UploadType是COS_URL时这里时URL，COS_UPLOAD这里填备份文件的名字；只支持1个备份文件，但1个备份文件内可包含多个库
        public let backupFiles: [String]?

        public init(instanceId: String, backupMigrationId: String, migrationName: String? = nil, recoveryType: String? = nil, uploadType: String? = nil, backupFiles: [String]? = nil) {
            self.instanceId = instanceId
            self.backupMigrationId = backupMigrationId
            self.migrationName = migrationName
            self.recoveryType = recoveryType
            self.uploadType = uploadType
            self.backupFiles = backupFiles
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupMigrationId = "BackupMigrationId"
            case migrationName = "MigrationName"
            case recoveryType = "RecoveryType"
            case uploadType = "UploadType"
            case backupFiles = "BackupFiles"
        }
    }

    /// ModifyBackupMigration返回参数结构体
    public struct ModifyBackupMigrationResponse: TCResponseModel {
        /// 备份导入任务ID
        public let backupMigrationId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case backupMigrationId = "BackupMigrationId"
            case requestId = "RequestId"
        }
    }

    /// 修改备份导入任务
    ///
    /// 本接口（ModifyBackupMigration）用于修改备份导入任务。
    @inlinable
    public func modifyBackupMigration(_ input: ModifyBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBackupMigrationResponse> {
        self.client.execute(action: "ModifyBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改备份导入任务
    ///
    /// 本接口（ModifyBackupMigration）用于修改备份导入任务。
    @inlinable
    public func modifyBackupMigration(_ input: ModifyBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupMigrationResponse {
        try await self.client.execute(action: "ModifyBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改备份导入任务
    ///
    /// 本接口（ModifyBackupMigration）用于修改备份导入任务。
    @inlinable
    public func modifyBackupMigration(instanceId: String, backupMigrationId: String, migrationName: String? = nil, recoveryType: String? = nil, uploadType: String? = nil, backupFiles: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBackupMigrationResponse> {
        self.modifyBackupMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId, migrationName: migrationName, recoveryType: recoveryType, uploadType: uploadType, backupFiles: backupFiles), region: region, logger: logger, on: eventLoop)
    }

    /// 修改备份导入任务
    ///
    /// 本接口（ModifyBackupMigration）用于修改备份导入任务。
    @inlinable
    public func modifyBackupMigration(instanceId: String, backupMigrationId: String, migrationName: String? = nil, recoveryType: String? = nil, uploadType: String? = nil, backupFiles: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupMigrationResponse {
        try await self.modifyBackupMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId, migrationName: migrationName, recoveryType: recoveryType, uploadType: uploadType, backupFiles: backupFiles), region: region, logger: logger, on: eventLoop)
    }
}
