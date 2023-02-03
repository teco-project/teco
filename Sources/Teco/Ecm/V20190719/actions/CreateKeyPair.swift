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

extension Ecm {
    /// CreateKeyPair请求参数结构体
    public struct CreateKeyPairRequest: TCRequestModel {
        /// 密钥对名称，可由数字，字母和下划线组成，长度不超过25个字符。
        public let keyName: String

        public init(keyName: String) {
            self.keyName = keyName
        }

        enum CodingKeys: String, CodingKey {
            case keyName = "KeyName"
        }
    }

    /// CreateKeyPair返回参数结构体
    public struct CreateKeyPairResponse: TCResponseModel {
        /// 密钥对信息。
        public let keyPair: KeyPair

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyPair = "KeyPair"
            case requestId = "RequestId"
        }
    }

    /// 创建密钥对
    ///
    /// 用于创建一个 OpenSSH RSA 密钥对，可以用于登录 Linux 实例。
    @inlinable
    public func createKeyPair(_ input: CreateKeyPairRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKeyPairResponse> {
        self.client.execute(action: "CreateKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建密钥对
    ///
    /// 用于创建一个 OpenSSH RSA 密钥对，可以用于登录 Linux 实例。
    @inlinable
    public func createKeyPair(_ input: CreateKeyPairRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKeyPairResponse {
        try await self.client.execute(action: "CreateKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建密钥对
    ///
    /// 用于创建一个 OpenSSH RSA 密钥对，可以用于登录 Linux 实例。
    @inlinable
    public func createKeyPair(keyName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKeyPairResponse> {
        let input = CreateKeyPairRequest(keyName: keyName)
        return self.client.execute(action: "CreateKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建密钥对
    ///
    /// 用于创建一个 OpenSSH RSA 密钥对，可以用于登录 Linux 实例。
    @inlinable
    public func createKeyPair(keyName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKeyPairResponse {
        let input = CreateKeyPairRequest(keyName: keyName)
        return try await self.client.execute(action: "CreateKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
