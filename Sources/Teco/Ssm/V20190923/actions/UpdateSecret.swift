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

extension Ssm {
    /// UpdateSecret请求参数结构体
    public struct UpdateSecretRequest: TCRequestModel {
        /// 指定需要更新凭据内容的名称。
        public let secretName: String

        /// 指定需要更新凭据内容的版本号。
        public let versionId: String

        /// 新的凭据内容为二进制的场景使用该字段，并使用base64进行编码。
        /// SecretBinary 和 SecretString 只能一个不为空。
        public let secretBinary: String?

        /// 新的凭据内容为文本的场景使用该字段，不需要base64编码SecretBinary 和 SecretString 只能一个不为空。
        public let secretString: String?

        public init(secretName: String, versionId: String, secretBinary: String? = nil, secretString: String? = nil) {
            self.secretName = secretName
            self.versionId = versionId
            self.secretBinary = secretBinary
            self.secretString = secretString
        }

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case versionId = "VersionId"
            case secretBinary = "SecretBinary"
            case secretString = "SecretString"
        }
    }

    /// UpdateSecret返回参数结构体
    public struct UpdateSecretResponse: TCResponseModel {
        /// 凭据名称。
        public let secretName: String

        /// 凭据版本号。
        public let versionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case versionId = "VersionId"
            case requestId = "RequestId"
        }
    }

    /// 更新凭据内容
    ///
    /// 该接口用于更新指定凭据名称和版本号的内容，调用该接口会对新的凭据内容加密后覆盖旧的内容。仅允许更新Enabled 和 Disabled 状态的凭据。
    /// 本接口仅适用于用户自定义凭据，不能对云产品凭据操作。
    @inlinable
    public func updateSecret(_ input: UpdateSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSecretResponse> {
        self.client.execute(action: "UpdateSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新凭据内容
    ///
    /// 该接口用于更新指定凭据名称和版本号的内容，调用该接口会对新的凭据内容加密后覆盖旧的内容。仅允许更新Enabled 和 Disabled 状态的凭据。
    /// 本接口仅适用于用户自定义凭据，不能对云产品凭据操作。
    @inlinable
    public func updateSecret(_ input: UpdateSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSecretResponse {
        try await self.client.execute(action: "UpdateSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新凭据内容
    ///
    /// 该接口用于更新指定凭据名称和版本号的内容，调用该接口会对新的凭据内容加密后覆盖旧的内容。仅允许更新Enabled 和 Disabled 状态的凭据。
    /// 本接口仅适用于用户自定义凭据，不能对云产品凭据操作。
    @inlinable
    public func updateSecret(secretName: String, versionId: String, secretBinary: String? = nil, secretString: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSecretResponse> {
        self.updateSecret(UpdateSecretRequest(secretName: secretName, versionId: versionId, secretBinary: secretBinary, secretString: secretString), region: region, logger: logger, on: eventLoop)
    }

    /// 更新凭据内容
    ///
    /// 该接口用于更新指定凭据名称和版本号的内容，调用该接口会对新的凭据内容加密后覆盖旧的内容。仅允许更新Enabled 和 Disabled 状态的凭据。
    /// 本接口仅适用于用户自定义凭据，不能对云产品凭据操作。
    @inlinable
    public func updateSecret(secretName: String, versionId: String, secretBinary: String? = nil, secretString: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSecretResponse {
        try await self.updateSecret(UpdateSecretRequest(secretName: secretName, versionId: versionId, secretBinary: secretBinary, secretString: secretString), region: region, logger: logger, on: eventLoop)
    }
}
