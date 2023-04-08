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

import TecoCore

extension Cpdp {
    /// ModifyMntMbrBindRelateAcctBankCode请求参数结构体
    public struct ModifyMntMbrBindRelateAcctBankCodeRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String

        /// STRING(50)，见证子账户的账号
        public let subAcctNo: String

        /// STRING(50)，会员绑定账号
        public let memberBindAcctNo: String

        /// STRING(150)，开户行名称（若大小额行号不填则送超级网银号对应的银行名称，若填大小额行号则送大小额行号对应的银行名称）
        public let acctOpenBranchName: String

        /// STRING(20)，大小额行号（CnapsBranchId和EiconBankBranchId两者二选一必填）
        public let cnapsBranchId: String?

        /// STRING(20)，超级网银行号
        public let eiconBankBranchId: String?

        /// STRING(1027)，保留域
        public let reservedMsg: String?

        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?

        public init(mrchCode: String, subAcctNo: String, memberBindAcctNo: String, acctOpenBranchName: String, cnapsBranchId: String? = nil, eiconBankBranchId: String? = nil, reservedMsg: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.subAcctNo = subAcctNo
            self.memberBindAcctNo = memberBindAcctNo
            self.acctOpenBranchName = acctOpenBranchName
            self.cnapsBranchId = cnapsBranchId
            self.eiconBankBranchId = eiconBankBranchId
            self.reservedMsg = reservedMsg
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case subAcctNo = "SubAcctNo"
            case memberBindAcctNo = "MemberBindAcctNo"
            case acctOpenBranchName = "AcctOpenBranchName"
            case cnapsBranchId = "CnapsBranchId"
            case eiconBankBranchId = "EiconBankBranchId"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }

    /// ModifyMntMbrBindRelateAcctBankCode返回参数结构体
    public struct ModifyMntMbrBindRelateAcctBankCodeResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// STRING(1027)，保留域
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

    /// 云鉴-维护会员绑定提现账户联行号
    ///
    /// 维护会员绑定提现账户联行号。此接口可以支持市场修改会员的提现账户的开户行信息，具体包括开户行行名、开户行的银行联行号（大小额联行号）和超级网银行号。
    @inlinable
    public func modifyMntMbrBindRelateAcctBankCode(_ input: ModifyMntMbrBindRelateAcctBankCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMntMbrBindRelateAcctBankCodeResponse> {
        self.client.execute(action: "ModifyMntMbrBindRelateAcctBankCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-维护会员绑定提现账户联行号
    ///
    /// 维护会员绑定提现账户联行号。此接口可以支持市场修改会员的提现账户的开户行信息，具体包括开户行行名、开户行的银行联行号（大小额联行号）和超级网银行号。
    @inlinable
    public func modifyMntMbrBindRelateAcctBankCode(_ input: ModifyMntMbrBindRelateAcctBankCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMntMbrBindRelateAcctBankCodeResponse {
        try await self.client.execute(action: "ModifyMntMbrBindRelateAcctBankCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-维护会员绑定提现账户联行号
    ///
    /// 维护会员绑定提现账户联行号。此接口可以支持市场修改会员的提现账户的开户行信息，具体包括开户行行名、开户行的银行联行号（大小额联行号）和超级网银行号。
    @inlinable
    public func modifyMntMbrBindRelateAcctBankCode(mrchCode: String, subAcctNo: String, memberBindAcctNo: String, acctOpenBranchName: String, cnapsBranchId: String? = nil, eiconBankBranchId: String? = nil, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMntMbrBindRelateAcctBankCodeResponse> {
        self.modifyMntMbrBindRelateAcctBankCode(.init(mrchCode: mrchCode, subAcctNo: subAcctNo, memberBindAcctNo: memberBindAcctNo, acctOpenBranchName: acctOpenBranchName, cnapsBranchId: cnapsBranchId, eiconBankBranchId: eiconBankBranchId, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-维护会员绑定提现账户联行号
    ///
    /// 维护会员绑定提现账户联行号。此接口可以支持市场修改会员的提现账户的开户行信息，具体包括开户行行名、开户行的银行联行号（大小额联行号）和超级网银行号。
    @inlinable
    public func modifyMntMbrBindRelateAcctBankCode(mrchCode: String, subAcctNo: String, memberBindAcctNo: String, acctOpenBranchName: String, cnapsBranchId: String? = nil, eiconBankBranchId: String? = nil, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMntMbrBindRelateAcctBankCodeResponse {
        try await self.modifyMntMbrBindRelateAcctBankCode(.init(mrchCode: mrchCode, subAcctNo: subAcctNo, memberBindAcctNo: memberBindAcctNo, acctOpenBranchName: acctOpenBranchName, cnapsBranchId: cnapsBranchId, eiconBankBranchId: eiconBankBranchId, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
