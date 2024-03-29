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

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// RegisterBillSupportWithdraw请求参数结构体
    public struct RegisterBillSupportWithdrawRequest: TCRequest {
        /// STRING(32)，交易网会员代码
        public let tranNetMemberCode: String

        /// STRING(50)，订单号
        public let orderNo: String

        /// STRING(20)，挂账金额（包含交易费用）
        public let suspendAmt: String

        /// STRING(20)，交易费用（暂未使用，默认传0.0）
        public let tranFee: String

        /// String(22)，商户号（签约客户号）
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

        public init(tranNetMemberCode: String, orderNo: String, suspendAmt: String, tranFee: String, mrchCode: String, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil) {
            self.tranNetMemberCode = tranNetMemberCode
            self.orderNo = orderNo
            self.suspendAmt = suspendAmt
            self.tranFee = tranFee
            self.mrchCode = mrchCode
            self.remark = remark
            self.reservedMsgOne = reservedMsgOne
            self.reservedMsgTwo = reservedMsgTwo
            self.reservedMsgThree = reservedMsgThree
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case tranNetMemberCode = "TranNetMemberCode"
            case orderNo = "OrderNo"
            case suspendAmt = "SuspendAmt"
            case tranFee = "TranFee"
            case mrchCode = "MrchCode"
            case remark = "Remark"
            case reservedMsgOne = "ReservedMsgOne"
            case reservedMsgTwo = "ReservedMsgTwo"
            case reservedMsgThree = "ReservedMsgThree"
            case profile = "Profile"
        }
    }

    /// RegisterBillSupportWithdraw返回参数结构体
    public struct RegisterBillSupportWithdrawResponse: TCResponse {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// STRING(52)，见证系统流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frontSeqNo: String?

        /// String(22)，交易流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cnsmrSeqNo: String?

        /// STRING(1027)，保留域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case txnReturnCode = "TxnReturnCode"
            case txnReturnMsg = "TxnReturnMsg"
            case frontSeqNo = "FrontSeqNo"
            case cnsmrSeqNo = "CnsmrSeqNo"
            case reservedMsg = "ReservedMsg"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-登记挂账
    ///
    /// 登记挂账(支持撤销)。此接口可实现把不明来账或自有资金等已登记在挂账子账户下的资金调整到普通会员子账户。即通过申请调用此接口，将会减少挂账子账户的资金，调增指定的普通会员子账户的可提现余额及可用余额。此接口不支持把挂账子账户资金清分到功能子账户。
    @inlinable
    public func registerBillSupportWithdraw(_ input: RegisterBillSupportWithdrawRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterBillSupportWithdrawResponse> {
        self.client.execute(action: "RegisterBillSupportWithdraw", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-登记挂账
    ///
    /// 登记挂账(支持撤销)。此接口可实现把不明来账或自有资金等已登记在挂账子账户下的资金调整到普通会员子账户。即通过申请调用此接口，将会减少挂账子账户的资金，调增指定的普通会员子账户的可提现余额及可用余额。此接口不支持把挂账子账户资金清分到功能子账户。
    @inlinable
    public func registerBillSupportWithdraw(_ input: RegisterBillSupportWithdrawRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterBillSupportWithdrawResponse {
        try await self.client.execute(action: "RegisterBillSupportWithdraw", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-登记挂账
    ///
    /// 登记挂账(支持撤销)。此接口可实现把不明来账或自有资金等已登记在挂账子账户下的资金调整到普通会员子账户。即通过申请调用此接口，将会减少挂账子账户的资金，调增指定的普通会员子账户的可提现余额及可用余额。此接口不支持把挂账子账户资金清分到功能子账户。
    @inlinable
    public func registerBillSupportWithdraw(tranNetMemberCode: String, orderNo: String, suspendAmt: String, tranFee: String, mrchCode: String, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterBillSupportWithdrawResponse> {
        self.registerBillSupportWithdraw(.init(tranNetMemberCode: tranNetMemberCode, orderNo: orderNo, suspendAmt: suspendAmt, tranFee: tranFee, mrchCode: mrchCode, remark: remark, reservedMsgOne: reservedMsgOne, reservedMsgTwo: reservedMsgTwo, reservedMsgThree: reservedMsgThree, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-登记挂账
    ///
    /// 登记挂账(支持撤销)。此接口可实现把不明来账或自有资金等已登记在挂账子账户下的资金调整到普通会员子账户。即通过申请调用此接口，将会减少挂账子账户的资金，调增指定的普通会员子账户的可提现余额及可用余额。此接口不支持把挂账子账户资金清分到功能子账户。
    @inlinable
    public func registerBillSupportWithdraw(tranNetMemberCode: String, orderNo: String, suspendAmt: String, tranFee: String, mrchCode: String, remark: String? = nil, reservedMsgOne: String? = nil, reservedMsgTwo: String? = nil, reservedMsgThree: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterBillSupportWithdrawResponse {
        try await self.registerBillSupportWithdraw(.init(tranNetMemberCode: tranNetMemberCode, orderNo: orderNo, suspendAmt: suspendAmt, tranFee: tranFee, mrchCode: mrchCode, remark: remark, reservedMsgOne: reservedMsgOne, reservedMsgTwo: reservedMsgTwo, reservedMsgThree: reservedMsgThree, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
