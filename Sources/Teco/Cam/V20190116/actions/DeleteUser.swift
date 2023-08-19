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

extension Cam {
    /// DeleteUser请求参数结构体
    public struct DeleteUserRequest: TCRequest {
        /// 子用户用户名
        public let name: String

        /// 是否强制删除该子用户，默认入参为0。0：若该用户存在未删除API密钥，则不删除用户；1：若该用户存在未删除API密钥，则先删除密钥后删除用户。删除密钥需要您拥有cam:DeleteApiKey权限，您将可以删除该用户下启用或禁用状态的所有密钥，无权限则删除密钥和用户失败
        public let force: UInt64?

        public init(name: String, force: UInt64? = nil) {
            self.name = name
            self.force = force
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case force = "Force"
        }
    }

    /// DeleteUser返回参数结构体
    public struct DeleteUserResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除子用户
    @inlinable @discardableResult
    public func deleteUser(_ input: DeleteUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除子用户
    @inlinable @discardableResult
    public func deleteUser(_ input: DeleteUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        try await self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除子用户
    @inlinable @discardableResult
    public func deleteUser(name: String, force: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        self.deleteUser(.init(name: name, force: force), region: region, logger: logger, on: eventLoop)
    }

    /// 删除子用户
    @inlinable @discardableResult
    public func deleteUser(name: String, force: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        try await self.deleteUser(.init(name: name, force: force), region: region, logger: logger, on: eventLoop)
    }
}
