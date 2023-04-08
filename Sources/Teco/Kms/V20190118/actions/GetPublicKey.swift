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
    /// GetPublicKey请求参数结构体
    public struct GetPublicKeyRequest: TCRequestModel {
        /// CMK的唯一标识。
        public let keyId: String

        public init(keyId: String) {
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }

    /// GetPublicKey返回参数结构体
    public struct GetPublicKeyResponse: TCResponseModel {
        /// CMK的唯一标识。
        public let keyId: String

        /// 经过base64编码的公钥内容。
        public let publicKey: String

        /// PEM格式的公钥内容。
        public let publicKeyPem: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case publicKey = "PublicKey"
            case publicKeyPem = "PublicKeyPem"
            case requestId = "RequestId"
        }
    }

    /// 获取非对称密钥的公钥
    ///
    /// 该接口用于获取非对称密钥的公钥信息，可用于本地数据加密或验签。只有处于Enabled状态的非对称密钥才可能获取公钥。
    @inlinable
    public func getPublicKey(_ input: GetPublicKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPublicKeyResponse> {
        self.client.execute(action: "GetPublicKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取非对称密钥的公钥
    ///
    /// 该接口用于获取非对称密钥的公钥信息，可用于本地数据加密或验签。只有处于Enabled状态的非对称密钥才可能获取公钥。
    @inlinable
    public func getPublicKey(_ input: GetPublicKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPublicKeyResponse {
        try await self.client.execute(action: "GetPublicKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取非对称密钥的公钥
    ///
    /// 该接口用于获取非对称密钥的公钥信息，可用于本地数据加密或验签。只有处于Enabled状态的非对称密钥才可能获取公钥。
    @inlinable
    public func getPublicKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPublicKeyResponse> {
        self.getPublicKey(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取非对称密钥的公钥
    ///
    /// 该接口用于获取非对称密钥的公钥信息，可用于本地数据加密或验签。只有处于Enabled状态的非对称密钥才可能获取公钥。
    @inlinable
    public func getPublicKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPublicKeyResponse {
        try await self.getPublicKey(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
