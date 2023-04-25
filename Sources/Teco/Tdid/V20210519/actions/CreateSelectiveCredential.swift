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

extension Tdid {
    /// CreateSelectiveCredential请求参数结构体
    public struct CreateSelectiveCredentialRequest: TCRequestModel {
        /// 参数集合
        public let functionArg: VerifyFunctionArg

        /// 批露策略id
        public let policyId: UInt64

        public init(functionArg: VerifyFunctionArg, policyId: UInt64) {
            self.functionArg = functionArg
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case functionArg = "FunctionArg"
            case policyId = "PolicyId"
        }
    }

    /// CreateSelectiveCredential返回参数结构体
    public struct CreateSelectiveCredentialResponse: TCResponseModel {
        /// 凭证字符串
        public let credentialData: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case credentialData = "CredentialData"
            case requestId = "RequestId"
        }
    }

    /// 创建选择性批露凭证
    @inlinable
    public func createSelectiveCredential(_ input: CreateSelectiveCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSelectiveCredentialResponse> {
        self.client.execute(action: "CreateSelectiveCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建选择性批露凭证
    @inlinable
    public func createSelectiveCredential(_ input: CreateSelectiveCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSelectiveCredentialResponse {
        try await self.client.execute(action: "CreateSelectiveCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建选择性批露凭证
    @inlinable
    public func createSelectiveCredential(functionArg: VerifyFunctionArg, policyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSelectiveCredentialResponse> {
        self.createSelectiveCredential(.init(functionArg: functionArg, policyId: policyId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建选择性批露凭证
    @inlinable
    public func createSelectiveCredential(functionArg: VerifyFunctionArg, policyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSelectiveCredentialResponse {
        try await self.createSelectiveCredential(.init(functionArg: functionArg, policyId: policyId), region: region, logger: logger, on: eventLoop)
    }
}
