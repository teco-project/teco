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

extension Sqlserver {
    /// CreateIncrementalMigration请求参数结构体
    public struct CreateIncrementalMigrationRequest: TCRequest {
        /// 导入目标实例ID
        public let instanceId: String

        /// 备份导入任务ID，由CreateBackupMigration接口返回
        public let backupMigrationId: String

        /// 增量备份文件，全量备份任务UploadType是COS_URL时这里填URL，是COS_UPLOAD这里填备份文件的名字；只支持1个备份文件，但1个备份文件内可包含多个库
        public let backupFiles: [String]?

        /// 是否需要恢复，NO-不需要，YES-需要，默认不需要
        public let isRecovery: String?

        public init(instanceId: String, backupMigrationId: String, backupFiles: [String]? = nil, isRecovery: String? = nil) {
            self.instanceId = instanceId
            self.backupMigrationId = backupMigrationId
            self.backupFiles = backupFiles
            self.isRecovery = isRecovery
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupMigrationId = "BackupMigrationId"
            case backupFiles = "BackupFiles"
            case isRecovery = "IsRecovery"
        }
    }

    /// CreateIncrementalMigration返回参数结构体
    public struct CreateIncrementalMigrationResponse: TCResponse {
        /// 增量备份导入任务ID
        public let incrementalMigrationId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case incrementalMigrationId = "IncrementalMigrationId"
            case requestId = "RequestId"
        }
    }

    /// 创建增量备份导入任务
    ///
    /// 本接口（CreateIncrementalMigration）用于创建增量备份导入任务。
    @inlinable
    public func createIncrementalMigration(_ input: CreateIncrementalMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIncrementalMigrationResponse> {
        self.client.execute(action: "CreateIncrementalMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建增量备份导入任务
    ///
    /// 本接口（CreateIncrementalMigration）用于创建增量备份导入任务。
    @inlinable
    public func createIncrementalMigration(_ input: CreateIncrementalMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIncrementalMigrationResponse {
        try await self.client.execute(action: "CreateIncrementalMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建增量备份导入任务
    ///
    /// 本接口（CreateIncrementalMigration）用于创建增量备份导入任务。
    @inlinable
    public func createIncrementalMigration(instanceId: String, backupMigrationId: String, backupFiles: [String]? = nil, isRecovery: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIncrementalMigrationResponse> {
        self.createIncrementalMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId, backupFiles: backupFiles, isRecovery: isRecovery), region: region, logger: logger, on: eventLoop)
    }

    /// 创建增量备份导入任务
    ///
    /// 本接口（CreateIncrementalMigration）用于创建增量备份导入任务。
    @inlinable
    public func createIncrementalMigration(instanceId: String, backupMigrationId: String, backupFiles: [String]? = nil, isRecovery: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIncrementalMigrationResponse {
        try await self.createIncrementalMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId, backupFiles: backupFiles, isRecovery: isRecovery), region: region, logger: logger, on: eventLoop)
    }
}
