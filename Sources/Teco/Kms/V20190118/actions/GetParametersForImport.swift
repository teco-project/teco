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

import TecoCore

extension Kms {
    /// GetParametersForImport请求参数结构体
    public struct GetParametersForImportRequest: TCRequestModel {
        /// CMK的唯一标识，获取密钥参数的CMK必须是EXTERNAL类型，即在CreateKey时指定Type=2 类型的CMK。
        public let keyId: String

        /// 指定加密密钥材料的算法，目前支持RSAES_PKCS1_V1_5、RSAES_OAEP_SHA_1、RSAES_OAEP_SHA_256
        public let wrappingAlgorithm: String

        /// 指定加密密钥材料的类型，目前只支持RSA_2048
        public let wrappingKeySpec: String

        public init(keyId: String, wrappingAlgorithm: String, wrappingKeySpec: String) {
            self.keyId = keyId
            self.wrappingAlgorithm = wrappingAlgorithm
            self.wrappingKeySpec = wrappingKeySpec
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case wrappingAlgorithm = "WrappingAlgorithm"
            case wrappingKeySpec = "WrappingKeySpec"
        }
    }

    /// GetParametersForImport返回参数结构体
    public struct GetParametersForImportResponse: TCResponseModel {
        /// CMK的唯一标识，用于指定目标导入密钥材料的CMK。
        public let keyId: String

        /// 导入密钥材料需要的token，用于作为 ImportKeyMaterial 的参数。
        public let importToken: String

        /// 用于加密密钥材料的RSA公钥，base64编码。使用PublicKey base64解码后的公钥将导入密钥进行加密后作为 ImportKeyMaterial 的参数。
        public let publicKey: String

        /// 该导出token和公钥的有效期，超过该时间后无法导入，需要重新调用GetParametersForImport获取。
        public let parametersValidTo: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case importToken = "ImportToken"
            case publicKey = "PublicKey"
            case parametersValidTo = "ParametersValidTo"
            case requestId = "RequestId"
        }
    }

    /// 获取导入主密钥（CMK）材料的参数
    ///
    /// 获取导入主密钥（CMK）材料的参数，返回的Token作为执行ImportKeyMaterial的参数之一，返回的PublicKey用于对自主导入密钥材料进行加密。返回的Token和PublicKey 24小时后失效，失效后如需重新导入，需要再次调用该接口获取新的Token和PublicKey。
    @inlinable
    public func getParametersForImport(_ input: GetParametersForImportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetParametersForImportResponse> {
        self.client.execute(action: "GetParametersForImport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取导入主密钥（CMK）材料的参数
    ///
    /// 获取导入主密钥（CMK）材料的参数，返回的Token作为执行ImportKeyMaterial的参数之一，返回的PublicKey用于对自主导入密钥材料进行加密。返回的Token和PublicKey 24小时后失效，失效后如需重新导入，需要再次调用该接口获取新的Token和PublicKey。
    @inlinable
    public func getParametersForImport(_ input: GetParametersForImportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetParametersForImportResponse {
        try await self.client.execute(action: "GetParametersForImport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取导入主密钥（CMK）材料的参数
    ///
    /// 获取导入主密钥（CMK）材料的参数，返回的Token作为执行ImportKeyMaterial的参数之一，返回的PublicKey用于对自主导入密钥材料进行加密。返回的Token和PublicKey 24小时后失效，失效后如需重新导入，需要再次调用该接口获取新的Token和PublicKey。
    @inlinable
    public func getParametersForImport(keyId: String, wrappingAlgorithm: String, wrappingKeySpec: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetParametersForImportResponse> {
        self.getParametersForImport(.init(keyId: keyId, wrappingAlgorithm: wrappingAlgorithm, wrappingKeySpec: wrappingKeySpec), region: region, logger: logger, on: eventLoop)
    }

    /// 获取导入主密钥（CMK）材料的参数
    ///
    /// 获取导入主密钥（CMK）材料的参数，返回的Token作为执行ImportKeyMaterial的参数之一，返回的PublicKey用于对自主导入密钥材料进行加密。返回的Token和PublicKey 24小时后失效，失效后如需重新导入，需要再次调用该接口获取新的Token和PublicKey。
    @inlinable
    public func getParametersForImport(keyId: String, wrappingAlgorithm: String, wrappingKeySpec: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetParametersForImportResponse {
        try await self.getParametersForImport(.init(keyId: keyId, wrappingAlgorithm: wrappingAlgorithm, wrappingKeySpec: wrappingKeySpec), region: region, logger: logger, on: eventLoop)
    }
}
