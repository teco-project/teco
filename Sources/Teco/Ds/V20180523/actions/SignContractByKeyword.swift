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

extension Ds {
    /// SignContractByKeyword请求参数结构体
    public struct SignContractByKeywordRequest: TCRequestModel {
        /// 模块名ContractMng
        public let module: String

        /// 操作名SignContractByKeyword
        public let operation: String

        /// 合同ID
        public let contractResId: String

        /// 账户ID
        public let accountResId: String

        /// 签署关键字，偏移坐标原点为关键字中心
        public let signKeyword: SignKeyword

        /// 授权时间（由平台自动填充）
        public let authorizationTime: String?

        /// 授权IP地址（由平台自动填充）
        public let position: String?

        /// 签章ID
        public let sealResId: String?

        /// 选用证书类型：1  表示RSA证书， 2 表示国密证书， 参数不传时默认为1
        public let certType: Int64?

        /// 签名图片，base64编码
        public let imageData: String?

        public init(module: String, operation: String, contractResId: String, accountResId: String, signKeyword: SignKeyword, authorizationTime: String? = nil, position: String? = nil, sealResId: String? = nil, certType: Int64? = nil, imageData: String? = nil) {
            self.module = module
            self.operation = operation
            self.contractResId = contractResId
            self.accountResId = accountResId
            self.signKeyword = signKeyword
            self.authorizationTime = authorizationTime
            self.position = position
            self.sealResId = sealResId
            self.certType = certType
            self.imageData = imageData
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case contractResId = "ContractResId"
            case accountResId = "AccountResId"
            case signKeyword = "SignKeyword"
            case authorizationTime = "AuthorizationTime"
            case position = "Position"
            case sealResId = "SealResId"
            case certType = "CertType"
            case imageData = "ImageData"
        }
    }

    /// SignContractByKeyword返回参数结构体
    public struct SignContractByKeywordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 按关键字签署合同
    ///
    /// 此接口适用于：客户平台在创建好合同后，由合同签署方对创建的合同内容进行确认，无误后再进行签署。客户平台使用该接口对PDF合同文档按照关键字和坐标进行签署。
    @inlinable @discardableResult
    public func signContractByKeyword(_ input: SignContractByKeywordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SignContractByKeywordResponse> {
        self.client.execute(action: "SignContractByKeyword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按关键字签署合同
    ///
    /// 此接口适用于：客户平台在创建好合同后，由合同签署方对创建的合同内容进行确认，无误后再进行签署。客户平台使用该接口对PDF合同文档按照关键字和坐标进行签署。
    @inlinable @discardableResult
    public func signContractByKeyword(_ input: SignContractByKeywordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SignContractByKeywordResponse {
        try await self.client.execute(action: "SignContractByKeyword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按关键字签署合同
    ///
    /// 此接口适用于：客户平台在创建好合同后，由合同签署方对创建的合同内容进行确认，无误后再进行签署。客户平台使用该接口对PDF合同文档按照关键字和坐标进行签署。
    @inlinable @discardableResult
    public func signContractByKeyword(module: String, operation: String, contractResId: String, accountResId: String, signKeyword: SignKeyword, authorizationTime: String? = nil, position: String? = nil, sealResId: String? = nil, certType: Int64? = nil, imageData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SignContractByKeywordResponse> {
        self.signContractByKeyword(.init(module: module, operation: operation, contractResId: contractResId, accountResId: accountResId, signKeyword: signKeyword, authorizationTime: authorizationTime, position: position, sealResId: sealResId, certType: certType, imageData: imageData), region: region, logger: logger, on: eventLoop)
    }

    /// 按关键字签署合同
    ///
    /// 此接口适用于：客户平台在创建好合同后，由合同签署方对创建的合同内容进行确认，无误后再进行签署。客户平台使用该接口对PDF合同文档按照关键字和坐标进行签署。
    @inlinable @discardableResult
    public func signContractByKeyword(module: String, operation: String, contractResId: String, accountResId: String, signKeyword: SignKeyword, authorizationTime: String? = nil, position: String? = nil, sealResId: String? = nil, certType: Int64? = nil, imageData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SignContractByKeywordResponse {
        try await self.signContractByKeyword(.init(module: module, operation: operation, contractResId: contractResId, accountResId: accountResId, signKeyword: signKeyword, authorizationTime: authorizationTime, position: position, sealResId: sealResId, certType: certType, imageData: imageData), region: region, logger: logger, on: eventLoop)
    }
}
