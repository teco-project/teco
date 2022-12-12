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
    /// Refund请求参数结构体
    public struct RefundRequest: TCRequestModel {
        /// 用户ID，长度不小于5位， 仅支持字母和数字的组合
        public let userId: String
        
        /// 退款订单号，仅支持数字、 字母、下划线（_）、横杠字 符（-）、点（.）的组合
        public let refundId: String
        
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String
        
        /// 退款金额，单位：分。备注：当该字段为空或者为0 时，系统会默认使用订单当 实付金额作为退款金额
        public let totalRefundAmt: Int64
        
        /// 聚鑫分配的安全ID
        public let midasSecretId: String
        
        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String
        
        /// 商品订单，仅支持数字、字 母、下划线（_）、横杠字符 （-）、点（.）的组合。  OutTradeNo ,TransactionId 二选一,不能都为空,优先使用 OutTradeNo
        public let outTradeNo: String?
        
        /// 结算应收金额，单位：分
        public let mchRefundAmt: Int64?
        
        /// 调用下单接口获取的聚鑫交 易订单。  OutTradeNo ,TransactionId 二选一,不能都为空,优先使用 OutTradeNo
        public let transactionId: String?
        
        /// 平台应收金额，单位：分
        public let platformRefundAmt: Int64?
        
        /// 支持多个子订单批量退款单 个子订单退款支持传 SubOutTradeNo ，也支持传 SubOutTradeNoList ，都传的时候以 SubOutTradeNoList 为准。  如果传了子单退款细节，外 部不需要再传退款金额，平 台应退，商户应退金额，我 们可以直接根据子单退款算出来总和。
        public let subOrderRefundList: [RefundOutSubOrderRefundList]?
        
        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let midasEnvironment: String?
        
        public init (userId: String, refundId: String, midasAppId: String, totalRefundAmt: Int64, midasSecretId: String, midasSignature: String, outTradeNo: String? = nil, mchRefundAmt: Int64? = nil, transactionId: String? = nil, platformRefundAmt: Int64? = nil, subOrderRefundList: [RefundOutSubOrderRefundList]? = nil, midasEnvironment: String? = nil) {
            self.userId = userId
            self.refundId = refundId
            self.midasAppId = midasAppId
            self.totalRefundAmt = totalRefundAmt
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.outTradeNo = outTradeNo
            self.mchRefundAmt = mchRefundAmt
            self.transactionId = transactionId
            self.platformRefundAmt = platformRefundAmt
            self.subOrderRefundList = subOrderRefundList
            self.midasEnvironment = midasEnvironment
        }
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case refundId = "RefundId"
            case midasAppId = "MidasAppId"
            case totalRefundAmt = "TotalRefundAmt"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case outTradeNo = "OutTradeNo"
            case mchRefundAmt = "MchRefundAmt"
            case transactionId = "TransactionId"
            case platformRefundAmt = "PlatformRefundAmt"
            case subOrderRefundList = "SubOrderRefundList"
            case midasEnvironment = "MidasEnvironment"
        }
    }
    
    /// Refund返回参数结构体
    public struct RefundResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 聚鑫-退款接口
    ///
    /// 如交易订单需退款，可以通过本接口将支付款全部或部分退还给付款方，聚鑫将在收到退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。最长支持1年的订单退款。在订单包含多个子订单的情况下，如果使用本接口传入OutTradeNo或TransactionId退款，则只支持全单退款；如果需要部分退款，请通过传入子订单的方式来指定部分金额退款。 
    @inlinable
    public func refund(_ input: RefundRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RefundResponse > {
        self.client.execute(action: "Refund", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 聚鑫-退款接口
    ///
    /// 如交易订单需退款，可以通过本接口将支付款全部或部分退还给付款方，聚鑫将在收到退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。最长支持1年的订单退款。在订单包含多个子订单的情况下，如果使用本接口传入OutTradeNo或TransactionId退款，则只支持全单退款；如果需要部分退款，请通过传入子订单的方式来指定部分金额退款。 
    @inlinable
    public func refund(_ input: RefundRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundResponse {
        try await self.client.execute(action: "Refund", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
