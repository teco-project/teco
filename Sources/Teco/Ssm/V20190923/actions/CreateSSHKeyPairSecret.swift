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
    /// CreateSSHKeyPairSecret请求参数结构体
    public struct CreateSSHKeyPairSecretRequest: TCRequest {
        /// 凭据名称，同一region内不可重复，最长128字节，使用字母、数字或者 - _ 的组合，第一个字符必须为字母或者数字。
        public let secretName: String

        /// 密钥对创建后所属的项目ID。
        public let projectId: Int64

        /// 描述信息，用于详细描述用途等，最大支持2048字节。
        public let description: String?

        /// 指定对凭据进行加密的KMS CMK。
        /// 如果为空则表示使用Secrets Manager为您默认创建的CMK进行加密。
        /// 您也可以指定在同region 下自行创建的KMS CMK进行加密。
        public let kmsKeyId: String?

        /// 标签列表。
        public let tags: [Tag]?

        /// 用户自定义输入的SSH密钥对的名称，可由数字，字母和下划线组成，只能以数字和字母开头，长度不超过25个字符。
        public let sshKeyName: String?

        public init(secretName: String, projectId: Int64, description: String? = nil, kmsKeyId: String? = nil, tags: [Tag]? = nil, sshKeyName: String? = nil) {
            self.secretName = secretName
            self.projectId = projectId
            self.description = description
            self.kmsKeyId = kmsKeyId
            self.tags = tags
            self.sshKeyName = sshKeyName
        }

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case projectId = "ProjectId"
            case description = "Description"
            case kmsKeyId = "KmsKeyId"
            case tags = "Tags"
            case sshKeyName = "SSHKeyName"
        }
    }

    /// CreateSSHKeyPairSecret返回参数结构体
    public struct CreateSSHKeyPairSecretResponse: TCResponse {
        /// 创建的凭据名称。
        public let secretName: String

        /// 创建的SSH密钥ID。
        public let sshKeyID: String

        /// 创建的SSH密钥名称。
        public let sshKeyName: String

        /// 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagCode: UInt64

        /// 标签操作的返回信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case sshKeyID = "SSHKeyID"
            case sshKeyName = "SSHKeyName"
            case tagCode = "TagCode"
            case tagMsg = "TagMsg"
            case requestId = "RequestId"
        }
    }

    /// 创建SSH密钥对凭据
    ///
    /// 创建用于托管SSH密钥对的凭据
    @inlinable
    public func createSSHKeyPairSecret(_ input: CreateSSHKeyPairSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSSHKeyPairSecretResponse> {
        self.client.execute(action: "CreateSSHKeyPairSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建SSH密钥对凭据
    ///
    /// 创建用于托管SSH密钥对的凭据
    @inlinable
    public func createSSHKeyPairSecret(_ input: CreateSSHKeyPairSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSSHKeyPairSecretResponse {
        try await self.client.execute(action: "CreateSSHKeyPairSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建SSH密钥对凭据
    ///
    /// 创建用于托管SSH密钥对的凭据
    @inlinable
    public func createSSHKeyPairSecret(secretName: String, projectId: Int64, description: String? = nil, kmsKeyId: String? = nil, tags: [Tag]? = nil, sshKeyName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSSHKeyPairSecretResponse> {
        self.createSSHKeyPairSecret(.init(secretName: secretName, projectId: projectId, description: description, kmsKeyId: kmsKeyId, tags: tags, sshKeyName: sshKeyName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建SSH密钥对凭据
    ///
    /// 创建用于托管SSH密钥对的凭据
    @inlinable
    public func createSSHKeyPairSecret(secretName: String, projectId: Int64, description: String? = nil, kmsKeyId: String? = nil, tags: [Tag]? = nil, sshKeyName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSSHKeyPairSecretResponse {
        try await self.createSSHKeyPairSecret(.init(secretName: secretName, projectId: projectId, description: description, kmsKeyId: kmsKeyId, tags: tags, sshKeyName: sshKeyName), region: region, logger: logger, on: eventLoop)
    }
}
