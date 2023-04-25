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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Essbasic {
    /// CheckBankCardVerification请求参数结构体
    public struct CheckBankCardVerificationRequest: TCRequestModel {
        /// 调用方信息; 必选
        public let caller: Caller

        /// 银行卡号
        public let bankCard: String

        /// 姓名
        public let name: String

        /// 身份证件号码
        public let idCardNumber: String?

        /// 手机号
        public let mobile: String?

        /// 身份证件类型; ID_CARD
        public let idCardType: String?

        public init(caller: Caller, bankCard: String, name: String, idCardNumber: String? = nil, mobile: String? = nil, idCardType: String? = nil) {
            self.caller = caller
            self.bankCard = bankCard
            self.name = name
            self.idCardNumber = idCardNumber
            self.mobile = mobile
            self.idCardType = idCardType
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case bankCard = "BankCard"
            case name = "Name"
            case idCardNumber = "IdCardNumber"
            case mobile = "Mobile"
            case idCardType = "IdCardType"
        }
    }

    /// CheckBankCardVerification返回参数结构体
    public struct CheckBankCardVerificationResponse: TCResponseModel {
        /// 检测结果
        /// 计费结果码：
        ///   0:  认证通过
        ///   1:  认证未通过
        ///   2:  持卡人信息有误
        ///   3:  未开通无卡支付
        ///   4:  此卡被没收
        ///   5:  无效卡号
        ///   6:  此卡无对应发卡行
        ///   7:  该卡未初始化或睡眠卡
        ///   8:  作弊卡、吞卡
        ///   9:  此卡已挂失
        ///   10: 该卡已过期
        ///   11: 受限制的卡
        ///   12: 密码错误次数超限
        ///   13: 发卡行不支持此交易
        /// 不收费结果码:
        ///   101: 姓名校验不通过
        ///   102: 银行卡号码有误
        ///   103: 验证中心服务繁忙
        ///   104: 身份证号码有误
        ///   105: 手机号码不合法
        public let result: Int64

        /// 结果描述; 未通过时必选
        public let description: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 银行卡二三四要素检测
    ///
    /// 该接口为第三方平台向电子签平台验证银行卡二/三/四要素
    /// 银行卡二要素(同CheckBankCard2EVerification): bank_card + name
    /// 银行卡三要素(同CheckBankCard3EVerification): bank_card + name + id_card_number
    /// 银行卡四要素(同CheckBankCard4EVerification): bank_card + name + id_card_number + mobile
    @inlinable
    public func checkBankCardVerification(_ input: CheckBankCardVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckBankCardVerificationResponse> {
        self.client.execute(action: "CheckBankCardVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 银行卡二三四要素检测
    ///
    /// 该接口为第三方平台向电子签平台验证银行卡二/三/四要素
    /// 银行卡二要素(同CheckBankCard2EVerification): bank_card + name
    /// 银行卡三要素(同CheckBankCard3EVerification): bank_card + name + id_card_number
    /// 银行卡四要素(同CheckBankCard4EVerification): bank_card + name + id_card_number + mobile
    @inlinable
    public func checkBankCardVerification(_ input: CheckBankCardVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckBankCardVerificationResponse {
        try await self.client.execute(action: "CheckBankCardVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 银行卡二三四要素检测
    ///
    /// 该接口为第三方平台向电子签平台验证银行卡二/三/四要素
    /// 银行卡二要素(同CheckBankCard2EVerification): bank_card + name
    /// 银行卡三要素(同CheckBankCard3EVerification): bank_card + name + id_card_number
    /// 银行卡四要素(同CheckBankCard4EVerification): bank_card + name + id_card_number + mobile
    @inlinable
    public func checkBankCardVerification(caller: Caller, bankCard: String, name: String, idCardNumber: String? = nil, mobile: String? = nil, idCardType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckBankCardVerificationResponse> {
        self.checkBankCardVerification(.init(caller: caller, bankCard: bankCard, name: name, idCardNumber: idCardNumber, mobile: mobile, idCardType: idCardType), region: region, logger: logger, on: eventLoop)
    }

    /// 银行卡二三四要素检测
    ///
    /// 该接口为第三方平台向电子签平台验证银行卡二/三/四要素
    /// 银行卡二要素(同CheckBankCard2EVerification): bank_card + name
    /// 银行卡三要素(同CheckBankCard3EVerification): bank_card + name + id_card_number
    /// 银行卡四要素(同CheckBankCard4EVerification): bank_card + name + id_card_number + mobile
    @inlinable
    public func checkBankCardVerification(caller: Caller, bankCard: String, name: String, idCardNumber: String? = nil, mobile: String? = nil, idCardType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckBankCardVerificationResponse {
        try await self.checkBankCardVerification(.init(caller: caller, bankCard: bankCard, name: name, idCardNumber: idCardNumber, mobile: mobile, idCardType: idCardType), region: region, logger: logger, on: eventLoop)
    }
}
