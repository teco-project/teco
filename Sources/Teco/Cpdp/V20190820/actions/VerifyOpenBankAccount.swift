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
    /// VerifyOpenBankAccount请求参数结构体
    public struct VerifyOpenBankAccountRequest: TCRequestModel {
        /// 渠道商户号。外部接入平台入驻云企付平台下发
        public let channelMerchantId: String

        /// 渠道名称。详见附录-云企付枚举类说明-ChannelName。
        /// __TENPAY__: 商企付
        public let channelName: String

        /// 收款方信息。
        public let payeeInfo: OpenBankPayeeInfo

        /// 通知地址，如www.test.com。
        public let notifyUrl: String?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, channelName: String, payeeInfo: OpenBankPayeeInfo, notifyUrl: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelName = channelName
            self.payeeInfo = payeeInfo
            self.notifyUrl = notifyUrl
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelName = "ChannelName"
            case payeeInfo = "PayeeInfo"
            case notifyUrl = "NotifyUrl"
            case environment = "Environment"
        }
    }

    /// VerifyOpenBankAccount返回参数结构体
    public struct VerifyOpenBankAccountResponse: TCResponseModel {
        /// 业务系统返回码，SUCCESS表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 打款验证结果。前端使用url字段，根据指引完成打款验证动作
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: VerifyOpenBankAccountResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-子商户银行卡打款验证
    ///
    /// 云企付-子商户银行卡打款验证，在接入TENPAY渠道EBANK_PAYMENT付款时，若客户期望接入担保支付，需在接入前先完成，收款商户绑定的银行卡进行打款验证。验证成功后，才可以调用CreateOpenBankPaymentOrder接口进行担保支付下单。
    @inlinable
    public func verifyOpenBankAccount(_ input: VerifyOpenBankAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyOpenBankAccountResponse> {
        self.client.execute(action: "VerifyOpenBankAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户银行卡打款验证
    ///
    /// 云企付-子商户银行卡打款验证，在接入TENPAY渠道EBANK_PAYMENT付款时，若客户期望接入担保支付，需在接入前先完成，收款商户绑定的银行卡进行打款验证。验证成功后，才可以调用CreateOpenBankPaymentOrder接口进行担保支付下单。
    @inlinable
    public func verifyOpenBankAccount(_ input: VerifyOpenBankAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyOpenBankAccountResponse {
        try await self.client.execute(action: "VerifyOpenBankAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-子商户银行卡打款验证
    ///
    /// 云企付-子商户银行卡打款验证，在接入TENPAY渠道EBANK_PAYMENT付款时，若客户期望接入担保支付，需在接入前先完成，收款商户绑定的银行卡进行打款验证。验证成功后，才可以调用CreateOpenBankPaymentOrder接口进行担保支付下单。
    @inlinable
    public func verifyOpenBankAccount(channelMerchantId: String, channelName: String, payeeInfo: OpenBankPayeeInfo, notifyUrl: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyOpenBankAccountResponse> {
        self.verifyOpenBankAccount(VerifyOpenBankAccountRequest(channelMerchantId: channelMerchantId, channelName: channelName, payeeInfo: payeeInfo, notifyUrl: notifyUrl, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户银行卡打款验证
    ///
    /// 云企付-子商户银行卡打款验证，在接入TENPAY渠道EBANK_PAYMENT付款时，若客户期望接入担保支付，需在接入前先完成，收款商户绑定的银行卡进行打款验证。验证成功后，才可以调用CreateOpenBankPaymentOrder接口进行担保支付下单。
    @inlinable
    public func verifyOpenBankAccount(channelMerchantId: String, channelName: String, payeeInfo: OpenBankPayeeInfo, notifyUrl: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyOpenBankAccountResponse {
        try await self.verifyOpenBankAccount(VerifyOpenBankAccountRequest(channelMerchantId: channelMerchantId, channelName: channelName, payeeInfo: payeeInfo, notifyUrl: notifyUrl, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
