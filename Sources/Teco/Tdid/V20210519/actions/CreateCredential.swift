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

import TecoCore

extension Tdid {
    /// CreateCredential请求参数结构体
    public struct CreateCredentialRequest: TCRequestModel {
        /// 参数集合，详见示例
        public let functionArg: FunctionArg

        /// 参数集合，详见示例
        public let transactionArg: TransactionArg

        /// 版本
        public let versionCredential: String

        /// 是否未签名
        public let unSigned: Bool?

        public init(functionArg: FunctionArg, transactionArg: TransactionArg, versionCredential: String, unSigned: Bool? = nil) {
            self.functionArg = functionArg
            self.transactionArg = transactionArg
            self.versionCredential = versionCredential
            self.unSigned = unSigned
        }

        enum CodingKeys: String, CodingKey {
            case functionArg = "FunctionArg"
            case transactionArg = "TransactionArg"
            case versionCredential = "VersionCredential"
            case unSigned = "UnSigned"
        }
    }

    /// CreateCredential返回参数结构体
    public struct CreateCredentialResponse: TCResponseModel {
        /// Credential的具体信息
        public let credentialData: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case credentialData = "CredentialData"
            case requestId = "RequestId"
        }
    }

    /// 创建凭证
    @inlinable
    public func createCredential(_ input: CreateCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCredentialResponse> {
        self.client.execute(action: "CreateCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建凭证
    @inlinable
    public func createCredential(_ input: CreateCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCredentialResponse {
        try await self.client.execute(action: "CreateCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建凭证
    @inlinable
    public func createCredential(functionArg: FunctionArg, transactionArg: TransactionArg, versionCredential: String, unSigned: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCredentialResponse> {
        self.createCredential(.init(functionArg: functionArg, transactionArg: transactionArg, versionCredential: versionCredential, unSigned: unSigned), region: region, logger: logger, on: eventLoop)
    }

    /// 创建凭证
    @inlinable
    public func createCredential(functionArg: FunctionArg, transactionArg: TransactionArg, versionCredential: String, unSigned: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCredentialResponse {
        try await self.createCredential(.init(functionArg: functionArg, transactionArg: transactionArg, versionCredential: versionCredential, unSigned: unSigned), region: region, logger: logger, on: eventLoop)
    }
}
