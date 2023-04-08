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
    /// DeleteMigration请求参数结构体
    public struct DeleteMigrationRequest: TCRequestModel {
        /// 迁移任务ID
        public let migrateId: UInt64

        public init(migrateId: UInt64) {
            self.migrateId = migrateId
        }

        enum CodingKeys: String, CodingKey {
            case migrateId = "MigrateId"
        }
    }

    /// DeleteMigration返回参数结构体
    public struct DeleteMigrationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除迁移任务
    ///
    /// 本接口（DeleteMigration）用于删除迁移任务
    @inlinable @discardableResult
    public func deleteMigration(_ input: DeleteMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMigrationResponse> {
        self.client.execute(action: "DeleteMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除迁移任务
    ///
    /// 本接口（DeleteMigration）用于删除迁移任务
    @inlinable @discardableResult
    public func deleteMigration(_ input: DeleteMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMigrationResponse {
        try await self.client.execute(action: "DeleteMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除迁移任务
    ///
    /// 本接口（DeleteMigration）用于删除迁移任务
    @inlinable @discardableResult
    public func deleteMigration(migrateId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMigrationResponse> {
        self.deleteMigration(.init(migrateId: migrateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除迁移任务
    ///
    /// 本接口（DeleteMigration）用于删除迁移任务
    @inlinable @discardableResult
    public func deleteMigration(migrateId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMigrationResponse {
        try await self.deleteMigration(.init(migrateId: migrateId), region: region, logger: logger, on: eventLoop)
    }
}
