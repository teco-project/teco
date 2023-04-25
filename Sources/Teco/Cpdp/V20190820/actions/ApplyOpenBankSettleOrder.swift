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

extension Cpdp {
    /// ApplyOpenBankSettleOrder请求参数结构体
    public struct ApplyOpenBankSettleOrderRequest: TCRequestModel {
        /// 渠道商户号
        public let channelMerchantId: String

        /// 外部结算流水号
        public let outSettleId: String

        /// 结算金额
        public let settleAmount: Int64

        /// 渠道名称。详见附录-枚举类型-ChannelName。
        public let channelName: String

        /// 渠道子商户号
        public let channelSubMerchantId: String?

        /// 结算备注
        public let settleDetail: String?

        /// 结算成功回调地址
        public let notifyUrl: String?

        /// 附言
        public let remark: String?

        /// 结算第三方渠道扩展信息。通联国际必选
        public let externalSettleData: String?

        /// 接入环境。沙箱环境填 sandbox。缺省默认调用生产环境
        public let environment: String?

        public init(channelMerchantId: String, outSettleId: String, settleAmount: Int64, channelName: String, channelSubMerchantId: String? = nil, settleDetail: String? = nil, notifyUrl: String? = nil, remark: String? = nil, externalSettleData: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.outSettleId = outSettleId
            self.settleAmount = settleAmount
            self.channelName = channelName
            self.channelSubMerchantId = channelSubMerchantId
            self.settleDetail = settleDetail
            self.notifyUrl = notifyUrl
            self.remark = remark
            self.externalSettleData = externalSettleData
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case outSettleId = "OutSettleId"
            case settleAmount = "SettleAmount"
            case channelName = "ChannelName"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case settleDetail = "SettleDetail"
            case notifyUrl = "NotifyUrl"
            case remark = "Remark"
            case externalSettleData = "ExternalSettleData"
            case environment = "Environment"
        }
    }

    /// ApplyOpenBankSettleOrder返回参数结构体
    public struct ApplyOpenBankSettleOrderResponse: TCResponseModel {
        /// 错误码。
        public let errCode: String

        /// 错误信息。
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApplyOpenBankSettleOrderResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-结算申请接口
    @inlinable
    public func applyOpenBankSettleOrder(_ input: ApplyOpenBankSettleOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyOpenBankSettleOrderResponse> {
        self.client.execute(action: "ApplyOpenBankSettleOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-结算申请接口
    @inlinable
    public func applyOpenBankSettleOrder(_ input: ApplyOpenBankSettleOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyOpenBankSettleOrderResponse {
        try await self.client.execute(action: "ApplyOpenBankSettleOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-结算申请接口
    @inlinable
    public func applyOpenBankSettleOrder(channelMerchantId: String, outSettleId: String, settleAmount: Int64, channelName: String, channelSubMerchantId: String? = nil, settleDetail: String? = nil, notifyUrl: String? = nil, remark: String? = nil, externalSettleData: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyOpenBankSettleOrderResponse> {
        self.applyOpenBankSettleOrder(.init(channelMerchantId: channelMerchantId, outSettleId: outSettleId, settleAmount: settleAmount, channelName: channelName, channelSubMerchantId: channelSubMerchantId, settleDetail: settleDetail, notifyUrl: notifyUrl, remark: remark, externalSettleData: externalSettleData, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-结算申请接口
    @inlinable
    public func applyOpenBankSettleOrder(channelMerchantId: String, outSettleId: String, settleAmount: Int64, channelName: String, channelSubMerchantId: String? = nil, settleDetail: String? = nil, notifyUrl: String? = nil, remark: String? = nil, externalSettleData: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyOpenBankSettleOrderResponse {
        try await self.applyOpenBankSettleOrder(.init(channelMerchantId: channelMerchantId, outSettleId: outSettleId, settleAmount: settleAmount, channelName: channelName, channelSubMerchantId: channelSubMerchantId, settleDetail: settleDetail, notifyUrl: notifyUrl, remark: remark, externalSettleData: externalSettleData, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
