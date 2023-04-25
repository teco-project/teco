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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// BindRelateAccReUnionPay请求参数结构体
    public struct BindRelateAccReUnionPayRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String

        /// STRING(32)，交易网会员代码（若需要把一个待绑定账户关联到两个会员名下，此字段可上送两个会员的交易网代码，并且须用“|::|”（右侧）进行分隔）
        public let tranNetMemberCode: String

        /// STRING(50)，会员的待绑定账户的账号（即 BindRelateAcctUnionPay接口中的“会员的待绑定账户的账号”）
        public let memberAcctNo: String

        /// STRING(20)，短信验证码（即 BindRelateAcctUnionPay接口中的手机所接收到的短信验证码）
        public let messageCheckCode: String

        /// STRING(1027)，保留域
        public let reservedMsg: String?

        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?

        public init(mrchCode: String, tranNetMemberCode: String, memberAcctNo: String, messageCheckCode: String, reservedMsg: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.tranNetMemberCode = tranNetMemberCode
            self.memberAcctNo = memberAcctNo
            self.messageCheckCode = messageCheckCode
            self.reservedMsg = reservedMsg
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case tranNetMemberCode = "TranNetMemberCode"
            case memberAcctNo = "MemberAcctNo"
            case messageCheckCode = "MessageCheckCode"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }

    /// BindRelateAccReUnionPay返回参数结构体
    public struct BindRelateAccReUnionPayResponse: TCResponseModel {
        /// STRING(52)，见证系统流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frontSeqNo: String?

        /// STRING(1027)，保留域
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
            case frontSeqNo = "FrontSeqNo"
            case reservedMsg = "ReservedMsg"
            case txnReturnCode = "TxnReturnCode"
            case txnReturnMsg = "TxnReturnMsg"
            case cnsmrSeqNo = "CnsmrSeqNo"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-会员绑定提现账户-回填银联鉴权短信码
    ///
    /// 会员绑定提现账户-回填银联鉴权短信码。用于会员填写动态验证码后，发往银行进行验证，验证成功则完成绑定。
    @inlinable
    public func bindRelateAccReUnionPay(_ input: BindRelateAccReUnionPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindRelateAccReUnionPayResponse> {
        self.client.execute(action: "BindRelateAccReUnionPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员绑定提现账户-回填银联鉴权短信码
    ///
    /// 会员绑定提现账户-回填银联鉴权短信码。用于会员填写动态验证码后，发往银行进行验证，验证成功则完成绑定。
    @inlinable
    public func bindRelateAccReUnionPay(_ input: BindRelateAccReUnionPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindRelateAccReUnionPayResponse {
        try await self.client.execute(action: "BindRelateAccReUnionPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-会员绑定提现账户-回填银联鉴权短信码
    ///
    /// 会员绑定提现账户-回填银联鉴权短信码。用于会员填写动态验证码后，发往银行进行验证，验证成功则完成绑定。
    @inlinable
    public func bindRelateAccReUnionPay(mrchCode: String, tranNetMemberCode: String, memberAcctNo: String, messageCheckCode: String, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindRelateAccReUnionPayResponse> {
        self.bindRelateAccReUnionPay(.init(mrchCode: mrchCode, tranNetMemberCode: tranNetMemberCode, memberAcctNo: memberAcctNo, messageCheckCode: messageCheckCode, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-会员绑定提现账户-回填银联鉴权短信码
    ///
    /// 会员绑定提现账户-回填银联鉴权短信码。用于会员填写动态验证码后，发往银行进行验证，验证成功则完成绑定。
    @inlinable
    public func bindRelateAccReUnionPay(mrchCode: String, tranNetMemberCode: String, memberAcctNo: String, messageCheckCode: String, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindRelateAccReUnionPayResponse {
        try await self.bindRelateAccReUnionPay(.init(mrchCode: mrchCode, tranNetMemberCode: tranNetMemberCode, memberAcctNo: memberAcctNo, messageCheckCode: messageCheckCode, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
