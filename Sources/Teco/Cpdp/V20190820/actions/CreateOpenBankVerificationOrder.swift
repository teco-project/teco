//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 云企付-创建核销申请
    ///
    /// 云企付-创建核销申请，适用于针对支付订单维度的确认收货，解冻等业务场景。目前支持的渠道有TENPAY下的EBANK_PAYMENT付款方式创建支付订单时，选择担保支付下单的订单进行解冻。
    @inlinable
    public func createOpenBankVerificationOrder(_ input: CreateOpenBankVerificationOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOpenBankVerificationOrderResponse > {
        self.client.execute(action: "CreateOpenBankVerificationOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云企付-创建核销申请
    ///
    /// 云企付-创建核销申请，适用于针对支付订单维度的确认收货，解冻等业务场景。目前支持的渠道有TENPAY下的EBANK_PAYMENT付款方式创建支付订单时，选择担保支付下单的订单进行解冻。
    @inlinable
    public func createOpenBankVerificationOrder(_ input: CreateOpenBankVerificationOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenBankVerificationOrderResponse {
        try await self.client.execute(action: "CreateOpenBankVerificationOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateOpenBankVerificationOrder请求参数结构体
    public struct CreateOpenBankVerificationOrderRequest: TCRequestModel {
        /// 云企付渠道商户号。外部接入平台入驻云企付平台后下发。
        public let channelMerchantId: String
        
        /// 外部核销申请订单号
        public let outVerificationId: String
        
        /// 核销金额，单位分
        public let verificationAmount: Int64
        
        /// 外部支付订单号。调用创建支付订单时，下单支付时的外部订单号。与ChannelOrderId不能同时为空。
        public let outOrderId: String?
        
        /// 云企付渠道订单号。调用创建支付订单时，下单支付时的云企付渠道订单号。与OutOrderId不能同时为空。
        public let channelOrderId: String?
        
        /// 核销成功回调地址。若不上送，则不回调通知。
        public let notifyUrl: String?
        
        /// 备注。
        public let remark: String?
        
        /// 第三方支付渠道需要额外上送字段。详情见附录描述。
        public let externalVerificationData: String?
        
        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?
        
        public init (channelMerchantId: String, outVerificationId: String, verificationAmount: Int64, outOrderId: String?, channelOrderId: String?, notifyUrl: String?, remark: String?, externalVerificationData: String?, environment: String?) {
            self.channelMerchantId = channelMerchantId
            self.outVerificationId = outVerificationId
            self.verificationAmount = verificationAmount
            self.outOrderId = outOrderId
            self.channelOrderId = channelOrderId
            self.notifyUrl = notifyUrl
            self.remark = remark
            self.externalVerificationData = externalVerificationData
            self.environment = environment
        }
        
        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case outVerificationId = "OutVerificationId"
            case verificationAmount = "VerificationAmount"
            case outOrderId = "OutOrderId"
            case channelOrderId = "ChannelOrderId"
            case notifyUrl = "NotifyUrl"
            case remark = "Remark"
            case externalVerificationData = "ExternalVerificationData"
            case environment = "Environment"
        }
    }
    
    /// CreateOpenBankVerificationOrder返回参数结构体
    public struct CreateOpenBankVerificationOrderResponse: TCResponseModel {
        /// 业务系统返回码，SUCCESS表示成功，其他表示失败。
        public let errCode: String
        
        /// 业务系统返回消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?
        
        /// 核销申请响应对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateOpenBankVerificationResult
        
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
