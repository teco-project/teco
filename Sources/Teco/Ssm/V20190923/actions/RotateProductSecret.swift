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

extension Ssm {
    /// RotateProductSecret请求参数结构体
    public struct RotateProductSecretRequest: TCRequestModel {
        /// 需要轮转的凭据名。
        public let secretName: String

        public init(secretName: String) {
            self.secretName = secretName
        }

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
        }
    }

    /// RotateProductSecret返回参数结构体
    public struct RotateProductSecretResponse: TCResponseModel {
        /// 当凭据类型为云产品凭据时（即SecretType为1，如MySQL、Tdsql等托管凭据）此字段有效，返回轮转异步任务ID号。
        public let flowID: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowID = "FlowID"
            case requestId = "RequestId"
        }
    }

    /// 轮转云产品凭据
    ///
    /// 轮转云产品凭据或云API密钥对凭据。
    /// 该接口仅适用于处于Enabled状态的云产品凭据或处于Enable状态的云API密钥对凭据，对于其他状态的云产品凭据或云API密钥对凭据或用户自定义凭据不适用。
    @inlinable
    public func rotateProductSecret(_ input: RotateProductSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RotateProductSecretResponse> {
        self.client.execute(action: "RotateProductSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 轮转云产品凭据
    ///
    /// 轮转云产品凭据或云API密钥对凭据。
    /// 该接口仅适用于处于Enabled状态的云产品凭据或处于Enable状态的云API密钥对凭据，对于其他状态的云产品凭据或云API密钥对凭据或用户自定义凭据不适用。
    @inlinable
    public func rotateProductSecret(_ input: RotateProductSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RotateProductSecretResponse {
        try await self.client.execute(action: "RotateProductSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 轮转云产品凭据
    ///
    /// 轮转云产品凭据或云API密钥对凭据。
    /// 该接口仅适用于处于Enabled状态的云产品凭据或处于Enable状态的云API密钥对凭据，对于其他状态的云产品凭据或云API密钥对凭据或用户自定义凭据不适用。
    @inlinable
    public func rotateProductSecret(secretName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RotateProductSecretResponse> {
        self.rotateProductSecret(RotateProductSecretRequest(secretName: secretName), region: region, logger: logger, on: eventLoop)
    }

    /// 轮转云产品凭据
    ///
    /// 轮转云产品凭据或云API密钥对凭据。
    /// 该接口仅适用于处于Enabled状态的云产品凭据或处于Enable状态的云API密钥对凭据，对于其他状态的云产品凭据或云API密钥对凭据或用户自定义凭据不适用。
    @inlinable
    public func rotateProductSecret(secretName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RotateProductSecretResponse {
        try await self.rotateProductSecret(RotateProductSecretRequest(secretName: secretName), region: region, logger: logger, on: eventLoop)
    }
}
