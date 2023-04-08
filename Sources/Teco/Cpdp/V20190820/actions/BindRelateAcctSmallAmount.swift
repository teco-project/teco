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
    /// BindRelateAcctSmallAmount请求参数结构体
    public struct BindRelateAcctSmallAmountRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String

        /// STRING(32)，交易网会员代码（若需要把一个待绑定账户关联到两个会员名下，此字段可上送两个会员的交易网代码，并且须用“|::|”(右侧)进行分隔）
        public let tranNetMemberCode: String

        /// STRING(150)，见证子账户的户名（首次绑定的情况下，此字段即为待绑定的提现账户的户名。非首次绑定的情况下，须注意带绑定的提现账户的户名须与留存在后台系统的会员户名一致）
        public let memberName: String

        /// STRING(5)，会员证件类型（详情见“常见问题”）
        public let memberGlobalType: String

        /// STRING(32)，会员证件号码
        public let memberGlobalId: String

        /// STRING(50)，会员的待绑定账户的账号（提现的银行卡）
        public let memberAcctNo: String

        /// STRING(10)，会员的待绑定账户的本他行类型（1: 本行; 2: 他行）
        public let bankType: String

        /// STRING(150)，会员的待绑定账户的开户行名称
        public let acctOpenBranchName: String

        /// STRING(30)，会员的手机号（手机号须由长度为11位的数字构成）
        public let mobile: String

        /// STRING(20)，会员的待绑定账户的开户行的联行号（本他行类型为他行的情况下，此字段和下一个字段至少一个不为空）
        public let cnapsBranchId: String?

        /// STRING(20)，会员的待绑定账户的开户行的超级网银行号（本他行类型为他行的情况下，此字段和上一个字段至少一个不为空）
        public let eiconBankBranchId: String?

        /// STRING(1027)，转账方式（1: 往账鉴权(默认值); 2: 来账鉴权）
        public let reservedMsg: String?

        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?

        public init(mrchCode: String, tranNetMemberCode: String, memberName: String, memberGlobalType: String, memberGlobalId: String, memberAcctNo: String, bankType: String, acctOpenBranchName: String, mobile: String, cnapsBranchId: String? = nil, eiconBankBranchId: String? = nil, reservedMsg: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.tranNetMemberCode = tranNetMemberCode
            self.memberName = memberName
            self.memberGlobalType = memberGlobalType
            self.memberGlobalId = memberGlobalId
            self.memberAcctNo = memberAcctNo
            self.bankType = bankType
            self.acctOpenBranchName = acctOpenBranchName
            self.mobile = mobile
            self.cnapsBranchId = cnapsBranchId
            self.eiconBankBranchId = eiconBankBranchId
            self.reservedMsg = reservedMsg
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case tranNetMemberCode = "TranNetMemberCode"
            case memberName = "MemberName"
            case memberGlobalType = "MemberGlobalType"
            case memberGlobalId = "MemberGlobalId"
            case memberAcctNo = "MemberAcctNo"
            case bankType = "BankType"
            case acctOpenBranchName = "AcctOpenBranchName"
            case mobile = "Mobile"
            case cnapsBranchId = "CnapsBranchId"
            case eiconBankBranchId = "EiconBankBranchId"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }

    /// BindRelateAcctSmallAmount返回参数结构体
    public struct BindRelateAcctSmallAmountResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// STRING(1027)，保留域（来账鉴权的方式下，此字段的值为客户需往监管账户转入的金额。在同名子账户绑定的场景下，若返回""VERIFIED""则说明无需验证直接绑定成功）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case txnReturnCode = "TxnReturnCode"
            case txnReturnMsg = "TxnReturnMsg"
            case cnsmrSeqNo = "CnsmrSeqNo"
            case reservedMsg = "ReservedMsg"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-会员绑定提现账户-小额鉴权
    ///
    /// 会员绑定提现账户-小额鉴权。会员申请绑定提现账户，绑定后从会员子账户中提现到绑定账户。
    /// 转账鉴权有两种形式：往账鉴权和来账鉴权。
    /// 往账鉴权：该接口发起成功后，银行会向提现账户转入小于等于0.5元的随机金额，并短信通知客户查看，客户查看后，需将收到的金额大小，在电商平台页面上回填，并通知银行。银行验证通过后，完成提现账户绑定。
    /// 来账鉴权：该接口发起成功后，银行以短信通知客户查看，客户查看后，需通过待绑定的账户往市场的监管账户转入短信上指定的金额。银行检索到该笔指定金额的来账是源自待绑定账户，则绑定成功。平安银行的账户，即BankType送1时，大小额行号和超级网银号都不用送。
    @inlinable
    public func bindRelateAcctSmallAmount(_ input: BindRelateAcctSmallAmountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindRelateAcctSmallAmountResponse> {
        self.client.execute(action: "BindRelateAcctSmallAmount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员绑定提现账户-小额鉴权
    ///
    /// 会员绑定提现账户-小额鉴权。会员申请绑定提现账户，绑定后从会员子账户中提现到绑定账户。
    /// 转账鉴权有两种形式：往账鉴权和来账鉴权。
    /// 往账鉴权：该接口发起成功后，银行会向提现账户转入小于等于0.5元的随机金额，并短信通知客户查看，客户查看后，需将收到的金额大小，在电商平台页面上回填，并通知银行。银行验证通过后，完成提现账户绑定。
    /// 来账鉴权：该接口发起成功后，银行以短信通知客户查看，客户查看后，需通过待绑定的账户往市场的监管账户转入短信上指定的金额。银行检索到该笔指定金额的来账是源自待绑定账户，则绑定成功。平安银行的账户，即BankType送1时，大小额行号和超级网银号都不用送。
    @inlinable
    public func bindRelateAcctSmallAmount(_ input: BindRelateAcctSmallAmountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindRelateAcctSmallAmountResponse {
        try await self.client.execute(action: "BindRelateAcctSmallAmount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-会员绑定提现账户-小额鉴权
    ///
    /// 会员绑定提现账户-小额鉴权。会员申请绑定提现账户，绑定后从会员子账户中提现到绑定账户。
    /// 转账鉴权有两种形式：往账鉴权和来账鉴权。
    /// 往账鉴权：该接口发起成功后，银行会向提现账户转入小于等于0.5元的随机金额，并短信通知客户查看，客户查看后，需将收到的金额大小，在电商平台页面上回填，并通知银行。银行验证通过后，完成提现账户绑定。
    /// 来账鉴权：该接口发起成功后，银行以短信通知客户查看，客户查看后，需通过待绑定的账户往市场的监管账户转入短信上指定的金额。银行检索到该笔指定金额的来账是源自待绑定账户，则绑定成功。平安银行的账户，即BankType送1时，大小额行号和超级网银号都不用送。
    @inlinable
    public func bindRelateAcctSmallAmount(mrchCode: String, tranNetMemberCode: String, memberName: String, memberGlobalType: String, memberGlobalId: String, memberAcctNo: String, bankType: String, acctOpenBranchName: String, mobile: String, cnapsBranchId: String? = nil, eiconBankBranchId: String? = nil, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindRelateAcctSmallAmountResponse> {
        self.bindRelateAcctSmallAmount(.init(mrchCode: mrchCode, tranNetMemberCode: tranNetMemberCode, memberName: memberName, memberGlobalType: memberGlobalType, memberGlobalId: memberGlobalId, memberAcctNo: memberAcctNo, bankType: bankType, acctOpenBranchName: acctOpenBranchName, mobile: mobile, cnapsBranchId: cnapsBranchId, eiconBankBranchId: eiconBankBranchId, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员绑定提现账户-小额鉴权
    ///
    /// 会员绑定提现账户-小额鉴权。会员申请绑定提现账户，绑定后从会员子账户中提现到绑定账户。
    /// 转账鉴权有两种形式：往账鉴权和来账鉴权。
    /// 往账鉴权：该接口发起成功后，银行会向提现账户转入小于等于0.5元的随机金额，并短信通知客户查看，客户查看后，需将收到的金额大小，在电商平台页面上回填，并通知银行。银行验证通过后，完成提现账户绑定。
    /// 来账鉴权：该接口发起成功后，银行以短信通知客户查看，客户查看后，需通过待绑定的账户往市场的监管账户转入短信上指定的金额。银行检索到该笔指定金额的来账是源自待绑定账户，则绑定成功。平安银行的账户，即BankType送1时，大小额行号和超级网银号都不用送。
    @inlinable
    public func bindRelateAcctSmallAmount(mrchCode: String, tranNetMemberCode: String, memberName: String, memberGlobalType: String, memberGlobalId: String, memberAcctNo: String, bankType: String, acctOpenBranchName: String, mobile: String, cnapsBranchId: String? = nil, eiconBankBranchId: String? = nil, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindRelateAcctSmallAmountResponse {
        try await self.bindRelateAcctSmallAmount(.init(mrchCode: mrchCode, tranNetMemberCode: tranNetMemberCode, memberName: memberName, memberGlobalType: memberGlobalType, memberGlobalId: memberGlobalId, memberAcctNo: memberAcctNo, bankType: bankType, acctOpenBranchName: acctOpenBranchName, mobile: mobile, cnapsBranchId: cnapsBranchId, eiconBankBranchId: eiconBankBranchId, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
