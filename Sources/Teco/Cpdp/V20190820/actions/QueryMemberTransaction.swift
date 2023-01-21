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
    /// QueryMemberTransaction请求参数结构体
    public struct QueryMemberTransactionRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String

        /// STRING(2)，功能标志（1: 下单预支付; 2: 确认并付款; 3: 退款; 6: 直接支付T+1; 9: 直接支付T+0）
        public let functionFlag: String

        /// STRING(50)，转出方的见证子账户的账号（付款方）
        public let outSubAcctNo: String

        /// STRING(32)，转出方的交易网会员代码
        public let outMemberCode: String

        /// STRING(150)，转出方的见证子账户的户名（户名是绑卡时上送的账户名称，如果未绑卡，就送OpenCustAcctId接口上送的用户昵称UserNickname）
        public let outSubAcctName: String

        /// STRING(50)，转入方的见证子账户的账号（收款方）
        public let inSubAcctNo: String

        /// STRING(32)，转入方的交易网会员代码
        public let inMemberCode: String

        /// STRING(150)，转入方的见证子账户的户名（户名是绑卡时上送的账户名称，如果未绑卡，就送OpenCustAcctId接口上送的用户昵称UserNickname）
        public let inSubAcctName: String

        /// STRING(20)，交易金额
        public let tranAmt: String

        /// STRING(20)，交易费用（平台收取交易费用）
        public let tranFee: String

        /// STRING(20)，交易类型（01: 普通交易）
        public let tranType: String

        /// STRING(3)，币种（默认: RMB）
        public let ccy: String

        /// STRING(50)，订单号（功能标志为1,2,3时必输）
        public let orderNo: String?

        /// STRING(500)，订单内容
        public let orderContent: String?

        /// STRING(300)，备注（建议可送订单号，可在对账文件的备注字段获取到）
        public let remark: String?

        /// STRING(1027)，保留域（若需短信验证码则此项必输短信指令号）
        public let reservedMsg: String?

        /// STRING(300)，网银签名（若需短信验证码则此项必输）
        public let webSign: String?

        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?

        public init(mrchCode: String, functionFlag: String, outSubAcctNo: String, outMemberCode: String, outSubAcctName: String, inSubAcctNo: String, inMemberCode: String, inSubAcctName: String, tranAmt: String, tranFee: String, tranType: String, ccy: String, orderNo: String? = nil, orderContent: String? = nil, remark: String? = nil, reservedMsg: String? = nil, webSign: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.functionFlag = functionFlag
            self.outSubAcctNo = outSubAcctNo
            self.outMemberCode = outMemberCode
            self.outSubAcctName = outSubAcctName
            self.inSubAcctNo = inSubAcctNo
            self.inMemberCode = inMemberCode
            self.inSubAcctName = inSubAcctName
            self.tranAmt = tranAmt
            self.tranFee = tranFee
            self.tranType = tranType
            self.ccy = ccy
            self.orderNo = orderNo
            self.orderContent = orderContent
            self.remark = remark
            self.reservedMsg = reservedMsg
            self.webSign = webSign
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case functionFlag = "FunctionFlag"
            case outSubAcctNo = "OutSubAcctNo"
            case outMemberCode = "OutMemberCode"
            case outSubAcctName = "OutSubAcctName"
            case inSubAcctNo = "InSubAcctNo"
            case inMemberCode = "InMemberCode"
            case inSubAcctName = "InSubAcctName"
            case tranAmt = "TranAmt"
            case tranFee = "TranFee"
            case tranType = "TranType"
            case ccy = "Ccy"
            case orderNo = "OrderNo"
            case orderContent = "OrderContent"
            case remark = "Remark"
            case reservedMsg = "ReservedMsg"
            case webSign = "WebSign"
            case profile = "Profile"
        }
    }

    /// QueryMemberTransaction返回参数结构体
    public struct QueryMemberTransactionResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// STRING(52)，见证系统流水号（即电商见证宝系统生成的流水号，可关联具体一笔请求）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frontSeqNo: String?

        /// STRING(1027)，保留域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case txnReturnCode = "TxnReturnCode"
            case txnReturnMsg = "TxnReturnMsg"
            case cnsmrSeqNo = "CnsmrSeqNo"
            case frontSeqNo = "FrontSeqNo"
            case reservedMsg = "ReservedMsg"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-会员间交易-不验证
    ///
    /// 会员间交易-不验证。此接口可以实现会员间的余额的交易，实现资金在会员之间流动。
    @inlinable
    public func queryMemberTransaction(_ input: QueryMemberTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMemberTransactionResponse> {
        self.client.execute(action: "QueryMemberTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员间交易-不验证
    ///
    /// 会员间交易-不验证。此接口可以实现会员间的余额的交易，实现资金在会员之间流动。
    @inlinable
    public func queryMemberTransaction(_ input: QueryMemberTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMemberTransactionResponse {
        try await self.client.execute(action: "QueryMemberTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-会员间交易-不验证
    ///
    /// 会员间交易-不验证。此接口可以实现会员间的余额的交易，实现资金在会员之间流动。
    @inlinable
    public func queryMemberTransaction(mrchCode: String, functionFlag: String, outSubAcctNo: String, outMemberCode: String, outSubAcctName: String, inSubAcctNo: String, inMemberCode: String, inSubAcctName: String, tranAmt: String, tranFee: String, tranType: String, ccy: String, orderNo: String? = nil, orderContent: String? = nil, remark: String? = nil, reservedMsg: String? = nil, webSign: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMemberTransactionResponse> {
        self.queryMemberTransaction(QueryMemberTransactionRequest(mrchCode: mrchCode, functionFlag: functionFlag, outSubAcctNo: outSubAcctNo, outMemberCode: outMemberCode, outSubAcctName: outSubAcctName, inSubAcctNo: inSubAcctNo, inMemberCode: inMemberCode, inSubAcctName: inSubAcctName, tranAmt: tranAmt, tranFee: tranFee, tranType: tranType, ccy: ccy, orderNo: orderNo, orderContent: orderContent, remark: remark, reservedMsg: reservedMsg, webSign: webSign, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员间交易-不验证
    ///
    /// 会员间交易-不验证。此接口可以实现会员间的余额的交易，实现资金在会员之间流动。
    @inlinable
    public func queryMemberTransaction(mrchCode: String, functionFlag: String, outSubAcctNo: String, outMemberCode: String, outSubAcctName: String, inSubAcctNo: String, inMemberCode: String, inSubAcctName: String, tranAmt: String, tranFee: String, tranType: String, ccy: String, orderNo: String? = nil, orderContent: String? = nil, remark: String? = nil, reservedMsg: String? = nil, webSign: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMemberTransactionResponse {
        try await self.queryMemberTransaction(QueryMemberTransactionRequest(mrchCode: mrchCode, functionFlag: functionFlag, outSubAcctNo: outSubAcctNo, outMemberCode: outMemberCode, outSubAcctName: outSubAcctName, inSubAcctNo: inSubAcctNo, inMemberCode: inMemberCode, inSubAcctName: inSubAcctName, tranAmt: tranAmt, tranFee: tranFee, tranType: tranType, ccy: ccy, orderNo: orderNo, orderContent: orderContent, remark: remark, reservedMsg: reservedMsg, webSign: webSign, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
