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
    /// CreateBackup请求参数结构体
    public struct CreateBackupRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 备份类型, 可选值：logic，逻辑备份；snapshot，物理备份
        public let backupType: String?

        /// 备份的库, 只在 BackupType 为 logic 时有效
        public let backupDatabases: [String]?

        /// 备份的表, 只在 BackupType 为 logic 时有效
        public let backupTables: [DatabaseTables]?

        /// 备注名
        public let backupName: String?

        public init(clusterId: String, backupType: String? = nil, backupDatabases: [String]? = nil, backupTables: [DatabaseTables]? = nil, backupName: String? = nil) {
            self.clusterId = clusterId
            self.backupType = backupType
            self.backupDatabases = backupDatabases
            self.backupTables = backupTables
            self.backupName = backupName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case backupType = "BackupType"
            case backupDatabases = "BackupDatabases"
            case backupTables = "BackupTables"
            case backupName = "BackupName"
        }
    }

    /// CreateBackup返回参数结构体
    public struct CreateBackupResponse: TCResponseModel {
        /// 异步任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建手动备份
    ///
    /// 为集群创建手动备份
    @inlinable
    public func createBackup(_ input: CreateBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupResponse> {
        self.client.execute(action: "CreateBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建手动备份
    ///
    /// 为集群创建手动备份
    @inlinable
    public func createBackup(_ input: CreateBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupResponse {
        try await self.client.execute(action: "CreateBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建手动备份
    ///
    /// 为集群创建手动备份
    @inlinable
    public func createBackup(clusterId: String, backupType: String? = nil, backupDatabases: [String]? = nil, backupTables: [DatabaseTables]? = nil, backupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupResponse> {
        self.createBackup(.init(clusterId: clusterId, backupType: backupType, backupDatabases: backupDatabases, backupTables: backupTables, backupName: backupName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建手动备份
    ///
    /// 为集群创建手动备份
    @inlinable
    public func createBackup(clusterId: String, backupType: String? = nil, backupDatabases: [String]? = nil, backupTables: [DatabaseTables]? = nil, backupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupResponse {
        try await self.createBackup(.init(clusterId: clusterId, backupType: backupType, backupDatabases: backupDatabases, backupTables: backupTables, backupName: backupName), region: region, logger: logger, on: eventLoop)
    }
}
