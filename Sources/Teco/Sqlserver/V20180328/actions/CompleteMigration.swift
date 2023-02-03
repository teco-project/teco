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
    /// CompleteMigration请求参数结构体
    public struct CompleteMigrationRequest: TCRequestModel {
        /// 迁移任务ID
        public let migrateId: Int64

        public init(migrateId: Int64) {
            self.migrateId = migrateId
        }

        enum CodingKeys: String, CodingKey {
            case migrateId = "MigrateId"
        }
    }

    /// CompleteMigration返回参数结构体
    public struct CompleteMigrationResponse: TCResponseModel {
        /// 完成迁移流程发起后，返回的流程id
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 完成迁移任务
    ///
    /// 本接口（CompleteMigration）作用是完成一个迁移任务
    @inlinable
    public func completeMigration(_ input: CompleteMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteMigrationResponse> {
        self.client.execute(action: "CompleteMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 完成迁移任务
    ///
    /// 本接口（CompleteMigration）作用是完成一个迁移任务
    @inlinable
    public func completeMigration(_ input: CompleteMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteMigrationResponse {
        try await self.client.execute(action: "CompleteMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 完成迁移任务
    ///
    /// 本接口（CompleteMigration）作用是完成一个迁移任务
    @inlinable
    public func completeMigration(migrateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteMigrationResponse> {
        let input = CompleteMigrationRequest(migrateId: migrateId)
        return self.client.execute(action: "CompleteMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 完成迁移任务
    ///
    /// 本接口（CompleteMigration）作用是完成一个迁移任务
    @inlinable
    public func completeMigration(migrateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteMigrationResponse {
        let input = CompleteMigrationRequest(migrateId: migrateId)
        return try await self.client.execute(action: "CompleteMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
