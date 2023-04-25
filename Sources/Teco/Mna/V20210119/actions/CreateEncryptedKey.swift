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

extension Mna {
    /// CreateEncryptedKey请求参数结构体
    public struct CreateEncryptedKeyRequest: TCRequestModel {
        public init() {
        }
    }

    /// CreateEncryptedKey返回参数结构体
    public struct CreateEncryptedKeyResponse: TCResponseModel {
        /// 预置密钥
        public let encryptedKey: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case encryptedKey = "EncryptedKey"
            case requestId = "RequestId"
        }
    }

    /// 设置或更新密钥
    ///
    /// 通过此接口设置和更新预置密钥
    @inlinable
    public func createEncryptedKey(_ input: CreateEncryptedKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEncryptedKeyResponse> {
        self.client.execute(action: "CreateEncryptedKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置或更新密钥
    ///
    /// 通过此接口设置和更新预置密钥
    @inlinable
    public func createEncryptedKey(_ input: CreateEncryptedKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEncryptedKeyResponse {
        try await self.client.execute(action: "CreateEncryptedKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置或更新密钥
    ///
    /// 通过此接口设置和更新预置密钥
    @inlinable
    public func createEncryptedKey(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEncryptedKeyResponse> {
        self.createEncryptedKey(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 设置或更新密钥
    ///
    /// 通过此接口设置和更新预置密钥
    @inlinable
    public func createEncryptedKey(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEncryptedKeyResponse {
        try await self.createEncryptedKey(.init(), region: region, logger: logger, on: eventLoop)
    }
}
