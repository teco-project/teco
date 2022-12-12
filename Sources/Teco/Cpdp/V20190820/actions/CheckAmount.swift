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
    /// CheckAmount请求参数结构体
    public struct CheckAmountRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String
        
        /// STRING(32)，交易网会员代码（若需要把一个待绑定账户关联到两个会员名下，此字段可上送两个会员的交易网代码，并且须用“|::|”(右侧)进行分隔）
        public let tranNetMemberCode: String
        
        /// STRING(50)，会员的待绑定账户的账号（即 BindRelateAcctSmallAmount接口中的“会员的待绑定账户的账号”）
        public let takeCashAcctNo: String
        
        /// STRING(20)，鉴权验证金额（即 BindRelateAcctSmallAmount接口中的“会员的待绑定账户收到的验证金额。原小额转账鉴权方式为来账鉴权的情况下此字段须赋值为0.00）
        public let authAmt: String
        
        /// STRING(3)，币种（默认为RMB）
        public let ccy: String
        
        /// STRING(1027)，原小额转账方式（1: 往账鉴权，此为默认值; 2: 来账鉴权）
        public let reservedMsg: String?
        
        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?
        
        public init (mrchCode: String, tranNetMemberCode: String, takeCashAcctNo: String, authAmt: String, ccy: String, reservedMsg: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.tranNetMemberCode = tranNetMemberCode
            self.takeCashAcctNo = takeCashAcctNo
            self.authAmt = authAmt
            self.ccy = ccy
            self.reservedMsg = reservedMsg
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case tranNetMemberCode = "TranNetMemberCode"
            case takeCashAcctNo = "TakeCashAcctNo"
            case authAmt = "AuthAmt"
            case ccy = "Ccy"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }
    
    /// CheckAmount返回参数结构体
    public struct CheckAmountResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String
        
        /// String(100)，返回信息
        public let txnReturnMsg: String
        
        /// String(22)，交易流水号
        public let cnsmrSeqNo: String
        
        /// STRING(52)，见证系统流水号（即电商见证宝系统生成的流水号，可关联具体一笔请求）
        public let frontSeqNo: String
        
        /// STRING(1027)，保留域
        public let reservedMsg: String
        
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
    
    /// 云鉴-验证鉴权金额
    ///
    /// 验证鉴权金额。此接口可受理BindRelateAcctSmallAmount接口发起的转账金额（往账鉴权方式）的验证处理。若所回填的验证金额验证通过，则会绑定原申请中的银行账户作为提现账户。通过此接口也可以查得BindRelateAcctSmallAmount接口发起的来账鉴权方式的申请的当前状态。
    @inlinable
    public func checkAmount(_ input: CheckAmountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckAmountResponse > {
        self.client.execute(action: "CheckAmount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云鉴-验证鉴权金额
    ///
    /// 验证鉴权金额。此接口可受理BindRelateAcctSmallAmount接口发起的转账金额（往账鉴权方式）的验证处理。若所回填的验证金额验证通过，则会绑定原申请中的银行账户作为提现账户。通过此接口也可以查得BindRelateAcctSmallAmount接口发起的来账鉴权方式的申请的当前状态。
    @inlinable
    public func checkAmount(_ input: CheckAmountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckAmountResponse {
        try await self.client.execute(action: "CheckAmount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
