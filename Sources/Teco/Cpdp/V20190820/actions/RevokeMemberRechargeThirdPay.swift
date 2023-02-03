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
    /// RevokeMemberRechargeThirdPay请求参数结构体
    public struct RevokeMemberRechargeThirdPayRequest: TCRequestModel {
        /// STRING(52)，原充值的前置流水号
        public let oldFillFrontSeqNo: String

        /// STRING(20)，原充值的支付渠道类型
        public let oldFillPayChannelType: String

        /// STRING(52)，原充值的支付渠道交易流水号
        public let oldPayChannelTranSeqNo: String

        /// STRING(52)，原充值的电商见证宝订单号
        public let oldFillEjzbOrderNo: String

        /// STRING(20)，申请撤销的会员金额
        public let applyCancelMemberAmt: String

        /// STRING(20)，申请撤销的手续费金额
        public let applyCancelCommission: String

        /// String(22)，商户号
        public let mrchCode: String

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

        public init(oldFillFrontSeqNo: String, oldFillPayChannelType: String, oldPayChannelTranSeqNo: String, oldFillEjzbOrderNo: String, applyCancelMemberAmt: String, applyCancelCommission: String, mrchCode: String, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil) {
            self.oldFillFrontSeqNo = oldFillFrontSeqNo
            self.oldFillPayChannelType = oldFillPayChannelType
            self.oldPayChannelTranSeqNo = oldPayChannelTranSeqNo
            self.oldFillEjzbOrderNo = oldFillEjzbOrderNo
            self.applyCancelMemberAmt = applyCancelMemberAmt
            self.applyCancelCommission = applyCancelCommission
            self.mrchCode = mrchCode
            self.remark = remark
            self.reservedMsgOne = reservedMsgOne
            self.reservedMsgTwo = reservedMsgTwo
            self.reservedMsgThree = reservedMsgThree
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case oldFillFrontSeqNo = "OldFillFrontSeqNo"
            case oldFillPayChannelType = "OldFillPayChannelType"
            case oldPayChannelTranSeqNo = "OldPayChannelTranSeqNo"
            case oldFillEjzbOrderNo = "OldFillEjzbOrderNo"
            case applyCancelMemberAmt = "ApplyCancelMemberAmt"
            case applyCancelCommission = "ApplyCancelCommission"
            case mrchCode = "MrchCode"
            case remark = "Remark"
            case reservedMsgOne = "ReservedMsgOne"
            case reservedMsgTwo = "ReservedMsgTwo"
            case reservedMsgThree = "ReservedMsgThree"
            case profile = "Profile"
        }
    }

    /// RevokeMemberRechargeThirdPay返回参数结构体
    public struct RevokeMemberRechargeThirdPayResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// STRING(52)，前置流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frontSeqNo: String?

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
            case reservedMsgOne = "ReservedMsgOne"
            case reservedMsgTwo = "ReservedMsgTwo"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-撤销会员在途充值(经第三方支付渠道)
    ///
    /// 撤销会员在途充值(经第三方支付渠道)
    @inlinable
    public func revokeMemberRechargeThirdPay(_ input: RevokeMemberRechargeThirdPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeMemberRechargeThirdPayResponse> {
        self.client.execute(action: "RevokeMemberRechargeThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-撤销会员在途充值(经第三方支付渠道)
    ///
    /// 撤销会员在途充值(经第三方支付渠道)
    @inlinable
    public func revokeMemberRechargeThirdPay(_ input: RevokeMemberRechargeThirdPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeMemberRechargeThirdPayResponse {
        try await self.client.execute(action: "RevokeMemberRechargeThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-撤销会员在途充值(经第三方支付渠道)
    ///
    /// 撤销会员在途充值(经第三方支付渠道)
    @inlinable
    public func revokeMemberRechargeThirdPay(oldFillFrontSeqNo: String, oldFillPayChannelType: String, oldPayChannelTranSeqNo: String, oldFillEjzbOrderNo: String, applyCancelMemberAmt: String, applyCancelCommission: String, mrchCode: String, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeMemberRechargeThirdPayResponse> {
        let input = RevokeMemberRechargeThirdPayRequest(oldFillFrontSeqNo: oldFillFrontSeqNo, oldFillPayChannelType: oldFillPayChannelType, oldPayChannelTranSeqNo: oldPayChannelTranSeqNo, oldFillEjzbOrderNo: oldFillEjzbOrderNo, applyCancelMemberAmt: applyCancelMemberAmt, applyCancelCommission: applyCancelCommission, mrchCode: mrchCode, remark: remark, reservedMsgOne: reservedMsgOne, reservedMsgTwo: reservedMsgTwo, reservedMsgThree: reservedMsgThree, profile: profile)
        return self.client.execute(action: "RevokeMemberRechargeThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-撤销会员在途充值(经第三方支付渠道)
    ///
    /// 撤销会员在途充值(经第三方支付渠道)
    @inlinable
    public func revokeMemberRechargeThirdPay(oldFillFrontSeqNo: String, oldFillPayChannelType: String, oldPayChannelTranSeqNo: String, oldFillEjzbOrderNo: String, applyCancelMemberAmt: String, applyCancelCommission: String, mrchCode: String, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeMemberRechargeThirdPayResponse {
        let input = RevokeMemberRechargeThirdPayRequest(oldFillFrontSeqNo: oldFillFrontSeqNo, oldFillPayChannelType: oldFillPayChannelType, oldPayChannelTranSeqNo: oldPayChannelTranSeqNo, oldFillEjzbOrderNo: oldFillEjzbOrderNo, applyCancelMemberAmt: applyCancelMemberAmt, applyCancelCommission: applyCancelCommission, mrchCode: mrchCode, remark: remark, reservedMsgOne: reservedMsgOne, reservedMsgTwo: reservedMsgTwo, reservedMsgThree: reservedMsgThree, profile: profile)
        return try await self.client.execute(action: "RevokeMemberRechargeThirdPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
