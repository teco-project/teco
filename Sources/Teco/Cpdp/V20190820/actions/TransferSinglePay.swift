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
    /// TransferSinglePay请求参数结构体
    public struct TransferSinglePayRequest: TCRequestModel {
        /// 商户号
        public let merchantId: String

        /// 微信申请商户号的appid或者商户号绑定的appid
        /// 支付宝、平安填入MerchantId
        public let merchantAppId: String

        /// 1、 微信企业付款
        /// 2、 支付宝转账
        /// 3、 平安银企直联代发转账
        public let transferType: Int64

        /// 订单流水号，唯一，不能包含特殊字符，长度最大限制64位，推荐使用字母，数字组合，"_","-"组合
        public let orderId: String

        /// 转账金额，单位分
        public let transferAmount: Int64

        /// 收款方标识。
        /// 微信为open_id；
        /// 支付宝为会员alipay_user_id;
        /// 平安为收款方银行账号
        public let payeeId: String

        /// 收款方姓名。支付宝可选；微信，平安模式下必传
        public let payeeName: String?

        /// 收款方附加信息，平安接入使用。需要以JSON格式提供以下字段：
        /// PayeeBankName：收款人开户行名称
        ///  CcyCode：货币类型（RMB-人民币）
        ///  UnionFlag：行内跨行标志（1：行内转账，0：跨行转账）。
        public let payeeExtends: String?

        /// 请求预留字段，原样透传返回
        public let reqReserved: String?

        /// 业务备注
        public let remark: String?

        /// 转账结果回调通知URL。若不填，则不进行回调。
        public let notifyUrl: String?

        /// 接入环境。沙箱环境填sandbox。
        public let profile: String?

        public init(merchantId: String, merchantAppId: String, transferType: Int64, orderId: String, transferAmount: Int64, payeeId: String, payeeName: String? = nil, payeeExtends: String? = nil, reqReserved: String? = nil, remark: String? = nil, notifyUrl: String? = nil, profile: String? = nil) {
            self.merchantId = merchantId
            self.merchantAppId = merchantAppId
            self.transferType = transferType
            self.orderId = orderId
            self.transferAmount = transferAmount
            self.payeeId = payeeId
            self.payeeName = payeeName
            self.payeeExtends = payeeExtends
            self.reqReserved = reqReserved
            self.remark = remark
            self.notifyUrl = notifyUrl
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case merchantAppId = "MerchantAppId"
            case transferType = "TransferType"
            case orderId = "OrderId"
            case transferAmount = "TransferAmount"
            case payeeId = "PayeeId"
            case payeeName = "PayeeName"
            case payeeExtends = "PayeeExtends"
            case reqReserved = "ReqReserved"
            case remark = "Remark"
            case notifyUrl = "NotifyUrl"
            case profile = "Profile"
        }
    }

    /// TransferSinglePay返回参数结构体
    public struct TransferSinglePayResponse: TCResponseModel {
        /// 错误码。响应成功："SUCCESS"，其他为不成功
        public let errCode: String

        /// 响应消息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TransferSinglePayData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 智能代发-单笔代发转账接口
    @inlinable
    public func transferSinglePay(_ input: TransferSinglePayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransferSinglePayResponse> {
        self.client.execute(action: "TransferSinglePay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智能代发-单笔代发转账接口
    @inlinable
    public func transferSinglePay(_ input: TransferSinglePayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransferSinglePayResponse {
        try await self.client.execute(action: "TransferSinglePay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智能代发-单笔代发转账接口
    @inlinable
    public func transferSinglePay(merchantId: String, merchantAppId: String, transferType: Int64, orderId: String, transferAmount: Int64, payeeId: String, payeeName: String? = nil, payeeExtends: String? = nil, reqReserved: String? = nil, remark: String? = nil, notifyUrl: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransferSinglePayResponse> {
        self.transferSinglePay(.init(merchantId: merchantId, merchantAppId: merchantAppId, transferType: transferType, orderId: orderId, transferAmount: transferAmount, payeeId: payeeId, payeeName: payeeName, payeeExtends: payeeExtends, reqReserved: reqReserved, remark: remark, notifyUrl: notifyUrl, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 智能代发-单笔代发转账接口
    @inlinable
    public func transferSinglePay(merchantId: String, merchantAppId: String, transferType: Int64, orderId: String, transferAmount: Int64, payeeId: String, payeeName: String? = nil, payeeExtends: String? = nil, reqReserved: String? = nil, remark: String? = nil, notifyUrl: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransferSinglePayResponse {
        try await self.transferSinglePay(.init(merchantId: merchantId, merchantAppId: merchantAppId, transferType: transferType, orderId: orderId, transferAmount: transferAmount, payeeId: payeeId, payeeName: payeeName, payeeExtends: payeeExtends, reqReserved: reqReserved, remark: remark, notifyUrl: notifyUrl, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
