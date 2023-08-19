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
    /// CheckAcct请求参数结构体
    public struct CheckAcctRequest: TCRequest {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String

        /// 1 – 小额转账验证
        /// 2 – 短信验证
        /// 每个结算账户每天只能使用一次小额转账验证
        public let bindType: Int64

        /// 结算账户账号
        /// <敏感信息>加密详见[《商户端接口敏感信息加密说明》](https://cloud.tencent.com/document/product/1122/48979)
        public let settleAcctNo: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String

        /// 短信验证码或指令号
        /// BindType==2必填，平安渠道必填
        public let checkCode: String?

        /// 币种 RMB
        /// BindType==1必填
        public let currencyType: String?

        /// 单位
        /// 1：元，2：角，3：分
        /// BindType==1必填
        public let currencyUnit: Int64?

        /// 金额
        /// BindType==1必填
        public let currencyAmt: String?

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

        public init(midasAppId: String, subAppId: String, bindType: Int64, settleAcctNo: String, midasSecretId: String, midasSignature: String, checkCode: String? = nil, currencyType: String? = nil, currencyUnit: Int64? = nil, currencyAmt: String? = nil, encryptType: String? = nil, midasEnvironment: String? = nil) {
            self.midasAppId = midasAppId
            self.subAppId = subAppId
            self.bindType = bindType
            self.settleAcctNo = settleAcctNo
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.checkCode = checkCode
            self.currencyType = currencyType
            self.currencyUnit = currencyUnit
            self.currencyAmt = currencyAmt
            self.encryptType = encryptType
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case subAppId = "SubAppId"
            case bindType = "BindType"
            case settleAcctNo = "SettleAcctNo"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case checkCode = "CheckCode"
            case currencyType = "CurrencyType"
            case currencyUnit = "CurrencyUnit"
            case currencyAmt = "CurrencyAmt"
            case encryptType = "EncryptType"
            case midasEnvironment = "MidasEnvironment"
        }
    }

    /// CheckAcct返回参数结构体
    public struct CheckAcctResponse: TCResponse {
        /// 前置流水号，请保存
        public let frontSeqNo: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case frontSeqNo = "FrontSeqNo"
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-提现银行卡验证
    ///
    /// 商户绑定提现银行卡的验证接口
    @inlinable
    public func checkAcct(_ input: CheckAcctRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckAcctResponse> {
        self.client.execute(action: "CheckAcct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-提现银行卡验证
    ///
    /// 商户绑定提现银行卡的验证接口
    @inlinable
    public func checkAcct(_ input: CheckAcctRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckAcctResponse {
        try await self.client.execute(action: "CheckAcct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-提现银行卡验证
    ///
    /// 商户绑定提现银行卡的验证接口
    @inlinable
    public func checkAcct(midasAppId: String, subAppId: String, bindType: Int64, settleAcctNo: String, midasSecretId: String, midasSignature: String, checkCode: String? = nil, currencyType: String? = nil, currencyUnit: Int64? = nil, currencyAmt: String? = nil, encryptType: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckAcctResponse> {
        self.checkAcct(.init(midasAppId: midasAppId, subAppId: subAppId, bindType: bindType, settleAcctNo: settleAcctNo, midasSecretId: midasSecretId, midasSignature: midasSignature, checkCode: checkCode, currencyType: currencyType, currencyUnit: currencyUnit, currencyAmt: currencyAmt, encryptType: encryptType, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-提现银行卡验证
    ///
    /// 商户绑定提现银行卡的验证接口
    @inlinable
    public func checkAcct(midasAppId: String, subAppId: String, bindType: Int64, settleAcctNo: String, midasSecretId: String, midasSignature: String, checkCode: String? = nil, currencyType: String? = nil, currencyUnit: Int64? = nil, currencyAmt: String? = nil, encryptType: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckAcctResponse {
        try await self.checkAcct(.init(midasAppId: midasAppId, subAppId: subAppId, bindType: bindType, settleAcctNo: settleAcctNo, midasSecretId: midasSecretId, midasSignature: midasSignature, checkCode: checkCode, currencyType: currencyType, currencyUnit: currencyUnit, currencyAmt: currencyAmt, encryptType: encryptType, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }
}
