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

extension Lighthouse {
    /// ImportKeyPair请求参数结构体
    public struct ImportKeyPairRequest: TCRequest {
        /// 密钥对名称，可由数字，字母和下划线组成，长度不超过 25 个字符。
        public let keyName: String

        /// 密钥对的公钥内容， OpenSSH RSA 格式。
        public let publicKey: String

        public init(keyName: String, publicKey: String) {
            self.keyName = keyName
            self.publicKey = publicKey
        }

        enum CodingKeys: String, CodingKey {
            case keyName = "KeyName"
            case publicKey = "PublicKey"
        }
    }

    /// ImportKeyPair返回参数结构体
    public struct ImportKeyPairResponse: TCResponse {
        /// 密钥对 ID。
        public let keyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case requestId = "RequestId"
        }
    }

    /// 导入密钥对
    ///
    /// 本接口（ImportKeyPair）用于导入用户指定密钥对。
    @inlinable
    public func importKeyPair(_ input: ImportKeyPairRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportKeyPairResponse> {
        self.client.execute(action: "ImportKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入密钥对
    ///
    /// 本接口（ImportKeyPair）用于导入用户指定密钥对。
    @inlinable
    public func importKeyPair(_ input: ImportKeyPairRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportKeyPairResponse {
        try await self.client.execute(action: "ImportKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入密钥对
    ///
    /// 本接口（ImportKeyPair）用于导入用户指定密钥对。
    @inlinable
    public func importKeyPair(keyName: String, publicKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportKeyPairResponse> {
        self.importKeyPair(.init(keyName: keyName, publicKey: publicKey), region: region, logger: logger, on: eventLoop)
    }

    /// 导入密钥对
    ///
    /// 本接口（ImportKeyPair）用于导入用户指定密钥对。
    @inlinable
    public func importKeyPair(keyName: String, publicKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportKeyPairResponse {
        try await self.importKeyPair(.init(keyName: keyName, publicKey: publicKey), region: region, logger: logger, on: eventLoop)
    }
}
