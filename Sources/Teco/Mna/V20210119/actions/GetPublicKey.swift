//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Mna {
    /// GetPublicKey请求参数结构体
    public struct GetPublicKeyRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetPublicKey返回参数结构体
    public struct GetPublicKeyResponse: TCResponseModel {
        /// 非对称公钥
        public let publicKey: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case publicKey = "PublicKey"
            case requestId = "RequestId"
        }
    }

    /// 获取公钥
    ///
    /// 获取公钥用于验签
    @inlinable
    public func getPublicKey(_ input: GetPublicKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPublicKeyResponse> {
        self.client.execute(action: "GetPublicKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取公钥
    ///
    /// 获取公钥用于验签
    @inlinable
    public func getPublicKey(_ input: GetPublicKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPublicKeyResponse {
        try await self.client.execute(action: "GetPublicKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取公钥
    ///
    /// 获取公钥用于验签
    @inlinable
    public func getPublicKey(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPublicKeyResponse> {
        self.getPublicKey(GetPublicKeyRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取公钥
    ///
    /// 获取公钥用于验签
    @inlinable
    public func getPublicKey(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPublicKeyResponse {
        try await self.getPublicKey(GetPublicKeyRequest(), region: region, logger: logger, on: eventLoop)
    }
}
