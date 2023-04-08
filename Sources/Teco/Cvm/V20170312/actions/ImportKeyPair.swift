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
    /// ImportKeyPair请求参数结构体
    public struct ImportKeyPairRequest: TCRequestModel {
        /// 密钥对名称，可由数字，字母和下划线组成，长度不超过25个字符。
        public let keyName: String

        /// 密钥对创建后所属的[项目](https://cloud.tencent.com/document/product/378/10861)ID。<br><br>可以通过以下方式获取项目ID：<br><li>通过[项目列表](https://console.cloud.tencent.com/project)查询项目ID。<br><li>通过调用接口 [DescribeProject](https://cloud.tencent.com/document/api/378/4400)，取返回信息中的 `projectId ` 获取项目ID。
        ///
        /// 如果是默认项目，直接填0就可以。
        public let projectId: Int64

        /// 密钥对的公钥内容，`OpenSSH RSA` 格式。
        public let publicKey: String

        /// 标签描述列表。通过指定该参数可以同时绑定标签到密钥对。
        public let tagSpecification: [TagSpecification]?

        public init(keyName: String, projectId: Int64, publicKey: String, tagSpecification: [TagSpecification]? = nil) {
            self.keyName = keyName
            self.projectId = projectId
            self.publicKey = publicKey
            self.tagSpecification = tagSpecification
        }

        enum CodingKeys: String, CodingKey {
            case keyName = "KeyName"
            case projectId = "ProjectId"
            case publicKey = "PublicKey"
            case tagSpecification = "TagSpecification"
        }
    }

    /// ImportKeyPair返回参数结构体
    public struct ImportKeyPairResponse: TCResponseModel {
        /// 密钥对ID。
        public let keyId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case requestId = "RequestId"
        }
    }

    /// 导入密钥对
    ///
    /// 本接口 (ImportKeyPair) 用于导入密钥对。
    ///
    /// * 本接口的功能是将密钥对导入到用户账户，并不会自动绑定到实例。如需绑定可以使用[AssociasteInstancesKeyPair](https://cloud.tencent.com/document/api/213/9404)接口。
    /// * 需指定密钥对名称以及该密钥对的公钥文本。
    /// * 如果用户只有私钥，可以通过 `SSL` 工具将私钥转换成公钥后再导入。
    @inlinable
    public func importKeyPair(_ input: ImportKeyPairRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportKeyPairResponse> {
        self.client.execute(action: "ImportKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入密钥对
    ///
    /// 本接口 (ImportKeyPair) 用于导入密钥对。
    ///
    /// * 本接口的功能是将密钥对导入到用户账户，并不会自动绑定到实例。如需绑定可以使用[AssociasteInstancesKeyPair](https://cloud.tencent.com/document/api/213/9404)接口。
    /// * 需指定密钥对名称以及该密钥对的公钥文本。
    /// * 如果用户只有私钥，可以通过 `SSL` 工具将私钥转换成公钥后再导入。
    @inlinable
    public func importKeyPair(_ input: ImportKeyPairRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportKeyPairResponse {
        try await self.client.execute(action: "ImportKeyPair", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入密钥对
    ///
    /// 本接口 (ImportKeyPair) 用于导入密钥对。
    ///
    /// * 本接口的功能是将密钥对导入到用户账户，并不会自动绑定到实例。如需绑定可以使用[AssociasteInstancesKeyPair](https://cloud.tencent.com/document/api/213/9404)接口。
    /// * 需指定密钥对名称以及该密钥对的公钥文本。
    /// * 如果用户只有私钥，可以通过 `SSL` 工具将私钥转换成公钥后再导入。
    @inlinable
    public func importKeyPair(keyName: String, projectId: Int64, publicKey: String, tagSpecification: [TagSpecification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportKeyPairResponse> {
        self.importKeyPair(.init(keyName: keyName, projectId: projectId, publicKey: publicKey, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }

    /// 导入密钥对
    ///
    /// 本接口 (ImportKeyPair) 用于导入密钥对。
    ///
    /// * 本接口的功能是将密钥对导入到用户账户，并不会自动绑定到实例。如需绑定可以使用[AssociasteInstancesKeyPair](https://cloud.tencent.com/document/api/213/9404)接口。
    /// * 需指定密钥对名称以及该密钥对的公钥文本。
    /// * 如果用户只有私钥，可以通过 `SSL` 工具将私钥转换成公钥后再导入。
    @inlinable
    public func importKeyPair(keyName: String, projectId: Int64, publicKey: String, tagSpecification: [TagSpecification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportKeyPairResponse {
        try await self.importKeyPair(.init(keyName: keyName, projectId: projectId, publicKey: publicKey, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }
}
