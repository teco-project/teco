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
    /// CreateBackupMigration请求参数结构体
    public struct CreateBackupMigrationRequest: TCRequestModel {
        /// 导入目标实例ID
        public let instanceId: String

        /// 迁移任务恢复类型，FULL-全量备份恢复，FULL_LOG-全量备份+事务日志恢复，FULL_DIFF-全量备份+差异备份恢复
        public let recoveryType: String

        /// 备份上传类型，COS_URL-备份放在用户的对象存储上，提供URL。COS_UPLOAD-备份放在业务的对象存储上，需要用户上传。
        public let uploadType: String

        /// 任务名称
        public let migrationName: String

        /// UploadType是COS_URL时这里填URL，COS_UPLOAD这里填备份文件的名字。只支持1个备份文件，但1个备份文件内可包含多个库
        public let backupFiles: [String]?

        public init(instanceId: String, recoveryType: String, uploadType: String, migrationName: String, backupFiles: [String]? = nil) {
            self.instanceId = instanceId
            self.recoveryType = recoveryType
            self.uploadType = uploadType
            self.migrationName = migrationName
            self.backupFiles = backupFiles
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case recoveryType = "RecoveryType"
            case uploadType = "UploadType"
            case migrationName = "MigrationName"
            case backupFiles = "BackupFiles"
        }
    }

    /// CreateBackupMigration返回参数结构体
    public struct CreateBackupMigrationResponse: TCResponseModel {
        /// 备份导入任务ID
        public let backupMigrationId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case backupMigrationId = "BackupMigrationId"
            case requestId = "RequestId"
        }
    }

    /// 创建备份导入任务
    ///
    /// 本接口（CreateBackupMigration）用于创建备份导入任务。
    @inlinable
    public func createBackupMigration(_ input: CreateBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupMigrationResponse> {
        self.client.execute(action: "CreateBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建备份导入任务
    ///
    /// 本接口（CreateBackupMigration）用于创建备份导入任务。
    @inlinable
    public func createBackupMigration(_ input: CreateBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupMigrationResponse {
        try await self.client.execute(action: "CreateBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建备份导入任务
    ///
    /// 本接口（CreateBackupMigration）用于创建备份导入任务。
    @inlinable
    public func createBackupMigration(instanceId: String, recoveryType: String, uploadType: String, migrationName: String, backupFiles: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupMigrationResponse> {
        self.createBackupMigration(.init(instanceId: instanceId, recoveryType: recoveryType, uploadType: uploadType, migrationName: migrationName, backupFiles: backupFiles), region: region, logger: logger, on: eventLoop)
    }

    /// 创建备份导入任务
    ///
    /// 本接口（CreateBackupMigration）用于创建备份导入任务。
    @inlinable
    public func createBackupMigration(instanceId: String, recoveryType: String, uploadType: String, migrationName: String, backupFiles: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupMigrationResponse {
        try await self.createBackupMigration(.init(instanceId: instanceId, recoveryType: recoveryType, uploadType: uploadType, migrationName: migrationName, backupFiles: backupFiles), region: region, logger: logger, on: eventLoop)
    }
}
