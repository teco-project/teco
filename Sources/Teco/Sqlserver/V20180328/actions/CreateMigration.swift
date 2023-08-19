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
    /// CreateMigration请求参数结构体
    public struct CreateMigrationRequest: TCRequest {
        /// 迁移任务的名称
        public let migrateName: String

        /// 迁移类型（1:结构迁移 2:数据迁移 3:增量同步）
        public let migrateType: UInt64

        /// 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式）
        public let sourceType: UInt64

        /// 迁移源
        public let source: MigrateSource

        /// 迁移目标
        public let target: MigrateTarget

        /// 迁移DB对象 ，离线迁移不使用（SourceType=4或SourceType=5）。
        public let migrateDBSet: [MigrateDB]?

        /// 按照ReNameRestoreDatabase中的库进行恢复，并重命名，不填则按照默认方式命名恢复的库，且恢复所有的库。SourceType=5的情况下有效。
        public let renameRestore: [RenameRestoreDatabase]?

        public init(migrateName: String, migrateType: UInt64, sourceType: UInt64, source: MigrateSource, target: MigrateTarget, migrateDBSet: [MigrateDB]? = nil, renameRestore: [RenameRestoreDatabase]? = nil) {
            self.migrateName = migrateName
            self.migrateType = migrateType
            self.sourceType = sourceType
            self.source = source
            self.target = target
            self.migrateDBSet = migrateDBSet
            self.renameRestore = renameRestore
        }

        enum CodingKeys: String, CodingKey {
            case migrateName = "MigrateName"
            case migrateType = "MigrateType"
            case sourceType = "SourceType"
            case source = "Source"
            case target = "Target"
            case migrateDBSet = "MigrateDBSet"
            case renameRestore = "RenameRestore"
        }
    }

    /// CreateMigration返回参数结构体
    public struct CreateMigrationResponse: TCResponse {
        /// 迁移任务ID
        public let migrateId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case migrateId = "MigrateId"
            case requestId = "RequestId"
        }
    }

    /// 创建迁移任务
    ///
    /// 本接口（CreateMigration）作用是创建一个迁移任务
    @inlinable
    public func createMigration(_ input: CreateMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMigrationResponse> {
        self.client.execute(action: "CreateMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建迁移任务
    ///
    /// 本接口（CreateMigration）作用是创建一个迁移任务
    @inlinable
    public func createMigration(_ input: CreateMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMigrationResponse {
        try await self.client.execute(action: "CreateMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建迁移任务
    ///
    /// 本接口（CreateMigration）作用是创建一个迁移任务
    @inlinable
    public func createMigration(migrateName: String, migrateType: UInt64, sourceType: UInt64, source: MigrateSource, target: MigrateTarget, migrateDBSet: [MigrateDB]? = nil, renameRestore: [RenameRestoreDatabase]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMigrationResponse> {
        self.createMigration(.init(migrateName: migrateName, migrateType: migrateType, sourceType: sourceType, source: source, target: target, migrateDBSet: migrateDBSet, renameRestore: renameRestore), region: region, logger: logger, on: eventLoop)
    }

    /// 创建迁移任务
    ///
    /// 本接口（CreateMigration）作用是创建一个迁移任务
    @inlinable
    public func createMigration(migrateName: String, migrateType: UInt64, sourceType: UInt64, source: MigrateSource, target: MigrateTarget, migrateDBSet: [MigrateDB]? = nil, renameRestore: [RenameRestoreDatabase]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMigrationResponse {
        try await self.createMigration(.init(migrateName: migrateName, migrateType: migrateType, sourceType: sourceType, source: source, target: target, migrateDBSet: migrateDBSet, renameRestore: renameRestore), region: region, logger: logger, on: eventLoop)
    }
}
