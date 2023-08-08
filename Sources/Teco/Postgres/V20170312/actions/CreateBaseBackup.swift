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

extension Postgres {
    /// CreateBaseBackup请求参数结构体
    public struct CreateBaseBackupRequest: TCRequestModel {
        /// 实例ID。
        public let dbInstanceId: String

        public init(dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }

    /// CreateBaseBackup返回参数结构体
    public struct CreateBaseBackupResponse: TCResponseModel {
        /// 基础备份集ID
        public let baseBackupId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case baseBackupId = "BaseBackupId"
            case requestId = "RequestId"
        }
    }

    /// 创建实例基础备份
    ///
    /// 本接口（CreateBaseBackup）用于创建实例的全量备份。
    @inlinable
    public func createBaseBackup(_ input: CreateBaseBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBaseBackupResponse> {
        self.client.execute(action: "CreateBaseBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例基础备份
    ///
    /// 本接口（CreateBaseBackup）用于创建实例的全量备份。
    @inlinable
    public func createBaseBackup(_ input: CreateBaseBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBaseBackupResponse {
        try await self.client.execute(action: "CreateBaseBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例基础备份
    ///
    /// 本接口（CreateBaseBackup）用于创建实例的全量备份。
    @inlinable
    public func createBaseBackup(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBaseBackupResponse> {
        self.createBaseBackup(.init(dbInstanceId: dbInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例基础备份
    ///
    /// 本接口（CreateBaseBackup）用于创建实例的全量备份。
    @inlinable
    public func createBaseBackup(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBaseBackupResponse {
        try await self.createBaseBackup(.init(dbInstanceId: dbInstanceId), region: region, logger: logger, on: eventLoop)
    }
}
