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
    /// CreateCustAcctId请求参数结构体
    public struct CreateCustAcctIdRequest: TCRequest {
        /// STRING(2)，功能标志（1: 开户; 3: 销户）
        public let functionFlag: String

        /// STRING(50)，资金汇总账号（即收单资金归集入账的账号）
        public let fundSummaryAcctNo: String

        /// STRING(32)，交易网会员代码（平台端的用户ID，需要保证唯一性，可数字字母混合，如HY_120）
        public let tranNetMemberCode: String

        /// STRING(10)，会员属性（00-普通子账户(默认); SH-商户子账户）
        public let memberProperty: String

        /// STRING(30)，手机号码
        public let mobile: String

        /// String(22)，商户号（签约客户号）
        public let mrchCode: String

        /// String(2)，是否为自营业务（0位非自营，1为自营）
        public let selfBusiness: Bool

        /// String(64)，联系人
        public let contactName: String

        /// String(64)，子账户名称
        public let subAcctName: String

        /// String(64)，子账户简称
        public let subAcctShortName: String

        /// String(4)，子账户类型（0: 个人子账户; 1: 企业子账户）
        public let subAcctType: Int64

        /// STRING(150)，用户昵称
        public let userNickname: String?

        /// STRING(150)，邮箱
        public let email: String?

        /// STRING(1027)，保留域
        public let reservedMsg: String?

        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?

        public init(functionFlag: String, fundSummaryAcctNo: String, tranNetMemberCode: String, memberProperty: String, mobile: String, mrchCode: String, selfBusiness: Bool, contactName: String, subAcctName: String, subAcctShortName: String, subAcctType: Int64, userNickname: String? = nil, email: String? = nil, reservedMsg: String? = nil, profile: String? = nil) {
            self.functionFlag = functionFlag
            self.fundSummaryAcctNo = fundSummaryAcctNo
            self.tranNetMemberCode = tranNetMemberCode
            self.memberProperty = memberProperty
            self.mobile = mobile
            self.mrchCode = mrchCode
            self.selfBusiness = selfBusiness
            self.contactName = contactName
            self.subAcctName = subAcctName
            self.subAcctShortName = subAcctShortName
            self.subAcctType = subAcctType
            self.userNickname = userNickname
            self.email = email
            self.reservedMsg = reservedMsg
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case functionFlag = "FunctionFlag"
            case fundSummaryAcctNo = "FundSummaryAcctNo"
            case tranNetMemberCode = "TranNetMemberCode"
            case memberProperty = "MemberProperty"
            case mobile = "Mobile"
            case mrchCode = "MrchCode"
            case selfBusiness = "SelfBusiness"
            case contactName = "ContactName"
            case subAcctName = "SubAcctName"
            case subAcctShortName = "SubAcctShortName"
            case subAcctType = "SubAcctType"
            case userNickname = "UserNickname"
            case email = "Email"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }

    /// CreateCustAcctId返回参数结构体
    public struct CreateCustAcctIdResponse: TCResponse {
        /// STRING(50)，见证子账户的账号（平台需要记录下来，后续所有接口交互都会用到）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subAcctNo: String?

        /// STRING(1027)，保留域（需要开通智能收款，此处返回智能收款账号，正常情况下返回空）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMsg: String?

        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subAcctNo = "SubAcctNo"
            case reservedMsg = "ReservedMsg"
            case txnReturnCode = "TxnReturnCode"
            case txnReturnMsg = "TxnReturnMsg"
            case cnsmrSeqNo = "CnsmrSeqNo"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-会员子账户开立
    ///
    /// 会员子账户开立。会员在银行注册，并开立会员子账户，交易网会员代码即会员在平台端系统的会员编号。
    /// 平台需保存银行返回的子账户账号，后续交易接口都会用到。会员属性字段为预留扩展字段，当前必须送默认值。
    @inlinable
    public func createCustAcctId(_ input: CreateCustAcctIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustAcctIdResponse> {
        self.client.execute(action: "CreateCustAcctId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员子账户开立
    ///
    /// 会员子账户开立。会员在银行注册，并开立会员子账户，交易网会员代码即会员在平台端系统的会员编号。
    /// 平台需保存银行返回的子账户账号，后续交易接口都会用到。会员属性字段为预留扩展字段，当前必须送默认值。
    @inlinable
    public func createCustAcctId(_ input: CreateCustAcctIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustAcctIdResponse {
        try await self.client.execute(action: "CreateCustAcctId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-会员子账户开立
    ///
    /// 会员子账户开立。会员在银行注册，并开立会员子账户，交易网会员代码即会员在平台端系统的会员编号。
    /// 平台需保存银行返回的子账户账号，后续交易接口都会用到。会员属性字段为预留扩展字段，当前必须送默认值。
    @inlinable
    public func createCustAcctId(functionFlag: String, fundSummaryAcctNo: String, tranNetMemberCode: String, memberProperty: String, mobile: String, mrchCode: String, selfBusiness: Bool, contactName: String, subAcctName: String, subAcctShortName: String, subAcctType: Int64, userNickname: String? = nil, email: String? = nil, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustAcctIdResponse> {
        self.createCustAcctId(.init(functionFlag: functionFlag, fundSummaryAcctNo: fundSummaryAcctNo, tranNetMemberCode: tranNetMemberCode, memberProperty: memberProperty, mobile: mobile, mrchCode: mrchCode, selfBusiness: selfBusiness, contactName: contactName, subAcctName: subAcctName, subAcctShortName: subAcctShortName, subAcctType: subAcctType, userNickname: userNickname, email: email, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员子账户开立
    ///
    /// 会员子账户开立。会员在银行注册，并开立会员子账户，交易网会员代码即会员在平台端系统的会员编号。
    /// 平台需保存银行返回的子账户账号，后续交易接口都会用到。会员属性字段为预留扩展字段，当前必须送默认值。
    @inlinable
    public func createCustAcctId(functionFlag: String, fundSummaryAcctNo: String, tranNetMemberCode: String, memberProperty: String, mobile: String, mrchCode: String, selfBusiness: Bool, contactName: String, subAcctName: String, subAcctShortName: String, subAcctType: Int64, userNickname: String? = nil, email: String? = nil, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustAcctIdResponse {
        try await self.createCustAcctId(.init(functionFlag: functionFlag, fundSummaryAcctNo: fundSummaryAcctNo, tranNetMemberCode: tranNetMemberCode, memberProperty: memberProperty, mobile: mobile, mrchCode: mrchCode, selfBusiness: selfBusiness, contactName: contactName, subAcctName: subAcctName, subAcctShortName: subAcctShortName, subAcctType: subAcctType, userNickname: userNickname, email: email, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
