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
    /// UpdateKeyDescription请求参数结构体
    public struct UpdateKeyDescriptionRequest: TCRequest {
        /// 新的描述信息，最大支持1024字节
        public let description: String

        /// 需要修改描述信息的CMK ID
        public let keyId: String

        public init(description: String, keyId: String) {
            self.description = description
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case description = "Description"
            case keyId = "KeyId"
        }
    }

    /// UpdateKeyDescription返回参数结构体
    public struct UpdateKeyDescriptionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改主密钥描述信息
    ///
    /// 该接口用于对指定的cmk修改描述信息。对于处于PendingDelete状态的CMK禁止修改。
    @inlinable @discardableResult
    public func updateKeyDescription(_ input: UpdateKeyDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateKeyDescriptionResponse> {
        self.client.execute(action: "UpdateKeyDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改主密钥描述信息
    ///
    /// 该接口用于对指定的cmk修改描述信息。对于处于PendingDelete状态的CMK禁止修改。
    @inlinable @discardableResult
    public func updateKeyDescription(_ input: UpdateKeyDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateKeyDescriptionResponse {
        try await self.client.execute(action: "UpdateKeyDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改主密钥描述信息
    ///
    /// 该接口用于对指定的cmk修改描述信息。对于处于PendingDelete状态的CMK禁止修改。
    @inlinable @discardableResult
    public func updateKeyDescription(description: String, keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateKeyDescriptionResponse> {
        self.updateKeyDescription(.init(description: description, keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改主密钥描述信息
    ///
    /// 该接口用于对指定的cmk修改描述信息。对于处于PendingDelete状态的CMK禁止修改。
    @inlinable @discardableResult
    public func updateKeyDescription(description: String, keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateKeyDescriptionResponse {
        try await self.updateKeyDescription(.init(description: description, keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
