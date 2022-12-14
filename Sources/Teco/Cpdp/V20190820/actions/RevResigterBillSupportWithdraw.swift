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
    /// RevResigterBillSupportWithdraw请求参数结构体
    public struct RevResigterBillSupportWithdrawRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String

        /// STRING(32)，交易网会员代码
        public let tranNetMemberCode: String

        /// STRING(30)，原订单号（RegisterBillSupportWithdraw接口中的订单号）
        public let oldOrderNo: String

        /// STRING(20)，撤销金额（支持部分撤销，不能大于原订单可用金额，包含交易费用）
        public let cancelAmt: String

        /// STRING(20)，交易费用（暂未使用，默认传0.0）
        public let tranFee: String

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

        public init(mrchCode: String, tranNetMemberCode: String, oldOrderNo: String, cancelAmt: String, tranFee: String, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.tranNetMemberCode = tranNetMemberCode
            self.oldOrderNo = oldOrderNo
            self.cancelAmt = cancelAmt
            self.tranFee = tranFee
            self.remark = remark
            self.reservedMsgOne = reservedMsgOne
            self.reservedMsgTwo = reservedMsgTwo
            self.reservedMsgThree = reservedMsgThree
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case tranNetMemberCode = "TranNetMemberCode"
            case oldOrderNo = "OldOrderNo"
            case cancelAmt = "CancelAmt"
            case tranFee = "TranFee"
            case remark = "Remark"
            case reservedMsgOne = "ReservedMsgOne"
            case reservedMsgTwo = "ReservedMsgTwo"
            case reservedMsgThree = "ReservedMsgThree"
            case profile = "Profile"
        }
    }

    /// RevResigterBillSupportWithdraw返回参数结构体
    public struct RevResigterBillSupportWithdrawResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// STRING(52)，见证系统流水号
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

    /// 云鉴-登记挂账撤销
    ///
    /// 登记挂账撤销。此接口可以实现把RegisterBillSupportWithdraw接口完成的登记挂账进行撤销，即调减普通会员子账户的可提现和可用余额，调增挂账子账户的可用余额。
    @inlinable
    public func revResigterBillSupportWithdraw(_ input: RevResigterBillSupportWithdrawRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RevResigterBillSupportWithdrawResponse > {
        self.client.execute(action: "RevResigterBillSupportWithdraw", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-登记挂账撤销
    ///
    /// 登记挂账撤销。此接口可以实现把RegisterBillSupportWithdraw接口完成的登记挂账进行撤销，即调减普通会员子账户的可提现和可用余额，调增挂账子账户的可用余额。
    @inlinable
    public func revResigterBillSupportWithdraw(_ input: RevResigterBillSupportWithdrawRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevResigterBillSupportWithdrawResponse {
        try await self.client.execute(action: "RevResigterBillSupportWithdraw", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-登记挂账撤销
    ///
    /// 登记挂账撤销。此接口可以实现把RegisterBillSupportWithdraw接口完成的登记挂账进行撤销，即调减普通会员子账户的可提现和可用余额，调增挂账子账户的可用余额。
    @inlinable
    public func revResigterBillSupportWithdraw(mrchCode: String, tranNetMemberCode: String, oldOrderNo: String, cancelAmt: String, tranFee: String, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RevResigterBillSupportWithdrawResponse > {
        self.revResigterBillSupportWithdraw(RevResigterBillSupportWithdrawRequest(mrchCode: mrchCode, tranNetMemberCode: tranNetMemberCode, oldOrderNo: oldOrderNo, cancelAmt: cancelAmt, tranFee: tranFee, remark: remark, reservedMsgOne: reservedMsgOne, reservedMsgTwo: reservedMsgTwo, reservedMsgThree: reservedMsgThree, profile: profile), logger: logger, on: eventLoop)
    }

    /// 云鉴-登记挂账撤销
    ///
    /// 登记挂账撤销。此接口可以实现把RegisterBillSupportWithdraw接口完成的登记挂账进行撤销，即调减普通会员子账户的可提现和可用余额，调增挂账子账户的可用余额。
    @inlinable
    public func revResigterBillSupportWithdraw(mrchCode: String, tranNetMemberCode: String, oldOrderNo: String, cancelAmt: String, tranFee: String, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevResigterBillSupportWithdrawResponse {
        try await self.revResigterBillSupportWithdraw(RevResigterBillSupportWithdrawRequest(mrchCode: mrchCode, tranNetMemberCode: tranNetMemberCode, oldOrderNo: oldOrderNo, cancelAmt: cancelAmt, tranFee: tranFee, remark: remark, reservedMsgOne: reservedMsgOne, reservedMsgTwo: reservedMsgTwo, reservedMsgThree: reservedMsgThree, profile: profile), logger: logger, on: eventLoop)
    }
}
