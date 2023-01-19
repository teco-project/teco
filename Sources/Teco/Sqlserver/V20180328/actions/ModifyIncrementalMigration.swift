//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// ModifyIncrementalMigration请求参数结构体
    public struct ModifyIncrementalMigrationRequest: TCRequestModel {
        /// 导入目标实例ID
        public let instanceId: String

        /// 备份导入任务ID，由CreateBackupMigration接口返回
        public let backupMigrationId: String

        /// 增量导入任务ID，由CreateIncrementalMigration接口返回
        public let incrementalMigrationId: String

        /// 是否需要恢复，NO-不需要，YES-需要，默认不修改增量备份导入任务是否需要恢复的属性。
        public let isRecovery: String?

        /// UploadType是COS_URL时这里时URL，COS_UPLOAD这里填备份文件的名字；只支持1个备份文件，但1个备份文件内可包含多个库
        public let backupFiles: [String]?

        public init(instanceId: String, backupMigrationId: String, incrementalMigrationId: String, isRecovery: String? = nil, backupFiles: [String]? = nil) {
            self.instanceId = instanceId
            self.backupMigrationId = backupMigrationId
            self.incrementalMigrationId = incrementalMigrationId
            self.isRecovery = isRecovery
            self.backupFiles = backupFiles
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupMigrationId = "BackupMigrationId"
            case incrementalMigrationId = "IncrementalMigrationId"
            case isRecovery = "IsRecovery"
            case backupFiles = "BackupFiles"
        }
    }

    /// ModifyIncrementalMigration返回参数结构体
    public struct ModifyIncrementalMigrationResponse: TCResponseModel {
        /// 增量备份导入任务ID
        public let incrementalMigrationId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case incrementalMigrationId = "IncrementalMigrationId"
            case requestId = "RequestId"
        }
    }

    /// 修改增量备份导入任务
    ///
    /// 本接口（ModifyIncrementalMigration）用于修改增量备份导入任务。
    @inlinable
    public func modifyIncrementalMigration(_ input: ModifyIncrementalMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIncrementalMigrationResponse> {
        self.client.execute(action: "ModifyIncrementalMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改增量备份导入任务
    ///
    /// 本接口（ModifyIncrementalMigration）用于修改增量备份导入任务。
    @inlinable
    public func modifyIncrementalMigration(_ input: ModifyIncrementalMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIncrementalMigrationResponse {
        try await self.client.execute(action: "ModifyIncrementalMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改增量备份导入任务
    ///
    /// 本接口（ModifyIncrementalMigration）用于修改增量备份导入任务。
    @inlinable
    public func modifyIncrementalMigration(instanceId: String, backupMigrationId: String, incrementalMigrationId: String, isRecovery: String? = nil, backupFiles: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyIncrementalMigrationResponse> {
        self.modifyIncrementalMigration(ModifyIncrementalMigrationRequest(instanceId: instanceId, backupMigrationId: backupMigrationId, incrementalMigrationId: incrementalMigrationId, isRecovery: isRecovery, backupFiles: backupFiles), region: region, logger: logger, on: eventLoop)
    }

    /// 修改增量备份导入任务
    ///
    /// 本接口（ModifyIncrementalMigration）用于修改增量备份导入任务。
    @inlinable
    public func modifyIncrementalMigration(instanceId: String, backupMigrationId: String, incrementalMigrationId: String, isRecovery: String? = nil, backupFiles: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIncrementalMigrationResponse {
        try await self.modifyIncrementalMigration(ModifyIncrementalMigrationRequest(instanceId: instanceId, backupMigrationId: backupMigrationId, incrementalMigrationId: incrementalMigrationId, isRecovery: isRecovery, backupFiles: backupFiles), region: region, logger: logger, on: eventLoop)
    }
}
