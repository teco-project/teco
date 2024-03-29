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
    /// RunMigration请求参数结构体
    public struct RunMigrationRequest: TCRequest {
        /// 迁移任务ID
        public let migrateId: UInt64

        public init(migrateId: UInt64) {
            self.migrateId = migrateId
        }

        enum CodingKeys: String, CodingKey {
            case migrateId = "MigrateId"
        }
    }

    /// RunMigration返回参数结构体
    public struct RunMigrationResponse: TCResponse {
        /// 迁移流程启动后，返回流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 执行迁移任务
    ///
    /// 本接口（RunMigration）用于启动迁移任务，开始迁移
    @inlinable
    public func runMigration(_ input: RunMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunMigrationResponse> {
        self.client.execute(action: "RunMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 执行迁移任务
    ///
    /// 本接口（RunMigration）用于启动迁移任务，开始迁移
    @inlinable
    public func runMigration(_ input: RunMigrationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunMigrationResponse {
        try await self.client.execute(action: "RunMigration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 执行迁移任务
    ///
    /// 本接口（RunMigration）用于启动迁移任务，开始迁移
    @inlinable
    public func runMigration(migrateId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunMigrationResponse> {
        self.runMigration(.init(migrateId: migrateId), region: region, logger: logger, on: eventLoop)
    }

    /// 执行迁移任务
    ///
    /// 本接口（RunMigration）用于启动迁移任务，开始迁移
    @inlinable
    public func runMigration(migrateId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunMigrationResponse {
        try await self.runMigration(.init(migrateId: migrateId), region: region, logger: logger, on: eventLoop)
    }
}
