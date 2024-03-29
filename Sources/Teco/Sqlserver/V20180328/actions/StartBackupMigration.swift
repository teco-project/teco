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
    /// StartBackupMigration请求参数结构体
    public struct StartBackupMigrationRequest: TCRequest {
        /// 导入目标实例ID
        public let instanceId: String

        /// 备份导入任务ID，由CreateBackupMigration接口返回
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

    /// StartBackupMigration返回参数结构体
    public struct StartBackupMigrationResponse: TCResponse {
        /// 流程ID
        public let flowId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 启动备份导入任务
    ///
    /// 本接口（StartBackupMigration）用于启动备份导入任务。
    @inlinable
    public func startBackupMigration(_ input: StartBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartBackupMigrationResponse> {
        self.client.execute(action: "StartBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动备份导入任务
    ///
    /// 本接口（StartBackupMigration）用于启动备份导入任务。
    @inlinable
    public func startBackupMigration(_ input: StartBackupMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartBackupMigrationResponse {
        try await self.client.execute(action: "StartBackupMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动备份导入任务
    ///
    /// 本接口（StartBackupMigration）用于启动备份导入任务。
    @inlinable
    public func startBackupMigration(instanceId: String, backupMigrationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartBackupMigrationResponse> {
        self.startBackupMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId), region: region, logger: logger, on: eventLoop)
    }

    /// 启动备份导入任务
    ///
    /// 本接口（StartBackupMigration）用于启动备份导入任务。
    @inlinable
    public func startBackupMigration(instanceId: String, backupMigrationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartBackupMigrationResponse {
        try await self.startBackupMigration(.init(instanceId: instanceId, backupMigrationId: backupMigrationId), region: region, logger: logger, on: eventLoop)
    }
}
