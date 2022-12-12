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
    /// UnbindRelateAcct请求参数结构体
    public struct UnbindRelateAcctRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String
        
        /// STRING(2)，功能标志（1: 解绑）
        public let functionFlag: String
        
        /// STRING(32)，交易网会员代码（若需要把一个待绑定账户关联到两个会员名下，此字段可上送两个会员的交易网代码，并且须用“|::|”(右侧)进行分隔）
        public let tranNetMemberCode: String
        
        /// STRING(50)，待解绑的提现账户的账号（提现账号）
        public let memberAcctNo: String
        
        /// STRING(1027)，保留域
        public let reservedMsg: String?
        
        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?
        
        public init (mrchCode: String, functionFlag: String, tranNetMemberCode: String, memberAcctNo: String, reservedMsg: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.functionFlag = functionFlag
            self.tranNetMemberCode = tranNetMemberCode
            self.memberAcctNo = memberAcctNo
            self.reservedMsg = reservedMsg
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case functionFlag = "FunctionFlag"
            case tranNetMemberCode = "TranNetMemberCode"
            case memberAcctNo = "MemberAcctNo"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }
    
    /// UnbindRelateAcct返回参数结构体
    public struct UnbindRelateAcctResponse: TCResponseModel {
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
    
    /// 云鉴-会员解绑提现账户
    ///
    /// 会员解绑提现账户。此接口可以支持会员解除名下的绑定账户关系。
    @inlinable
    public func unbindRelateAcct(_ input: UnbindRelateAcctRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UnbindRelateAcctResponse > {
        self.client.execute(action: "UnbindRelateAcct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云鉴-会员解绑提现账户
    ///
    /// 会员解绑提现账户。此接口可以支持会员解除名下的绑定账户关系。
    @inlinable
    public func unbindRelateAcct(_ input: UnbindRelateAcctRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindRelateAcctResponse {
        try await self.client.execute(action: "UnbindRelateAcct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
