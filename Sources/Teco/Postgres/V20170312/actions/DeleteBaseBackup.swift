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
    /// DeleteBaseBackup请求参数结构体
    public struct DeleteBaseBackupRequest: TCRequest {
        /// 实例ID。
        public let dbInstanceId: String

        /// 基础备份ID。
        public let baseBackupId: String

        public init(dbInstanceId: String, baseBackupId: String) {
            self.dbInstanceId = dbInstanceId
            self.baseBackupId = baseBackupId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case baseBackupId = "BaseBackupId"
        }
    }

    /// DeleteBaseBackup返回参数结构体
    public struct DeleteBaseBackupResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除实例基础备份
    ///
    /// 本接口（DeleteBaseBackup）用于删除实例指定全量备份。
    @inlinable @discardableResult
    public func deleteBaseBackup(_ input: DeleteBaseBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBaseBackupResponse> {
        self.client.execute(action: "DeleteBaseBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例基础备份
    ///
    /// 本接口（DeleteBaseBackup）用于删除实例指定全量备份。
    @inlinable @discardableResult
    public func deleteBaseBackup(_ input: DeleteBaseBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBaseBackupResponse {
        try await self.client.execute(action: "DeleteBaseBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例基础备份
    ///
    /// 本接口（DeleteBaseBackup）用于删除实例指定全量备份。
    @inlinable @discardableResult
    public func deleteBaseBackup(dbInstanceId: String, baseBackupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBaseBackupResponse> {
        self.deleteBaseBackup(.init(dbInstanceId: dbInstanceId, baseBackupId: baseBackupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例基础备份
    ///
    /// 本接口（DeleteBaseBackup）用于删除实例指定全量备份。
    @inlinable @discardableResult
    public func deleteBaseBackup(dbInstanceId: String, baseBackupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBaseBackupResponse {
        try await self.deleteBaseBackup(.init(dbInstanceId: dbInstanceId, baseBackupId: baseBackupId), region: region, logger: logger, on: eventLoop)
    }
}
