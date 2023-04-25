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

extension Ssm {
    /// GetSSHKeyPairValue请求参数结构体
    public struct GetSSHKeyPairValueRequest: TCRequestModel {
        /// 凭据名称，此凭据只能为SSH密钥对凭据类型。
        public let secretName: String?

        /// 密钥对ID，是云服务器中密钥对的唯一标识。
        public let sshKeyId: String?

        public init(secretName: String? = nil, sshKeyId: String? = nil) {
            self.secretName = secretName
            self.sshKeyId = sshKeyId
        }

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case sshKeyId = "SSHKeyId"
        }
    }

    /// GetSSHKeyPairValue返回参数结构体
    public struct GetSSHKeyPairValueResponse: TCResponseModel {
        /// SSH密钥对ID。
        public let sshKeyID: String

        /// 公钥明文，使用base64编码。
        public let publicKey: String

        /// 私钥明文，使用base64编码
        public let privateKey: String

        /// 此密钥对所属的项目ID。
        public let projectID: Int64

        /// SSH密钥对的描述信息。
        /// 用户可以在CVM侧控制台对密钥对的描述信息进行修改。
        public let sshKeyDescription: String

        /// SSH密钥对的名称。
        /// 用户可以在CVM侧控制台对密钥对的名称进行修改。
        public let sshKeyName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sshKeyID = "SSHKeyID"
            case publicKey = "PublicKey"
            case privateKey = "PrivateKey"
            case projectID = "ProjectID"
            case sshKeyDescription = "SSHKeyDescription"
            case sshKeyName = "SSHKeyName"
            case requestId = "RequestId"
        }
    }

    /// 获取SSH密钥对凭据明文
    ///
    /// 获取SSH密钥对凭据明文信息。
    @inlinable
    public func getSSHKeyPairValue(_ input: GetSSHKeyPairValueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSSHKeyPairValueResponse> {
        self.client.execute(action: "GetSSHKeyPairValue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取SSH密钥对凭据明文
    ///
    /// 获取SSH密钥对凭据明文信息。
    @inlinable
    public func getSSHKeyPairValue(_ input: GetSSHKeyPairValueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSSHKeyPairValueResponse {
        try await self.client.execute(action: "GetSSHKeyPairValue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取SSH密钥对凭据明文
    ///
    /// 获取SSH密钥对凭据明文信息。
    @inlinable
    public func getSSHKeyPairValue(secretName: String? = nil, sshKeyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSSHKeyPairValueResponse> {
        self.getSSHKeyPairValue(.init(secretName: secretName, sshKeyId: sshKeyId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取SSH密钥对凭据明文
    ///
    /// 获取SSH密钥对凭据明文信息。
    @inlinable
    public func getSSHKeyPairValue(secretName: String? = nil, sshKeyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSSHKeyPairValueResponse {
        try await self.getSSHKeyPairValue(.init(secretName: secretName, sshKeyId: sshKeyId), region: region, logger: logger, on: eventLoop)
    }
}
