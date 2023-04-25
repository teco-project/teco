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

extension Postgres {
    /// DeleteLogBackup请求参数结构体
    public struct DeleteLogBackupRequest: TCRequestModel {
        /// 实例ID。
        public let dbInstanceId: String

        /// 日志备份ID。
        public let logBackupId: String

        public init(dbInstanceId: String, logBackupId: String) {
            self.dbInstanceId = dbInstanceId
            self.logBackupId = logBackupId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case logBackupId = "LogBackupId"
        }
    }

    /// DeleteLogBackup返回参数结构体
    public struct DeleteLogBackupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除实例日志备份
    ///
    /// 本接口（DeleteLogBackup）用于删除实例指定日志备份。
    @inlinable @discardableResult
    public func deleteLogBackup(_ input: DeleteLogBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLogBackupResponse> {
        self.client.execute(action: "DeleteLogBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例日志备份
    ///
    /// 本接口（DeleteLogBackup）用于删除实例指定日志备份。
    @inlinable @discardableResult
    public func deleteLogBackup(_ input: DeleteLogBackupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLogBackupResponse {
        try await self.client.execute(action: "DeleteLogBackup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例日志备份
    ///
    /// 本接口（DeleteLogBackup）用于删除实例指定日志备份。
    @inlinable @discardableResult
    public func deleteLogBackup(dbInstanceId: String, logBackupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLogBackupResponse> {
        self.deleteLogBackup(.init(dbInstanceId: dbInstanceId, logBackupId: logBackupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例日志备份
    ///
    /// 本接口（DeleteLogBackup）用于删除实例指定日志备份。
    @inlinable @discardableResult
    public func deleteLogBackup(dbInstanceId: String, logBackupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLogBackupResponse {
        try await self.deleteLogBackup(.init(dbInstanceId: dbInstanceId, logBackupId: logBackupId), region: region, logger: logger, on: eventLoop)
    }
}
