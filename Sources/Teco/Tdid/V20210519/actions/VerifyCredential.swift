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

extension Tdid {
    /// VerifyCredential请求参数结构体
    public struct VerifyCredentialRequest: TCRequestModel {
        /// 参数集合
        public let functionArg: VerifyFunctionArg

        public init(functionArg: VerifyFunctionArg) {
            self.functionArg = functionArg
        }

        enum CodingKeys: String, CodingKey {
            case functionArg = "FunctionArg"
        }
    }

    /// VerifyCredential返回参数结构体
    public struct VerifyCredentialResponse: TCResponseModel {
        /// 是否验证成功
        public let result: Bool

        /// 验证返回码
        public let verifyCode: UInt64

        /// 验证消息
        public let verifyMessage: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case verifyCode = "VerifyCode"
            case verifyMessage = "VerifyMessage"
            case requestId = "RequestId"
        }
    }

    /// 验证凭证
    @inlinable
    public func verifyCredential(_ input: VerifyCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyCredentialResponse> {
        self.client.execute(action: "VerifyCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证凭证
    @inlinable
    public func verifyCredential(_ input: VerifyCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyCredentialResponse {
        try await self.client.execute(action: "VerifyCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证凭证
    @inlinable
    public func verifyCredential(functionArg: VerifyFunctionArg, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyCredentialResponse> {
        self.verifyCredential(.init(functionArg: functionArg), region: region, logger: logger, on: eventLoop)
    }

    /// 验证凭证
    @inlinable
    public func verifyCredential(functionArg: VerifyFunctionArg, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyCredentialResponse {
        try await self.verifyCredential(.init(functionArg: functionArg), region: region, logger: logger, on: eventLoop)
    }
}
