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

extension Cpdp {
    /// QueryAcctInfo请求参数结构体
    public struct QueryAcctInfoRequest: TCRequestModel {
        /// 聚鑫平台分配的支付MidasAppId
        public let midasAppId: String

        /// 业务平台的子商户Id，唯一
        public let subMchId: String

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

        public init(midasAppId: String, subMchId: String, midasSecretId: String, midasSignature: String, encryptType: String? = nil, midasEnvironment: String? = nil) {
            self.midasAppId = midasAppId
            self.subMchId = subMchId
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.encryptType = encryptType
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case subMchId = "SubMchId"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case encryptType = "EncryptType"
            case midasEnvironment = "MidasEnvironment"
        }
    }

    /// QueryAcctInfo返回参数结构体
    public struct QueryAcctInfoResponse: TCResponseModel {
        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String

        /// 子商户名称
        public let subMchName: String

        /// 子商户类型：
        /// 个人: personal
        /// 企业：enterprise
        /// 缺省： enterprise
        public let subMchType: String

        /// 不填则默认子商户名称
        public let shortName: String

        /// 子商户地址
        public let address: String

        /// 子商户联系人子商户联系人
        /// <敏感信息>
        public let contact: String

        /// 联系人手机号
        /// <敏感信息>
        public let mobile: String

        /// 邮箱
        /// <敏感信息>
        public let email: String

        /// 子商户id
        public let subMchId: String

        /// 子账户
        public let subAcctNo: String

        /// 子商户会员类型：
        /// general:普通子账户
        /// merchant:商户子账户
        /// 缺省： general
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subMerchantMemberType: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case subMchName = "SubMchName"
            case subMchType = "SubMchType"
            case shortName = "ShortName"
            case address = "Address"
            case contact = "Contact"
            case mobile = "Mobile"
            case email = "Email"
            case subMchId = "SubMchId"
            case subAcctNo = "SubAcctNo"
            case subMerchantMemberType = "SubMerchantMemberType"
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-开户查询
    ///
    /// 聚鑫-开户信息查询
    @inlinable
    public func queryAcctInfo(_ input: QueryAcctInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryAcctInfoResponse> {
        self.client.execute(action: "QueryAcctInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-开户查询
    ///
    /// 聚鑫-开户信息查询
    @inlinable
    public func queryAcctInfo(_ input: QueryAcctInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAcctInfoResponse {
        try await self.client.execute(action: "QueryAcctInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-开户查询
    ///
    /// 聚鑫-开户信息查询
    @inlinable
    public func queryAcctInfo(midasAppId: String, subMchId: String, midasSecretId: String, midasSignature: String, encryptType: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryAcctInfoResponse> {
        let input = QueryAcctInfoRequest(midasAppId: midasAppId, subMchId: subMchId, midasSecretId: midasSecretId, midasSignature: midasSignature, encryptType: encryptType, midasEnvironment: midasEnvironment)
        return self.client.execute(action: "QueryAcctInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-开户查询
    ///
    /// 聚鑫-开户信息查询
    @inlinable
    public func queryAcctInfo(midasAppId: String, subMchId: String, midasSecretId: String, midasSignature: String, encryptType: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAcctInfoResponse {
        let input = QueryAcctInfoRequest(midasAppId: midasAppId, subMchId: subMchId, midasSecretId: midasSecretId, midasSignature: midasSignature, encryptType: encryptType, midasEnvironment: midasEnvironment)
        return try await self.client.execute(action: "QueryAcctInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
