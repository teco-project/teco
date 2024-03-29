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
    /// StopMigration请求参数结构体
    public struct StopMigrationRequest: TCRequest {
        /// 迁移任务ID
        public let migrateId: Int64

        public init(migrateId: Int64) {
            self.migrateId = migrateId
        }

        enum CodingKeys: String, CodingKey {
            case migrateId = "MigrateId"
        }
    }

    /// StopMigration返回参数结构体
    public struct StopMigrationResponse: TCResponse {
        /// 中止迁移流程发起后，返回的流程id
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 中止迁移任务
    ///
    /// 本接口（StopMigration）作用是中止一个迁移任务
    @inlinable
    public func stopMigration(_ input: StopMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMigrationResponse> {
        self.client.execute(action: "StopMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 中止迁移任务
    ///
    /// 本接口（StopMigration）作用是中止一个迁移任务
    @inlinable
    public func stopMigration(_ input: StopMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMigrationResponse {
        try await self.client.execute(action: "StopMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 中止迁移任务
    ///
    /// 本接口（StopMigration）作用是中止一个迁移任务
    @inlinable
    public func stopMigration(migrateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMigrationResponse> {
        self.stopMigration(.init(migrateId: migrateId), region: region, logger: logger, on: eventLoop)
    }

    /// 中止迁移任务
    ///
    /// 本接口（StopMigration）作用是中止一个迁移任务
    @inlinable
    public func stopMigration(migrateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMigrationResponse {
        try await self.stopMigration(.init(migrateId: migrateId), region: region, logger: logger, on: eventLoop)
    }
}
