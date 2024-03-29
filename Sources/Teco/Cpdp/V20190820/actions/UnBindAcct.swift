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

extension Cpdp {
    /// UnBindAcct请求参数结构体
    public struct UnBindAcctRequest: TCRequest {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String

        /// 用于提现
        /// <敏感信息>加密详见[《商户端接口敏感信息加密说明》](https://cloud.tencent.com/document/product/1122/48979)
        public let settleAcctNo: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String

        /// 敏感信息加密类型:
        /// RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        /// AES: aes对称加密，使用AES256-CBC-PCKS7padding
        /// 缺省: RSA
        public let encryptType: String?

        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let midasEnvironment: String?

        public init(midasAppId: String, subAppId: String, settleAcctNo: String, midasSecretId: String, midasSignature: String, encryptType: String? = nil, midasEnvironment: String? = nil) {
            self.midasAppId = midasAppId
            self.subAppId = subAppId
            self.settleAcctNo = settleAcctNo
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.encryptType = encryptType
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case subAppId = "SubAppId"
            case settleAcctNo = "SettleAcctNo"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case encryptType = "EncryptType"
            case midasEnvironment = "MidasEnvironment"
        }
    }

    /// UnBindAcct返回参数结构体
    public struct UnBindAcctResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-解绑银行卡
    ///
    /// 商户解除绑定的提现银行卡
    @inlinable @discardableResult
    public func unBindAcct(_ input: UnBindAcctRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindAcctResponse> {
        self.client.execute(action: "UnBindAcct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-解绑银行卡
    ///
    /// 商户解除绑定的提现银行卡
    @inlinable @discardableResult
    public func unBindAcct(_ input: UnBindAcctRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindAcctResponse {
        try await self.client.execute(action: "UnBindAcct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-解绑银行卡
    ///
    /// 商户解除绑定的提现银行卡
    @inlinable @discardableResult
    public func unBindAcct(midasAppId: String, subAppId: String, settleAcctNo: String, midasSecretId: String, midasSignature: String, encryptType: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindAcctResponse> {
        self.unBindAcct(.init(midasAppId: midasAppId, subAppId: subAppId, settleAcctNo: settleAcctNo, midasSecretId: midasSecretId, midasSignature: midasSignature, encryptType: encryptType, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-解绑银行卡
    ///
    /// 商户解除绑定的提现银行卡
    @inlinable @discardableResult
    public func unBindAcct(midasAppId: String, subAppId: String, settleAcctNo: String, midasSecretId: String, midasSignature: String, encryptType: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindAcctResponse {
        try await self.unBindAcct(.init(midasAppId: midasAppId, subAppId: subAppId, settleAcctNo: settleAcctNo, midasSecretId: midasSecretId, midasSignature: midasSignature, encryptType: encryptType, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }
}
