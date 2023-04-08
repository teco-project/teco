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

import TecoCore

extension Postgres {
    /// ModifyBaseBackupExpireTime请求参数结构体
    public struct ModifyBaseBackupExpireTimeRequest: TCRequestModel {
        /// 实例ID。
        public let dbInstanceId: String

        /// 基础备份ID。
        public let baseBackupId: String

        /// 新过期时间。
        public let newExpireTime: String

        public init(dbInstanceId: String, baseBackupId: String, newExpireTime: String) {
            self.dbInstanceId = dbInstanceId
            self.baseBackupId = baseBackupId
            self.newExpireTime = newExpireTime
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case baseBackupId = "BaseBackupId"
            case newExpireTime = "NewExpireTime"
        }
    }

    /// ModifyBaseBackupExpireTime返回参数结构体
    public struct ModifyBaseBackupExpireTimeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改基础备份过期时间
    ///
    /// 本接口（DeleteBaseBackup）用于修改实例指定全量备份的过期时间。
    @inlinable @discardableResult
    public func modifyBaseBackupExpireTime(_ input: ModifyBaseBackupExpireTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaseBackupExpireTimeResponse> {
        self.client.execute(action: "ModifyBaseBackupExpireTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改基础备份过期时间
    ///
    /// 本接口（DeleteBaseBackup）用于修改实例指定全量备份的过期时间。
    @inlinable @discardableResult
    public func modifyBaseBackupExpireTime(_ input: ModifyBaseBackupExpireTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaseBackupExpireTimeResponse {
        try await self.client.execute(action: "ModifyBaseBackupExpireTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改基础备份过期时间
    ///
    /// 本接口（DeleteBaseBackup）用于修改实例指定全量备份的过期时间。
    @inlinable @discardableResult
    public func modifyBaseBackupExpireTime(dbInstanceId: String, baseBackupId: String, newExpireTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaseBackupExpireTimeResponse> {
        self.modifyBaseBackupExpireTime(.init(dbInstanceId: dbInstanceId, baseBackupId: baseBackupId, newExpireTime: newExpireTime), region: region, logger: logger, on: eventLoop)
    }

    /// 修改基础备份过期时间
    ///
    /// 本接口（DeleteBaseBackup）用于修改实例指定全量备份的过期时间。
    @inlinable @discardableResult
    public func modifyBaseBackupExpireTime(dbInstanceId: String, baseBackupId: String, newExpireTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaseBackupExpireTimeResponse {
        try await self.modifyBaseBackupExpireTime(.init(dbInstanceId: dbInstanceId, baseBackupId: baseBackupId, newExpireTime: newExpireTime), region: region, logger: logger, on: eventLoop)
    }
}