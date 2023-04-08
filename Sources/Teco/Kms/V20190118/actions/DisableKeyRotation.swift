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

extension Kms {
    /// DisableKeyRotation请求参数结构体
    public struct DisableKeyRotationRequest: TCRequestModel {
        /// CMK唯一标识符
        public let keyId: String

        public init(keyId: String) {
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }

    /// DisableKeyRotation返回参数结构体
    public struct DisableKeyRotationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 禁止密钥轮换
    ///
    /// 对指定的CMK禁止密钥轮换功能。
    @inlinable @discardableResult
    public func disableKeyRotation(_ input: DisableKeyRotationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableKeyRotationResponse> {
        self.client.execute(action: "DisableKeyRotation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁止密钥轮换
    ///
    /// 对指定的CMK禁止密钥轮换功能。
    @inlinable @discardableResult
    public func disableKeyRotation(_ input: DisableKeyRotationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableKeyRotationResponse {
        try await self.client.execute(action: "DisableKeyRotation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁止密钥轮换
    ///
    /// 对指定的CMK禁止密钥轮换功能。
    @inlinable @discardableResult
    public func disableKeyRotation(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableKeyRotationResponse> {
        self.disableKeyRotation(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 禁止密钥轮换
    ///
    /// 对指定的CMK禁止密钥轮换功能。
    @inlinable @discardableResult
    public func disableKeyRotation(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableKeyRotationResponse {
        try await self.disableKeyRotation(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
