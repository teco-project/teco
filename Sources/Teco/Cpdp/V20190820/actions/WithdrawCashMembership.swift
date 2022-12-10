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
    /// 云鉴-会员提现-不验证
    ///
    /// 会员提现-不验证。此接口受理会员发起的提现申请。会员子账户的可提现余额、可用余额会减少，市场的资金汇总账户(监管账户)会减少相应的发生金额，提现到会员申请的收款账户。		
    @inlinable
    public func withdrawCashMembership(_ input: WithdrawCashMembershipRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < WithdrawCashMembershipResponse > {
        self.client.execute(action: "WithdrawCashMembership", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云鉴-会员提现-不验证
    ///
    /// 会员提现-不验证。此接口受理会员发起的提现申请。会员子账户的可提现余额、可用余额会减少，市场的资金汇总账户(监管账户)会减少相应的发生金额，提现到会员申请的收款账户。		
    @inlinable
    public func withdrawCashMembership(_ input: WithdrawCashMembershipRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> WithdrawCashMembershipResponse {
        try await self.client.execute(action: "WithdrawCashMembership", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// WithdrawCashMembership请求参数结构体
    public struct WithdrawCashMembershipRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String
        
        /// STRING(150)，交易网名称（市场名称）
        public let tranWebName: String
        
        /// STRING(5)，会员证件类型（详情见“常见问题”）
        public let memberGlobalType: String
        
        /// STRING(32)，会员证件号码
        public let memberGlobalId: String
        
        /// STRING(32)，交易网会员代码
        public let tranNetMemberCode: String
        
        /// STRING(150)，会员名称
        public let memberName: String
        
        /// STRING(50)，提现账号（银行卡）
        public let takeCashAcctNo: String
        
        /// STRING(150)，出金账户名称（银行卡户名）
        public let outAmtAcctName: String
        
        /// STRING(3)，币种（默认为RMB）
        public let ccy: String
        
        /// STRING(20)，可提现金额
        public let cashAmt: String
        
        /// STRING(300)，备注（建议可送订单号，可在对账文件的备注字段获取到）
        public let remark: String?
        
        /// STRING(1027)，保留域
        public let reservedMsg: String?
        
        /// STRING(300)，网银签名
        public let webSign: String?
        
        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?
        
        public init (mrchCode: String, tranWebName: String, memberGlobalType: String, memberGlobalId: String, tranNetMemberCode: String, memberName: String, takeCashAcctNo: String, outAmtAcctName: String, ccy: String, cashAmt: String, remark: String?, reservedMsg: String?, webSign: String?, profile: String?) {
            self.mrchCode = mrchCode
            self.tranWebName = tranWebName
            self.memberGlobalType = memberGlobalType
            self.memberGlobalId = memberGlobalId
            self.tranNetMemberCode = tranNetMemberCode
            self.memberName = memberName
            self.takeCashAcctNo = takeCashAcctNo
            self.outAmtAcctName = outAmtAcctName
            self.ccy = ccy
            self.cashAmt = cashAmt
            self.remark = remark
            self.reservedMsg = reservedMsg
            self.webSign = webSign
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case tranWebName = "TranWebName"
            case memberGlobalType = "MemberGlobalType"
            case memberGlobalId = "MemberGlobalId"
            case tranNetMemberCode = "TranNetMemberCode"
            case memberName = "MemberName"
            case takeCashAcctNo = "TakeCashAcctNo"
            case outAmtAcctName = "OutAmtAcctName"
            case ccy = "Ccy"
            case cashAmt = "CashAmt"
            case remark = "Remark"
            case reservedMsg = "ReservedMsg"
            case webSign = "WebSign"
            case profile = "Profile"
        }
    }
    
    /// WithdrawCashMembership返回参数结构体
    public struct WithdrawCashMembershipResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String
        
        /// String(100)，返回信息
        public let txnReturnMsg: String
        
        /// String(22)，交易流水号
        public let cnsmrSeqNo: String
        
        /// STRING(52)，见证系统流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frontSeqNo: String?
        
        /// STRING(20)，转账手续费（固定返回0.00）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let transferFee: String?
        
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
            case transferFee = "TransferFee"
            case reservedMsg = "ReservedMsg"
            case requestId = "RequestId"
        }
    }
}