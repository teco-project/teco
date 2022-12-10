//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cpdp {
    /// 云企付-退款申请
    ///
    /// 云企付-退款申请
    @inlinable
    public func refundOpenBankOrder(_ input: RefundOpenBankOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RefundOpenBankOrderResponse > {
        self.client.execute(action: "RefundOpenBankOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云企付-退款申请
    ///
    /// 云企付-退款申请
    @inlinable
    public func refundOpenBankOrder(_ input: RefundOpenBankOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundOpenBankOrderResponse {
        try await self.client.execute(action: "RefundOpenBankOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RefundOpenBankOrder请求参数结构体
    public struct RefundOpenBankOrderRequest: TCRequestModel {
        /// 外部商户退款单号。
        public let outRefundId: String
        
        /// 退款金额。单位分。
        public let refundAmount: Int64
        
        /// 渠道商户号。外部平台接入云企付平台下发。必填。
        public let channelMerchantId: String?
        
        /// 外部商户订单号，与云企付渠道订单号二者不能同时为空。
        public let outOrderId: String?
        
        /// 云企付渠道订单号，与外部订单号二者不能同时为空。
        public let channelOrderId: String?
        
        /// 退款通知地址。
        public let notifyUrl: String?
        
        /// 退款原因。
        /// 当EBANK_PAYMENT担保支付订单退款时，此字段必传。
        public let refundReason: String?
        
        /// 第三方渠道退款附加信息。详见附录-复杂类型。
        /// 若未作特殊说明，则无需传入。
        public let externalRefundData: String?
        
        /// 备注信息
        public let remark: String?
        
        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?
        
        /// 分账信息列表。
        public let profitShareInfoList: [OpenBankProfitShareInfo]?
        
        public init (outRefundId: String, refundAmount: Int64, channelMerchantId: String?, outOrderId: String?, channelOrderId: String?, notifyUrl: String?, refundReason: String?, externalRefundData: String?, remark: String?, environment: String?, profitShareInfoList: [OpenBankProfitShareInfo]?) {
            self.outRefundId = outRefundId
            self.refundAmount = refundAmount
            self.channelMerchantId = channelMerchantId
            self.outOrderId = outOrderId
            self.channelOrderId = channelOrderId
            self.notifyUrl = notifyUrl
            self.refundReason = refundReason
            self.externalRefundData = externalRefundData
            self.remark = remark
            self.environment = environment
            self.profitShareInfoList = profitShareInfoList
        }
        
        enum CodingKeys: String, CodingKey {
            case outRefundId = "OutRefundId"
            case refundAmount = "RefundAmount"
            case channelMerchantId = "ChannelMerchantId"
            case outOrderId = "OutOrderId"
            case channelOrderId = "ChannelOrderId"
            case notifyUrl = "NotifyUrl"
            case refundReason = "RefundReason"
            case externalRefundData = "ExternalRefundData"
            case remark = "Remark"
            case environment = "Environment"
            case profitShareInfoList = "ProfitShareInfoList"
        }
    }
    
    /// RefundOpenBankOrder返回参数结构体
    public struct RefundOpenBankOrderResponse: TCResponseModel {
        /// 错误码
        public let errCode: String
        
        /// 错误消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?
        
        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: OpenBankRefundOrderApplyResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}