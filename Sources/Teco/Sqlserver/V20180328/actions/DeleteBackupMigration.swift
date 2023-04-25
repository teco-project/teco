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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Sqlserver {
    /// DeleteBackupMigration请求参数结构体
    public struct DeleteBackupMigrationRequest: TCRequestModel {
        /// 目标实例ID，由DescribeBackupMigration接口返回
        public let instanceId: String

        /// 备份导入任务ID，由DescribeBackupMigration接口返回
        public let backupMigrationId: String

        public init(instanceId: String, backupMigrationId: String) {
            self.instanceId = instanceId
            self.backupMigrationId = backupMigrationId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupMigrationId = "BackupMigrationId"
        }
    }

    /// DeleteBackupMigration返回参数结构体
    public struct DeleteBackupMigrationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除备份导入任务
    ///
    /// 本接口（DeleteBackupMigration）用于删除备份导入任务。
    @inlinable @discardableResult
    public func deleteBackupMigration(_ input: DeleteBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBackupMigrationResponse> {
        self.client.execute(action: "DeleteBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除备份导入任务
    ///
    /// 本接口（DeleteBackupMigration）用于删除备份导入任务。
    @inlinable @discardableResult
    public func deleteBackupMigration(_ input: DeleteBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackupMigrationResponse {
        try await self.client.execute(action: "DeleteBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除备份导入任务
    ///
    /// 本接口（DeleteBackupMigration）用于删除备份导入任务。
    @inlinable @discardableResult
    public func deleteBackupMigration(instanceId: String, backupMigrationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBackupMigrationResponse> {
        self.deleteBackupMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除备份导入任务
    ///
    /// 本接口（DeleteBackupMigration）用于删除备份导入任务。
    @inlinable @discardableResult
    public func deleteBackupMigration(instanceId: String, backupMigrationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackupMigrationResponse {
        try await self.deleteBackupMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId), region: region, logger: logger, on: eventLoop)
    }
}
