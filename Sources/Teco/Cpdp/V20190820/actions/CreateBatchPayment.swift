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
    /// CreateBatchPayment请求参数结构体
    public struct CreateBatchPaymentRequest: TCRequestModel {
        /// 1 微信企业付款 
        /// 2 支付宝转账 
        /// 3 平安银企直连代发转账
        public let transferType: Int64
        
        /// 转账详情
        public let recipientList: [CreateBatchPaymentRecipient]
        
        /// 请求预留字段
        public let reqReserved: String?
        
        /// 回调Url
        public let notifyUrl: String?
        
        public init (transferType: Int64, recipientList: [CreateBatchPaymentRecipient], reqReserved: String? = nil, notifyUrl: String? = nil) {
            self.transferType = transferType
            self.recipientList = recipientList
            self.reqReserved = reqReserved
            self.notifyUrl = notifyUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case transferType = "TransferType"
            case recipientList = "RecipientList"
            case reqReserved = "ReqReserved"
            case notifyUrl = "NotifyUrl"
        }
    }
    
    /// CreateBatchPayment返回参数结构体
    public struct CreateBatchPaymentResponse: TCResponseModel {
        /// 错误码。响应成功："SUCCESS"，其他为不成功。
        public let errCode: String
        
        /// 响应消息。
        public let errMessage: String
        
        /// 返回响应
        public let result: CreateBatchPaymentData
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 灵云-批量主播转账接口
    @inlinable
    public func createBatchPayment(_ input: CreateBatchPaymentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBatchPaymentResponse > {
        self.client.execute(action: "CreateBatchPayment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 灵云-批量主播转账接口
    @inlinable
    public func createBatchPayment(_ input: CreateBatchPaymentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchPaymentResponse {
        try await self.client.execute(action: "CreateBatchPayment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
