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
    /// RechargeMemberThirdPay请求参数结构体
    public struct RechargeMemberThirdPayRequest: TCRequestModel {
        /// STRING(32)，交易网会代码
        public let tranNetMemberCode: String

        /// STRING(20)，会员充值金额
        public let memberFillAmt: String

        /// STRING(20)，手续费金额
        public let commission: String

        /// STRING(3)，币种。如RMB
        public let ccy: String

        /// STRING(20)，支付渠道类型。
        /// 0001-微信
        /// 0002-支付宝
        /// 0003-京东支付
        public let payChannelType: String

        /// STRING(50)，支付渠道所分配的商户号
        public let payChannelAssignMerNo: String

        /// STRING(52)，支付渠道交易流水号
        public let payChannelTranSeqNo: String

        /// STRING(52)，电商见证宝订单号
        public let ejzbOrderNo: String

        /// String(22)，商户号
        public let mrchCode: String

        /// STRING(500)，电商见证宝订单内容
        public let ejzbOrderContent: String?

        /// STRING(300)，备注
        public let remark: String?

        /// STRING(300)，保留域1
        public let reservedMsgOne: String?

        /// STRING(300)，保留域2
        public let reservedMsgTwo: String?

        /// STRING(300)，保留域3
        public let reservedMsgThree: String?

        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?

        public init(tranNetMemberCode: String, memberFillAmt: String, commission: String, ccy: String, payChannelType: String, payChannelAssignMerNo: String, payChannelTranSeqNo: String, ejzbOrderNo: String, mrchCode: String, ejzbOrderContent: String? = nil, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil) {
            self.tranNetMemberCode = tranNetMemberCode
            self.memberFillAmt = memberFillAmt
            self.commission = commission
            self.ccy = ccy
            self.payChannelType = payChannelType
            self.payChannelAssignMerNo = payChannelAssignMerNo
            self.payChannelTranSeqNo = payChannelTranSeqNo
            self.ejzbOrderNo = ejzbOrderNo
            self.mrchCode = mrchCode
            self.ejzbOrderContent = ejzbOrderContent
            self.remark = remark
            self.reservedMsgOne = reservedMsgOne
            self.reservedMsgTwo = reservedMsgTwo
            self.reservedMsgThree = reservedMsgThree
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case tranNetMemberCode = "TranNetMemberCode"
            case memberFillAmt = "MemberFillAmt"
            case commission = "Commission"
            case ccy = "Ccy"
            case payChannelType = "PayChannelType"
            case payChannelAssignMerNo = "PayChannelAssignMerNo"
            case payChannelTranSeqNo = "PayChannelTranSeqNo"
            case ejzbOrderNo = "EjzbOrderNo"
            case mrchCode = "MrchCode"
            case ejzbOrderContent = "EjzbOrderContent"
            case remark = "Remark"
            case reservedMsgOne = "ReservedMsgOne"
            case reservedMsgTwo = "ReservedMsgTwo"
            case reservedMsgThree = "ReservedMsgThree"
            case profile = "Profile"
        }
    }

    /// RechargeMemberThirdPay返回参数结构体
    public struct RechargeMemberThirdPayResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// STRING(52)，前置流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frontSeqNo: String?

        /// STRING(20)，会员子账户交易前可用余额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let memberSubAcctPreAvailBal: String?

        /// STRING(300)，保留域1
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMsgOne: String?

        /// STRING(300)，保留域2
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMsgTwo: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case txnReturnCode = "TxnReturnCode"
            case txnReturnMsg = "TxnReturnMsg"
            case cnsmrSeqNo = "CnsmrSeqNo"
            case frontSeqNo = "FrontSeqNo"
            case memberSubAcctPreAvailBal = "MemberSubAcctPreAvailBal"
            case reservedMsgOne = "ReservedMsgOne"
            case reservedMsgTwo = "ReservedMsgTwo"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-会员在途充值(经第三方支付渠道)
    ///
    /// 见证宝-会员在途充值(经第三方支付渠道)
    @inlinable
    public func rechargeMemberThirdPay(_ input: RechargeMemberThirdPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RechargeMemberThirdPayResponse> {
        self.client.execute(action: "RechargeMemberThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员在途充值(经第三方支付渠道)
    ///
    /// 见证宝-会员在途充值(经第三方支付渠道)
    @inlinable
    public func rechargeMemberThirdPay(_ input: RechargeMemberThirdPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RechargeMemberThirdPayResponse {
        try await self.client.execute(action: "RechargeMemberThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-会员在途充值(经第三方支付渠道)
    ///
    /// 见证宝-会员在途充值(经第三方支付渠道)
    @inlinable
    public func rechargeMemberThirdPay(tranNetMemberCode: String, memberFillAmt: String, commission: String, ccy: String, payChannelType: String, payChannelAssignMerNo: String, payChannelTranSeqNo: String, ejzbOrderNo: String, mrchCode: String, ejzbOrderContent: String? = nil, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RechargeMemberThirdPayResponse> {
        self.rechargeMemberThirdPay(.init(tranNetMemberCode: tranNetMemberCode, memberFillAmt: memberFillAmt, commission: commission, ccy: ccy, payChannelType: payChannelType, payChannelAssignMerNo: payChannelAssignMerNo, payChannelTranSeqNo: payChannelTranSeqNo, ejzbOrderNo: ejzbOrderNo, mrchCode: mrchCode, ejzbOrderContent: ejzbOrderContent, remark: remark, reservedMsgOne: reservedMsgOne, reservedMsgTwo: reservedMsgTwo, reservedMsgThree: reservedMsgThree, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员在途充值(经第三方支付渠道)
    ///
    /// 见证宝-会员在途充值(经第三方支付渠道)
    @inlinable
    public func rechargeMemberThirdPay(tranNetMemberCode: String, memberFillAmt: String, commission: String, ccy: String, payChannelType: String, payChannelAssignMerNo: String, payChannelTranSeqNo: String, ejzbOrderNo: String, mrchCode: String, ejzbOrderContent: String? = nil, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RechargeMemberThirdPayResponse {
        try await self.rechargeMemberThirdPay(.init(tranNetMemberCode: tranNetMemberCode, memberFillAmt: memberFillAmt, commission: commission, ccy: ccy, payChannelType: payChannelType, payChannelAssignMerNo: payChannelAssignMerNo, payChannelTranSeqNo: payChannelTranSeqNo, ejzbOrderNo: ejzbOrderNo, mrchCode: mrchCode, ejzbOrderContent: ejzbOrderContent, remark: remark, reservedMsgOne: reservedMsgOne, reservedMsgTwo: reservedMsgTwo, reservedMsgThree: reservedMsgThree, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
