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

extension Cfs {
    /// DeleteUserQuota请求参数结构体
    public struct DeleteUserQuotaRequest: TCRequest {
        /// 文件系统 ID
        public let fileSystemId: String

        /// 指定配额类型，包括Uid、Gid
        public let userType: String

        /// UID/GID信息
        public let userId: String

        public init(fileSystemId: String, userType: String, userId: String) {
            self.fileSystemId = fileSystemId
            self.userType = userType
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case userType = "UserType"
            case userId = "UserId"
        }
    }

    /// DeleteUserQuota返回参数结构体
    public struct DeleteUserQuotaResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除文件系统配额
    ///
    /// 指定条件删除文件系统配额
    @inlinable @discardableResult
    public func deleteUserQuota(_ input: DeleteUserQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserQuotaResponse> {
        self.client.execute(action: "DeleteUserQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除文件系统配额
    ///
    /// 指定条件删除文件系统配额
    @inlinable @discardableResult
    public func deleteUserQuota(_ input: DeleteUserQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserQuotaResponse {
        try await self.client.execute(action: "DeleteUserQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除文件系统配额
    ///
    /// 指定条件删除文件系统配额
    @inlinable @discardableResult
    public func deleteUserQuota(fileSystemId: String, userType: String, userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserQuotaResponse> {
        self.deleteUserQuota(.init(fileSystemId: fileSystemId, userType: userType, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除文件系统配额
    ///
    /// 指定条件删除文件系统配额
    @inlinable @discardableResult
    public func deleteUserQuota(fileSystemId: String, userType: String, userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserQuotaResponse {
        try await self.deleteUserQuota(.init(fileSystemId: fileSystemId, userType: userType, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
