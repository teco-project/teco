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
    /// BindAcct请求参数结构体
    public struct BindAcctRequest: TCRequestModel {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String

        /// 1 – 小额转账验证
        /// 2 – 短信验证
        /// 3 - 一分钱转账验证，无需再调CheckAcct验证绑卡
        /// 4 - 银行四要素验证，无需再调CheckAcct验证绑卡
        /// 每个结算账户每天只能使用一次小额转账验证
        public let bindType: Int64

        /// 用于提现
        /// <敏感信息>加密详见[《商户端接口敏感信息加密说明》](https://cloud.tencent.com/document/product/1122/48979)
        public let settleAcctNo: String

        /// 结算账户户名
        /// <敏感信息>加密详见[《商户端接口敏感信息加密说明》](https://cloud.tencent.com/document/product/1122/48979)
        public let settleAcctName: String

        /// 1 – 本行账户
        /// 2 – 他行账户
        public let settleAcctType: Int64

        /// 证件类型，见《证件类型》表
        public let idType: String

        /// 证件号码
        /// <敏感信息>加密详见[《商户端接口敏感信息加密说明》](https://cloud.tencent.com/document/product/1122/48979)
        public let idCode: String

        /// 开户行名称
        public let acctBranchName: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String

        /// 用于短信验证
        /// BindType==2时必填
        /// <敏感信息>加密详见[《商户端接口敏感信息加密说明》](https://cloud.tencent.com/document/product/1122/48979)
        public let mobile: String?

        /// 大小额行号，超级网银行号和大小额行号
        /// 二选一
        public let cnapsBranchId: String?

        /// 超级网银行号，超级网银行号和大小额行号
        /// 二选一
        public let eiconBankBranchId: String?

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

        /// 经办人信息
        public let agencyClientInfo: AgencyClientInfo?

        public init(midasAppId: String, subAppId: String, bindType: Int64, settleAcctNo: String, settleAcctName: String, settleAcctType: Int64, idType: String, idCode: String, acctBranchName: String, midasSecretId: String, midasSignature: String, mobile: String? = nil, cnapsBranchId: String? = nil, eiconBankBranchId: String? = nil, encryptType: String? = nil, midasEnvironment: String? = nil, agencyClientInfo: AgencyClientInfo? = nil) {
            self.midasAppId = midasAppId
            self.subAppId = subAppId
            self.bindType = bindType
            self.settleAcctNo = settleAcctNo
            self.settleAcctName = settleAcctName
            self.settleAcctType = settleAcctType
            self.idType = idType
            self.idCode = idCode
            self.acctBranchName = acctBranchName
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.mobile = mobile
            self.cnapsBranchId = cnapsBranchId
            self.eiconBankBranchId = eiconBankBranchId
            self.encryptType = encryptType
            self.midasEnvironment = midasEnvironment
            self.agencyClientInfo = agencyClientInfo
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case subAppId = "SubAppId"
            case bindType = "BindType"
            case settleAcctNo = "SettleAcctNo"
            case settleAcctName = "SettleAcctName"
            case settleAcctType = "SettleAcctType"
            case idType = "IdType"
            case idCode = "IdCode"
            case acctBranchName = "AcctBranchName"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case mobile = "Mobile"
            case cnapsBranchId = "CnapsBranchId"
            case eiconBankBranchId = "EiconBankBranchId"
            case encryptType = "EncryptType"
            case midasEnvironment = "MidasEnvironment"
            case agencyClientInfo = "AgencyClientInfo"
        }
    }

    /// BindAcct返回参数结构体
    public struct BindAcctResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-绑定提现银行卡
    ///
    /// 商户绑定提现银行卡，每个商户只能绑定一张提现银行卡
    @inlinable @discardableResult
    public func bindAcct(_ input: BindAcctRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindAcctResponse> {
        self.client.execute(action: "BindAcct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-绑定提现银行卡
    ///
    /// 商户绑定提现银行卡，每个商户只能绑定一张提现银行卡
    @inlinable @discardableResult
    public func bindAcct(_ input: BindAcctRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindAcctResponse {
        try await self.client.execute(action: "BindAcct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-绑定提现银行卡
    ///
    /// 商户绑定提现银行卡，每个商户只能绑定一张提现银行卡
    @inlinable @discardableResult
    public func bindAcct(midasAppId: String, subAppId: String, bindType: Int64, settleAcctNo: String, settleAcctName: String, settleAcctType: Int64, idType: String, idCode: String, acctBranchName: String, midasSecretId: String, midasSignature: String, mobile: String? = nil, cnapsBranchId: String? = nil, eiconBankBranchId: String? = nil, encryptType: String? = nil, midasEnvironment: String? = nil, agencyClientInfo: AgencyClientInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindAcctResponse> {
        self.bindAcct(.init(midasAppId: midasAppId, subAppId: subAppId, bindType: bindType, settleAcctNo: settleAcctNo, settleAcctName: settleAcctName, settleAcctType: settleAcctType, idType: idType, idCode: idCode, acctBranchName: acctBranchName, midasSecretId: midasSecretId, midasSignature: midasSignature, mobile: mobile, cnapsBranchId: cnapsBranchId, eiconBankBranchId: eiconBankBranchId, encryptType: encryptType, midasEnvironment: midasEnvironment, agencyClientInfo: agencyClientInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-绑定提现银行卡
    ///
    /// 商户绑定提现银行卡，每个商户只能绑定一张提现银行卡
    @inlinable @discardableResult
    public func bindAcct(midasAppId: String, subAppId: String, bindType: Int64, settleAcctNo: String, settleAcctName: String, settleAcctType: Int64, idType: String, idCode: String, acctBranchName: String, midasSecretId: String, midasSignature: String, mobile: String? = nil, cnapsBranchId: String? = nil, eiconBankBranchId: String? = nil, encryptType: String? = nil, midasEnvironment: String? = nil, agencyClientInfo: AgencyClientInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindAcctResponse {
        try await self.bindAcct(.init(midasAppId: midasAppId, subAppId: subAppId, bindType: bindType, settleAcctNo: settleAcctNo, settleAcctName: settleAcctName, settleAcctType: settleAcctType, idType: idType, idCode: idCode, acctBranchName: acctBranchName, midasSecretId: midasSecretId, midasSignature: midasSignature, mobile: mobile, cnapsBranchId: cnapsBranchId, eiconBankBranchId: eiconBankBranchId, encryptType: encryptType, midasEnvironment: midasEnvironment, agencyClientInfo: agencyClientInfo), region: region, logger: logger, on: eventLoop)
    }
}
