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
    /// 灵云-单笔主播转账接口
    ///
    /// 灵云-单笔主播转账接口
    @inlinable
    public func createSinglePayment(_ input: CreateSinglePaymentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSinglePaymentResponse > {
        self.client.execute(action: "CreateSinglePayment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 灵云-单笔主播转账接口
    ///
    /// 灵云-单笔主播转账接口
    @inlinable
    public func createSinglePayment(_ input: CreateSinglePaymentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSinglePaymentResponse {
        try await self.client.execute(action: "CreateSinglePayment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateSinglePayment请求参数结构体
    public struct CreateSinglePaymentRequest: TCRequestModel {
        /// 转账类型
        /// 1 微信企业付款 
        /// 2 支付宝转账 
        /// 3 平安银企直连代发转账
        public let transferType: UInt64
        
        /// 订单流水号
        public let orderId: String
        
        /// 转账金额
        public let transferAmount: UInt64
        
        /// 主播ID（与主播业务ID不能同时为空，两者都填取主播ID）
        public let anchorId: String
        
        /// 请求预留字段，原样透传返回
        public let reqReserved: String?
        
        /// 业务备注
        public let remark: String?
        
        /// 主播名称。如果该字段填入，则会对AnchorName和AnchorId/Uid进行校验。
        public let anchorName: String?
        
        /// 主播业务ID（与主播ID不能同时为空，两者都填取主播ID）
        public let uid: String?
        
        /// 转账结果回调通知URL。若不填，则不进行回调。
        public let notifyUrl: String?
        
        public init (transferType: UInt64, orderId: String, transferAmount: UInt64, anchorId: String, reqReserved: String?, remark: String?, anchorName: String?, uid: String?, notifyUrl: String?) {
            self.transferType = transferType
            self.orderId = orderId
            self.transferAmount = transferAmount
            self.anchorId = anchorId
            self.reqReserved = reqReserved
            self.remark = remark
            self.anchorName = anchorName
            self.uid = uid
            self.notifyUrl = notifyUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case transferType = "TransferType"
            case orderId = "OrderId"
            case transferAmount = "TransferAmount"
            case anchorId = "AnchorId"
            case reqReserved = "ReqReserved"
            case remark = "Remark"
            case anchorName = "AnchorName"
            case uid = "Uid"
            case notifyUrl = "NotifyUrl"
        }
    }
    
    /// CreateSinglePayment返回参数结构体
    public struct CreateSinglePaymentResponse: TCResponseModel {
        /// 错误码
        public let errCode: String
        
        /// 响应消息
        public let errMessage: String
        
        /// 返回数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateSinglePaymentData
        
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