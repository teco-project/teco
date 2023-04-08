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

extension Ssm {
    /// PutSecretValue请求参数结构体
    public struct PutSecretValueRequest: TCRequestModel {
        /// 指定需要增加版本的凭据名称。
        public let secretName: String

        /// 指定新增加的版本号，最长64 字节，使用字母、数字或者 - _ . 的组合并且以字母或数字开头。
        public let versionId: String

        /// 二进制凭据信息，使用base64编码。
        /// SecretBinary 和 SecretString 必须且只能设置一个。
        public let secretBinary: String?

        /// 文本类型凭据信息明文（不需要进行base64编码），SecretBinary 和 SecretString 必须且只能设置一个。
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

    /// PutSecretValue返回参数结构体
    public struct PutSecretValueResponse: TCResponseModel {
        /// 凭据名称。
        public let secretName: String

        /// 新增加的版本号。
        public let versionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case versionId = "VersionId"
            case requestId = "RequestId"
        }
    }

    /// 增加新版本凭据
    ///
    /// 该接口在指定名称的凭据下增加新版本的凭据内容，一个凭据下最多可以支持10个版本。只能对处于Enabled 和 Disabled 状态的凭据添加新的版本。
    /// 本接口仅适用于用户自定义凭据，对云产品凭据不能操作。
    @inlinable
    public func putSecretValue(_ input: PutSecretValueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutSecretValueResponse> {
        self.client.execute(action: "PutSecretValue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增加新版本凭据
    ///
    /// 该接口在指定名称的凭据下增加新版本的凭据内容，一个凭据下最多可以支持10个版本。只能对处于Enabled 和 Disabled 状态的凭据添加新的版本。
    /// 本接口仅适用于用户自定义凭据，对云产品凭据不能操作。
    @inlinable
    public func putSecretValue(_ input: PutSecretValueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutSecretValueResponse {
        try await self.client.execute(action: "PutSecretValue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增加新版本凭据
    ///
    /// 该接口在指定名称的凭据下增加新版本的凭据内容，一个凭据下最多可以支持10个版本。只能对处于Enabled 和 Disabled 状态的凭据添加新的版本。
    /// 本接口仅适用于用户自定义凭据，对云产品凭据不能操作。
    @inlinable
    public func putSecretValue(secretName: String, versionId: String, secretBinary: String? = nil, secretString: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutSecretValueResponse> {
        self.putSecretValue(.init(secretName: secretName, versionId: versionId, secretBinary: secretBinary, secretString: secretString), region: region, logger: logger, on: eventLoop)
    }

    /// 增加新版本凭据
    ///
    /// 该接口在指定名称的凭据下增加新版本的凭据内容，一个凭据下最多可以支持10个版本。只能对处于Enabled 和 Disabled 状态的凭据添加新的版本。
    /// 本接口仅适用于用户自定义凭据，对云产品凭据不能操作。
    @inlinable
    public func putSecretValue(secretName: String, versionId: String, secretBinary: String? = nil, secretString: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutSecretValueResponse {
        try await self.putSecretValue(.init(secretName: secretName, versionId: versionId, secretBinary: secretBinary, secretString: secretString), region: region, logger: logger, on: eventLoop)
    }
}
