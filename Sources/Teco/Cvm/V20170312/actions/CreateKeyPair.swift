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

extension Cvm {
    /// CreateKeyPair请求参数结构体
    public struct CreateKeyPairRequest: TCRequestModel {
        /// 密钥对名称，可由数字，字母和下划线组成，长度不超过25个字符。
        public let keyName: String

        /// 密钥对创建后所属的项目ID。
        /// 可以通过以下方式获取项目ID：
        /// <li>通过项目列表查询项目ID。
        /// <li>通过调用接口DescribeProject，取返回信息中的`projectId `获取项目ID。
        public let projectId: Int64

        /// 标签描述列表。通过指定该参数可以同时绑定标签到密钥对。
        public let tagSpecification: [TagSpecification]?

        public init(keyName: String, projectId: Int64, tagSpecification: [TagSpecification]? = nil) {
            self.keyName = keyName
            self.projectId = projectId
            self.tagSpecification = tagSpecification
        }

        enum CodingKeys: String, CodingKey {
            case keyName = "KeyName"
            case projectId = "ProjectId"
            case tagSpecification = "TagSpecification"
        }
    }

    /// CreateKeyPair返回参数结构体
    public struct CreateKeyPairResponse: TCResponseModel {
        /// 密钥对信息。
        public let keyPair: KeyPair?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyPair = "KeyPair"
            case requestId = "RequestId"
        }
    }

    /// 创建密钥对
    ///
    /// 本接口 (CreateKeyPair) 用于创建一个 `OpenSSH RSA` 密钥对，可以用于登录 `Linux` 实例。
    ///
    /// * 开发者只需指定密钥对名称，即可由系统自动创建密钥对，并返回所生成的密钥对的 `ID` 及其公钥、私钥的内容。
    /// * 密钥对名称不能和已经存在的密钥对的名称重复。
    /// * 私钥的内容可以保存到文件中作为 `SSH` 的一种认证方式。
    /// * 腾讯云不会保存用户的私钥，请妥善保管。
    @inlinable
    public func createKeyPair(_ input: CreateKeyPairRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKeyPairResponse> {
        self.client.execute(action: "CreateKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建密钥对
    ///
    /// 本接口 (CreateKeyPair) 用于创建一个 `OpenSSH RSA` 密钥对，可以用于登录 `Linux` 实例。
    ///
    /// * 开发者只需指定密钥对名称，即可由系统自动创建密钥对，并返回所生成的密钥对的 `ID` 及其公钥、私钥的内容。
    /// * 密钥对名称不能和已经存在的密钥对的名称重复。
    /// * 私钥的内容可以保存到文件中作为 `SSH` 的一种认证方式。
    /// * 腾讯云不会保存用户的私钥，请妥善保管。
    @inlinable
    public func createKeyPair(_ input: CreateKeyPairRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKeyPairResponse {
        try await self.client.execute(action: "CreateKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建密钥对
    ///
    /// 本接口 (CreateKeyPair) 用于创建一个 `OpenSSH RSA` 密钥对，可以用于登录 `Linux` 实例。
    ///
    /// * 开发者只需指定密钥对名称，即可由系统自动创建密钥对，并返回所生成的密钥对的 `ID` 及其公钥、私钥的内容。
    /// * 密钥对名称不能和已经存在的密钥对的名称重复。
    /// * 私钥的内容可以保存到文件中作为 `SSH` 的一种认证方式。
    /// * 腾讯云不会保存用户的私钥，请妥善保管。
    @inlinable
    public func createKeyPair(keyName: String, projectId: Int64, tagSpecification: [TagSpecification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateKeyPairResponse> {
        self.createKeyPair(CreateKeyPairRequest(keyName: keyName, projectId: projectId, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }

    /// 创建密钥对
    ///
    /// 本接口 (CreateKeyPair) 用于创建一个 `OpenSSH RSA` 密钥对，可以用于登录 `Linux` 实例。
    ///
    /// * 开发者只需指定密钥对名称，即可由系统自动创建密钥对，并返回所生成的密钥对的 `ID` 及其公钥、私钥的内容。
    /// * 密钥对名称不能和已经存在的密钥对的名称重复。
    /// * 私钥的内容可以保存到文件中作为 `SSH` 的一种认证方式。
    /// * 腾讯云不会保存用户的私钥，请妥善保管。
    @inlinable
    public func createKeyPair(keyName: String, projectId: Int64, tagSpecification: [TagSpecification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKeyPairResponse {
        try await self.createKeyPair(CreateKeyPairRequest(keyName: keyName, projectId: projectId, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }
}
