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
    /// GetKeyRotationStatus请求参数结构体
    public struct GetKeyRotationStatusRequest: TCRequestModel {
        /// CMK唯一标识符
        public let keyId: String

        public init(keyId: String) {
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }

    /// GetKeyRotationStatus返回参数结构体
    public struct GetKeyRotationStatusResponse: TCResponseModel {
        /// 密钥轮换是否开启
        public let keyRotationEnabled: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyRotationEnabled = "KeyRotationEnabled"
            case requestId = "RequestId"
        }
    }

    /// 查询密钥轮换状态
    ///
    /// 查询指定的CMK是否开启了密钥轮换功能。
    @inlinable
    public func getKeyRotationStatus(_ input: GetKeyRotationStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetKeyRotationStatusResponse> {
        self.client.execute(action: "GetKeyRotationStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询密钥轮换状态
    ///
    /// 查询指定的CMK是否开启了密钥轮换功能。
    @inlinable
    public func getKeyRotationStatus(_ input: GetKeyRotationStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetKeyRotationStatusResponse {
        try await self.client.execute(action: "GetKeyRotationStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询密钥轮换状态
    ///
    /// 查询指定的CMK是否开启了密钥轮换功能。
    @inlinable
    public func getKeyRotationStatus(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetKeyRotationStatusResponse> {
        self.getKeyRotationStatus(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询密钥轮换状态
    ///
    /// 查询指定的CMK是否开启了密钥轮换功能。
    @inlinable
    public func getKeyRotationStatus(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetKeyRotationStatusResponse {
        try await self.getKeyRotationStatus(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
