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

extension Tcb {
    /// ModifyEndUser请求参数结构体
    public struct ModifyEndUserRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// C端用户端的唯一ID
        public let uuId: String

        /// 账号的状态
        /// - ENABLE
        /// - DISABLE
        public let status: String?

        public init(envId: String, uuId: String, status: String? = nil) {
            self.envId = envId
            self.uuId = uuId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case uuId = "UUId"
            case status = "Status"
        }
    }

    /// ModifyEndUser返回参数结构体
    public struct ModifyEndUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 管理终端用户
    @inlinable @discardableResult
    public func modifyEndUser(_ input: ModifyEndUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEndUserResponse> {
        self.client.execute(action: "ModifyEndUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 管理终端用户
    @inlinable @discardableResult
    public func modifyEndUser(_ input: ModifyEndUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEndUserResponse {
        try await self.client.execute(action: "ModifyEndUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 管理终端用户
    @inlinable @discardableResult
    public func modifyEndUser(envId: String, uuId: String, status: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEndUserResponse> {
        self.modifyEndUser(.init(envId: envId, uuId: uuId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 管理终端用户
    @inlinable @discardableResult
    public func modifyEndUser(envId: String, uuId: String, status: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEndUserResponse {
        try await self.modifyEndUser(.init(envId: envId, uuId: uuId, status: status), region: region, logger: logger, on: eventLoop)
    }
}
