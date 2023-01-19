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
    /// BindOpenBankProfitSharePayee请求参数结构体
    public struct BindOpenBankProfitSharePayeeRequest: TCRequestModel {
        /// 渠道商户号。代理商/集团ID
        public let channelMerchantId: String

        /// 收款人银行账户号。唯一
        public let accountNo: String

        /// 渠道名称
        /// 通联国际: CNP
        public let channelName: String

        /// 渠道子商户号。商户ID
        public let channelSubMerchantId: String?

        /// 绑定状态通知地址,若为空，即不回调通知。
        public let notifyUrl: String?

        /// 分账收款人信息。通联国际必选
        public let profitSharePayeeInfo: OpenBankProfitSharePayeeInfo?

        /// 第三方拓展信息。若无特殊说明，可为空
        public let externalProfitSharingData: String?

        /// 接入环境。沙箱环境填 sandbox。缺省默认调用生产环境
        public let environment: String?

        public init(channelMerchantId: String, accountNo: String, channelName: String, channelSubMerchantId: String? = nil, notifyUrl: String? = nil, profitSharePayeeInfo: OpenBankProfitSharePayeeInfo? = nil, externalProfitSharingData: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.accountNo = accountNo
            self.channelName = channelName
            self.channelSubMerchantId = channelSubMerchantId
            self.notifyUrl = notifyUrl
            self.profitSharePayeeInfo = profitSharePayeeInfo
            self.externalProfitSharingData = externalProfitSharingData
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case accountNo = "AccountNo"
            case channelName = "ChannelName"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case notifyUrl = "NotifyUrl"
            case profitSharePayeeInfo = "ProfitSharePayeeInfo"
            case externalProfitSharingData = "ExternalProfitSharingData"
            case environment = "Environment"
        }
    }

    /// BindOpenBankProfitSharePayee返回参数结构体
    public struct BindOpenBankProfitSharePayeeResponse: TCResponseModel {
        /// 错误码。
        public let errCode: String

        /// 错误信息。
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: BindOpenBankProfitSharePayeeResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-绑定分账收款方
    @inlinable
    public func bindOpenBankProfitSharePayee(_ input: BindOpenBankProfitSharePayeeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindOpenBankProfitSharePayeeResponse> {
        self.client.execute(action: "BindOpenBankProfitSharePayee", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-绑定分账收款方
    @inlinable
    public func bindOpenBankProfitSharePayee(_ input: BindOpenBankProfitSharePayeeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindOpenBankProfitSharePayeeResponse {
        try await self.client.execute(action: "BindOpenBankProfitSharePayee", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-绑定分账收款方
    @inlinable
    public func bindOpenBankProfitSharePayee(channelMerchantId: String, accountNo: String, channelName: String, channelSubMerchantId: String? = nil, notifyUrl: String? = nil, profitSharePayeeInfo: OpenBankProfitSharePayeeInfo? = nil, externalProfitSharingData: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindOpenBankProfitSharePayeeResponse> {
        self.bindOpenBankProfitSharePayee(BindOpenBankProfitSharePayeeRequest(channelMerchantId: channelMerchantId, accountNo: accountNo, channelName: channelName, channelSubMerchantId: channelSubMerchantId, notifyUrl: notifyUrl, profitSharePayeeInfo: profitSharePayeeInfo, externalProfitSharingData: externalProfitSharingData, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-绑定分账收款方
    @inlinable
    public func bindOpenBankProfitSharePayee(channelMerchantId: String, accountNo: String, channelName: String, channelSubMerchantId: String? = nil, notifyUrl: String? = nil, profitSharePayeeInfo: OpenBankProfitSharePayeeInfo? = nil, externalProfitSharingData: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindOpenBankProfitSharePayeeResponse {
        try await self.bindOpenBankProfitSharePayee(BindOpenBankProfitSharePayeeRequest(channelMerchantId: channelMerchantId, accountNo: accountNo, channelName: channelName, channelSubMerchantId: channelSubMerchantId, notifyUrl: notifyUrl, profitSharePayeeInfo: profitSharePayeeInfo, externalProfitSharingData: externalProfitSharingData, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
