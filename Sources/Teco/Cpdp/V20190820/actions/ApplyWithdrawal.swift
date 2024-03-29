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
    /// ApplyWithdrawal请求参数结构体
    public struct ApplyWithdrawalRequest: TCRequest {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String

        /// 用于提现
        /// <敏感信息>加密详见[《商户端接口敏感信息加密说明》](https://cloud.tencent.com/document/product/1122/48979)
        public let settleAcctNo: String

        /// 结算账户户名
        /// <敏感信息>加密详见[《商户端接口敏感信息加密说明》](https://cloud.tencent.com/document/product/1122/48979)
        public let settleAcctName: String

        /// 币种 RMB
        public let currencyType: String

        /// 单位，1：元，2：角，3：分
        public let currencyUnit: Int64

        /// 金额
        public let currencyAmt: String

        /// 交易网名称
        public let tranWebName: String

        /// 会员证件类型
        public let idType: String

        /// 会员证件号码
        /// <敏感信息>加密详见[《商户端接口敏感信息加密说明》](https://cloud.tencent.com/document/product/1122/48979)
        public let idCode: String

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

        /// 手续费金额
        public let commissionAmount: String?

        /// 提现单号，长度32字节
        public let withdrawOrderId: String?

        public init(midasAppId: String, subAppId: String, settleAcctNo: String, settleAcctName: String, currencyType: String, currencyUnit: Int64, currencyAmt: String, tranWebName: String, idType: String, idCode: String, midasSecretId: String, midasSignature: String, encryptType: String? = nil, midasEnvironment: String? = nil, commissionAmount: String? = nil, withdrawOrderId: String? = nil) {
            self.midasAppId = midasAppId
            self.subAppId = subAppId
            self.settleAcctNo = settleAcctNo
            self.settleAcctName = settleAcctName
            self.currencyType = currencyType
            self.currencyUnit = currencyUnit
            self.currencyAmt = currencyAmt
            self.tranWebName = tranWebName
            self.idType = idType
            self.idCode = idCode
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.encryptType = encryptType
            self.midasEnvironment = midasEnvironment
            self.commissionAmount = commissionAmount
            self.withdrawOrderId = withdrawOrderId
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case subAppId = "SubAppId"
            case settleAcctNo = "SettleAcctNo"
            case settleAcctName = "SettleAcctName"
            case currencyType = "CurrencyType"
            case currencyUnit = "CurrencyUnit"
            case currencyAmt = "CurrencyAmt"
            case tranWebName = "TranWebName"
            case idType = "IdType"
            case idCode = "IdCode"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case encryptType = "EncryptType"
            case midasEnvironment = "MidasEnvironment"
            case commissionAmount = "CommissionAmount"
            case withdrawOrderId = "WithdrawOrderId"
        }
    }

    /// ApplyWithdrawal返回参数结构体
    public struct ApplyWithdrawalResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-提现
    ///
    /// 商户提现
    @inlinable @discardableResult
    public func applyWithdrawal(_ input: ApplyWithdrawalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyWithdrawalResponse> {
        self.client.execute(action: "ApplyWithdrawal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-提现
    ///
    /// 商户提现
    @inlinable @discardableResult
    public func applyWithdrawal(_ input: ApplyWithdrawalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyWithdrawalResponse {
        try await self.client.execute(action: "ApplyWithdrawal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-提现
    ///
    /// 商户提现
    @inlinable @discardableResult
    public func applyWithdrawal(midasAppId: String, subAppId: String, settleAcctNo: String, settleAcctName: String, currencyType: String, currencyUnit: Int64, currencyAmt: String, tranWebName: String, idType: String, idCode: String, midasSecretId: String, midasSignature: String, encryptType: String? = nil, midasEnvironment: String? = nil, commissionAmount: String? = nil, withdrawOrderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyWithdrawalResponse> {
        self.applyWithdrawal(.init(midasAppId: midasAppId, subAppId: subAppId, settleAcctNo: settleAcctNo, settleAcctName: settleAcctName, currencyType: currencyType, currencyUnit: currencyUnit, currencyAmt: currencyAmt, tranWebName: tranWebName, idType: idType, idCode: idCode, midasSecretId: midasSecretId, midasSignature: midasSignature, encryptType: encryptType, midasEnvironment: midasEnvironment, commissionAmount: commissionAmount, withdrawOrderId: withdrawOrderId), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-提现
    ///
    /// 商户提现
    @inlinable @discardableResult
    public func applyWithdrawal(midasAppId: String, subAppId: String, settleAcctNo: String, settleAcctName: String, currencyType: String, currencyUnit: Int64, currencyAmt: String, tranWebName: String, idType: String, idCode: String, midasSecretId: String, midasSignature: String, encryptType: String? = nil, midasEnvironment: String? = nil, commissionAmount: String? = nil, withdrawOrderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyWithdrawalResponse {
        try await self.applyWithdrawal(.init(midasAppId: midasAppId, subAppId: subAppId, settleAcctNo: settleAcctNo, settleAcctName: settleAcctName, currencyType: currencyType, currencyUnit: currencyUnit, currencyAmt: currencyAmt, tranWebName: tranWebName, idType: idType, idCode: idCode, midasSecretId: midasSecretId, midasSignature: midasSignature, encryptType: encryptType, midasEnvironment: midasEnvironment, commissionAmount: commissionAmount, withdrawOrderId: withdrawOrderId), region: region, logger: logger, on: eventLoop)
    }
}
