//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// CreateOpenBankSubMerchantRateConfigure请求参数结构体
    public struct CreateOpenBankSubMerchantRateConfigureRequest: TCRequestModel {
        /// 渠道进件序列号。
        /// 填写子商户进件返回的渠道进件编号。
        public let channelRegistrationNo: String

        /// 外部产品费率申请序列号。
        public let outProductFeeNo: String

        /// 渠道商户ID。
        public let channelMerchantId: String

        /// 渠道子商户ID。
        public let channelSubMerchantId: String

        /// 渠道名称。详见附录-云企付枚举类说明-ChannelName。
        public let channelName: String

        /// 支付类型。
        /// SWIPE:刷卡
        /// SCAN:扫码
        /// WAP:WAP
        /// PUBLIC:公众号支付
        /// SDK:SDK
        /// MINI_PROGRAM:小程序
        /// 注意：HELIPAY渠道传SDK。
        public let payType: String

        /// 支付渠道。
        /// ALIPAY：支付宝
        /// WXPAY：微信支付
        /// UNIONPAY：银联
        public let payChannel: String

        /// 计费模式。
        /// SINGLE：按单笔金额计费
        /// RATIO：按单笔费率计费
        /// RANGE：按分段区间计费
        public let feeMode: String

        /// 费用值，单位（0.01%或分）。
        public let feeValue: UInt64

        /// 支付方式。详见附录-云企付枚举类说明-PaymentMethod。
        /// HELIPAY渠道不需要传入。
        public let paymentMethod: String?

        /// 最低收费金额，单位（分）。
        public let minFee: UInt64?

        /// 最高收费金额，单位（分）。
        public let maxFee: UInt64?

        /// 通知地址。
        public let notifyUrl: String?

        /// 分段计费区间列表。
        public let feeRangeList: [FeeRangInfo]?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelRegistrationNo: String, outProductFeeNo: String, channelMerchantId: String, channelSubMerchantId: String, channelName: String, payType: String, payChannel: String, feeMode: String, feeValue: UInt64, paymentMethod: String? = nil, minFee: UInt64? = nil, maxFee: UInt64? = nil, notifyUrl: String? = nil, feeRangeList: [FeeRangInfo]? = nil, environment: String? = nil) {
            self.channelRegistrationNo = channelRegistrationNo
            self.outProductFeeNo = outProductFeeNo
            self.channelMerchantId = channelMerchantId
            self.channelSubMerchantId = channelSubMerchantId
            self.channelName = channelName
            self.payType = payType
            self.payChannel = payChannel
            self.feeMode = feeMode
            self.feeValue = feeValue
            self.paymentMethod = paymentMethod
            self.minFee = minFee
            self.maxFee = maxFee
            self.notifyUrl = notifyUrl
            self.feeRangeList = feeRangeList
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelRegistrationNo = "ChannelRegistrationNo"
            case outProductFeeNo = "OutProductFeeNo"
            case channelMerchantId = "ChannelMerchantId"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case channelName = "ChannelName"
            case payType = "PayType"
            case payChannel = "PayChannel"
            case feeMode = "FeeMode"
            case feeValue = "FeeValue"
            case paymentMethod = "PaymentMethod"
            case minFee = "MinFee"
            case maxFee = "MaxFee"
            case notifyUrl = "NotifyUrl"
            case feeRangeList = "FeeRangeList"
            case environment = "Environment"
        }
    }

    /// CreateOpenBankSubMerchantRateConfigure返回参数结构体
    public struct CreateOpenBankSubMerchantRateConfigureResponse: TCResponseModel {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateOpenBankSubMerchantRateConfigureResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-子商户费率配置
    @inlinable
    public func createOpenBankSubMerchantRateConfigure(_ input: CreateOpenBankSubMerchantRateConfigureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankSubMerchantRateConfigureResponse> {
        self.client.execute(action: "CreateOpenBankSubMerchantRateConfigure", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户费率配置
    @inlinable
    public func createOpenBankSubMerchantRateConfigure(_ input: CreateOpenBankSubMerchantRateConfigureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankSubMerchantRateConfigureResponse {
        try await self.client.execute(action: "CreateOpenBankSubMerchantRateConfigure", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-子商户费率配置
    @inlinable
    public func createOpenBankSubMerchantRateConfigure(channelRegistrationNo: String, outProductFeeNo: String, channelMerchantId: String, channelSubMerchantId: String, channelName: String, payType: String, payChannel: String, feeMode: String, feeValue: UInt64, paymentMethod: String? = nil, minFee: UInt64? = nil, maxFee: UInt64? = nil, notifyUrl: String? = nil, feeRangeList: [FeeRangInfo]? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpenBankSubMerchantRateConfigureResponse> {
        self.createOpenBankSubMerchantRateConfigure(CreateOpenBankSubMerchantRateConfigureRequest(channelRegistrationNo: channelRegistrationNo, outProductFeeNo: outProductFeeNo, channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, payType: payType, payChannel: payChannel, feeMode: feeMode, feeValue: feeValue, paymentMethod: paymentMethod, minFee: minFee, maxFee: maxFee, notifyUrl: notifyUrl, feeRangeList: feeRangeList, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户费率配置
    @inlinable
    public func createOpenBankSubMerchantRateConfigure(channelRegistrationNo: String, outProductFeeNo: String, channelMerchantId: String, channelSubMerchantId: String, channelName: String, payType: String, payChannel: String, feeMode: String, feeValue: UInt64, paymentMethod: String? = nil, minFee: UInt64? = nil, maxFee: UInt64? = nil, notifyUrl: String? = nil, feeRangeList: [FeeRangInfo]? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankSubMerchantRateConfigureResponse {
        try await self.createOpenBankSubMerchantRateConfigure(CreateOpenBankSubMerchantRateConfigureRequest(channelRegistrationNo: channelRegistrationNo, outProductFeeNo: outProductFeeNo, channelMerchantId: channelMerchantId, channelSubMerchantId: channelSubMerchantId, channelName: channelName, payType: payType, payChannel: payChannel, feeMode: feeMode, feeValue: feeValue, paymentMethod: paymentMethod, minFee: minFee, maxFee: maxFee, notifyUrl: notifyUrl, feeRangeList: feeRangeList, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
