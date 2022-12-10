//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cpdp {
    /// 聚鑫-查询子账户绑定银行卡
    ///
    /// 聚鑫-查询子账户绑定银行卡
    @inlinable
    public func queryAcctBinding(_ input: QueryAcctBindingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryAcctBindingResponse > {
        self.client.execute(action: "QueryAcctBinding", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 聚鑫-查询子账户绑定银行卡
    ///
    /// 聚鑫-查询子账户绑定银行卡
    @inlinable
    public func queryAcctBinding(_ input: QueryAcctBindingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAcctBindingResponse {
        try await self.client.execute(action: "QueryAcctBinding", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryAcctBinding请求参数结构体
    public struct QueryAcctBindingRequest: TCRequestModel {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String
        
        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String
        
        /// 由平台客服提供的计费密钥Id
        public let midasSecretId: String
        
        /// 计费签名
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
        
        public init (midasAppId: String, subAppId: String, midasSecretId: String, midasSignature: String, encryptType: String?, midasEnvironment: String?) {
            self.midasAppId = midasAppId
            self.subAppId = subAppId
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.encryptType = encryptType
            self.midasEnvironment = midasEnvironment
        }
        
        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case subAppId = "SubAppId"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case encryptType = "EncryptType"
            case midasEnvironment = "MidasEnvironment"
        }
    }
    
    /// QueryAcctBinding返回参数结构体
    public struct QueryAcctBindingResponse: TCResponseModel {
        /// 总行数
        public let totalCount: Int64
        
        /// 银行卡信息列表
        public let bankCardItems: [BankCardItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case bankCardItems = "BankCardItems"
            case requestId = "RequestId"
        }
    }
}