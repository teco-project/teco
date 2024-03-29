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
    /// ApplyOutwardOrder请求参数结构体
    public struct ApplyOutwardOrderRequest: TCRequest {
        /// 对接方汇出指令编号
        public let transactionId: String

        /// 定价币种
        public let pricingCurrency: String

        /// 源币种
        public let sourceCurrency: String

        /// 目的币种
        public let targetCurrency: String

        /// 收款人类型（银行卡填"BANK_ACCOUNT"）
        public let payeeType: String

        /// 收款人账号
        public let payeeAccount: String

        /// 源币种金额
        public let sourceAmount: Float?

        /// 目的金额
        public let targetAmount: Float?

        /// 收款人姓名（PayeeType为"BANK_COUNT"时必填）
        public let payeeName: String?

        /// 收款人地址（PayeeType为"BANK_COUNT"时必填）
        public let payeeAddress: String?

        /// 收款人银行账号类型（PayeeType为"BANK_COUNT"时必填）
        /// 个人填"INDIVIDUAL"
        /// 企业填"CORPORATE"
        public let payeeBankAccountType: String?

        /// 收款人国家或地区编码（PayeeType为"BANK_COUNT"时必填）
        public let payeeCountryCode: String?

        /// 收款人开户银行名称（PayeeType为"BANK_COUNT"时必填）
        public let payeeBankName: String?

        /// 收款人开户银行地址（PayeeType为"BANK_COUNT"时必填）
        public let payeeBankAddress: String?

        /// 收款人开户银行所在国家或地区编码（PayeeType为"BANK_COUNT"时必填）
        public let payeeBankDistrict: String?

        /// 收款银行SwiftCode（PayeeType为"BANK_COUNT"时必填）
        public let payeeBankSwiftCode: String?

        /// 收款银行国际编码类型
        public let payeeBankType: String?

        /// 收款银行国际编码
        public let payeeBankCode: String?

        /// 收款人附言
        public let referenceForBeneficiary: String?

        /// 接入环境。沙箱环境填sandbox
        public let profile: String?

        public init(transactionId: String, pricingCurrency: String, sourceCurrency: String, targetCurrency: String, payeeType: String, payeeAccount: String, sourceAmount: Float? = nil, targetAmount: Float? = nil, payeeName: String? = nil, payeeAddress: String? = nil, payeeBankAccountType: String? = nil, payeeCountryCode: String? = nil, payeeBankName: String? = nil, payeeBankAddress: String? = nil, payeeBankDistrict: String? = nil, payeeBankSwiftCode: String? = nil, payeeBankType: String? = nil, payeeBankCode: String? = nil, referenceForBeneficiary: String? = nil, profile: String? = nil) {
            self.transactionId = transactionId
            self.pricingCurrency = pricingCurrency
            self.sourceCurrency = sourceCurrency
            self.targetCurrency = targetCurrency
            self.payeeType = payeeType
            self.payeeAccount = payeeAccount
            self.sourceAmount = sourceAmount
            self.targetAmount = targetAmount
            self.payeeName = payeeName
            self.payeeAddress = payeeAddress
            self.payeeBankAccountType = payeeBankAccountType
            self.payeeCountryCode = payeeCountryCode
            self.payeeBankName = payeeBankName
            self.payeeBankAddress = payeeBankAddress
            self.payeeBankDistrict = payeeBankDistrict
            self.payeeBankSwiftCode = payeeBankSwiftCode
            self.payeeBankType = payeeBankType
            self.payeeBankCode = payeeBankCode
            self.referenceForBeneficiary = referenceForBeneficiary
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case transactionId = "TransactionId"
            case pricingCurrency = "PricingCurrency"
            case sourceCurrency = "SourceCurrency"
            case targetCurrency = "TargetCurrency"
            case payeeType = "PayeeType"
            case payeeAccount = "PayeeAccount"
            case sourceAmount = "SourceAmount"
            case targetAmount = "TargetAmount"
            case payeeName = "PayeeName"
            case payeeAddress = "PayeeAddress"
            case payeeBankAccountType = "PayeeBankAccountType"
            case payeeCountryCode = "PayeeCountryCode"
            case payeeBankName = "PayeeBankName"
            case payeeBankAddress = "PayeeBankAddress"
            case payeeBankDistrict = "PayeeBankDistrict"
            case payeeBankSwiftCode = "PayeeBankSwiftCode"
            case payeeBankType = "PayeeBankType"
            case payeeBankCode = "PayeeBankCode"
            case referenceForBeneficiary = "ReferenceForBeneficiary"
            case profile = "Profile"
        }
    }

    /// ApplyOutwardOrder返回参数结构体
    public struct ApplyOutwardOrderResponse: TCResponse {
        /// 汇出指令申请
        public let result: ApplyOutwardOrderResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 跨境-汇出指令申请
    ///
    /// 跨境-汇出指令申请。通过该接口可将对接方账户中的人民币余额汇兑成外币，再汇出至指定银行账户。
    @inlinable
    public func applyOutwardOrder(_ input: ApplyOutwardOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyOutwardOrderResponse> {
        self.client.execute(action: "ApplyOutwardOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跨境-汇出指令申请
    ///
    /// 跨境-汇出指令申请。通过该接口可将对接方账户中的人民币余额汇兑成外币，再汇出至指定银行账户。
    @inlinable
    public func applyOutwardOrder(_ input: ApplyOutwardOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyOutwardOrderResponse {
        try await self.client.execute(action: "ApplyOutwardOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跨境-汇出指令申请
    ///
    /// 跨境-汇出指令申请。通过该接口可将对接方账户中的人民币余额汇兑成外币，再汇出至指定银行账户。
    @inlinable
    public func applyOutwardOrder(transactionId: String, pricingCurrency: String, sourceCurrency: String, targetCurrency: String, payeeType: String, payeeAccount: String, sourceAmount: Float? = nil, targetAmount: Float? = nil, payeeName: String? = nil, payeeAddress: String? = nil, payeeBankAccountType: String? = nil, payeeCountryCode: String? = nil, payeeBankName: String? = nil, payeeBankAddress: String? = nil, payeeBankDistrict: String? = nil, payeeBankSwiftCode: String? = nil, payeeBankType: String? = nil, payeeBankCode: String? = nil, referenceForBeneficiary: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyOutwardOrderResponse> {
        self.applyOutwardOrder(.init(transactionId: transactionId, pricingCurrency: pricingCurrency, sourceCurrency: sourceCurrency, targetCurrency: targetCurrency, payeeType: payeeType, payeeAccount: payeeAccount, sourceAmount: sourceAmount, targetAmount: targetAmount, payeeName: payeeName, payeeAddress: payeeAddress, payeeBankAccountType: payeeBankAccountType, payeeCountryCode: payeeCountryCode, payeeBankName: payeeBankName, payeeBankAddress: payeeBankAddress, payeeBankDistrict: payeeBankDistrict, payeeBankSwiftCode: payeeBankSwiftCode, payeeBankType: payeeBankType, payeeBankCode: payeeBankCode, referenceForBeneficiary: referenceForBeneficiary, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 跨境-汇出指令申请
    ///
    /// 跨境-汇出指令申请。通过该接口可将对接方账户中的人民币余额汇兑成外币，再汇出至指定银行账户。
    @inlinable
    public func applyOutwardOrder(transactionId: String, pricingCurrency: String, sourceCurrency: String, targetCurrency: String, payeeType: String, payeeAccount: String, sourceAmount: Float? = nil, targetAmount: Float? = nil, payeeName: String? = nil, payeeAddress: String? = nil, payeeBankAccountType: String? = nil, payeeCountryCode: String? = nil, payeeBankName: String? = nil, payeeBankAddress: String? = nil, payeeBankDistrict: String? = nil, payeeBankSwiftCode: String? = nil, payeeBankType: String? = nil, payeeBankCode: String? = nil, referenceForBeneficiary: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyOutwardOrderResponse {
        try await self.applyOutwardOrder(.init(transactionId: transactionId, pricingCurrency: pricingCurrency, sourceCurrency: sourceCurrency, targetCurrency: targetCurrency, payeeType: payeeType, payeeAccount: payeeAccount, sourceAmount: sourceAmount, targetAmount: targetAmount, payeeName: payeeName, payeeAddress: payeeAddress, payeeBankAccountType: payeeBankAccountType, payeeCountryCode: payeeCountryCode, payeeBankName: payeeBankName, payeeBankAddress: payeeBankAddress, payeeBankDistrict: payeeBankDistrict, payeeBankSwiftCode: payeeBankSwiftCode, payeeBankType: payeeBankType, payeeBankCode: payeeBankCode, referenceForBeneficiary: referenceForBeneficiary, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
