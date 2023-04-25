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
    /// QueryCommonTransferRecharge请求参数结构体
    public struct QueryCommonTransferRechargeRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String

        /// STRING(2)，功能标志（1为查询当日数据，0查询历史数据）
        public let functionFlag: String

        /// STRING(8)，开始日期（格式：20190101）
        public let startDate: String

        /// STRING(8)，终止日期（格式：20190101）
        public let endDate: String

        /// STRING(10)，页码（起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后）
        public let pageNum: String

        /// STRING(1027)，保留域
        public let reservedMsg: String?

        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?

        public init(mrchCode: String, functionFlag: String, startDate: String, endDate: String, pageNum: String, reservedMsg: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.functionFlag = functionFlag
            self.startDate = startDate
            self.endDate = endDate
            self.pageNum = pageNum
            self.reservedMsg = reservedMsg
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case functionFlag = "FunctionFlag"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case pageNum = "PageNum"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }

    /// QueryCommonTransferRecharge返回参数结构体
    public struct QueryCommonTransferRechargeResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// STRING(10)，本次交易返回查询结果记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultNum: String?

        /// STRING(30)，起始记录号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startRecordNo: String?

        /// STRING(2)，结束标志（0: 否; 1: 是）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endFlag: String?

        /// STRING(10)，符合业务查询条件的记录总数（重复次数，一次最多返回20条记录）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalNum: String?

        /// 交易信息数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tranItemArray: [TransferItem]?

        /// STRING(1027)，保留域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case txnReturnCode = "TxnReturnCode"
            case txnReturnMsg = "TxnReturnMsg"
            case cnsmrSeqNo = "CnsmrSeqNo"
            case resultNum = "ResultNum"
            case startRecordNo = "StartRecordNo"
            case endFlag = "EndFlag"
            case totalNum = "TotalNum"
            case tranItemArray = "TranItemArray"
            case reservedMsg = "ReservedMsg"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-查询普通转账充值明细
    ///
    /// 查询普通转账充值明细。接口用于查询会员主动转账进资金汇总账户的明细情况。若会员使用绑定账号转入，则直接入账到会员子账户。若未使用绑定账号转入，则系统无法自动清分到对应子账户，则转入挂账子账户由平台自行清分。若是 “见证+收单充值”T0充值记录时备注Note为“见证+收单充值,订单号” 此接口可以查到T0到账的“见证+收单充值”充值记录。
    @inlinable
    public func queryCommonTransferRecharge(_ input: QueryCommonTransferRechargeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCommonTransferRechargeResponse> {
        self.client.execute(action: "QueryCommonTransferRecharge", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-查询普通转账充值明细
    ///
    /// 查询普通转账充值明细。接口用于查询会员主动转账进资金汇总账户的明细情况。若会员使用绑定账号转入，则直接入账到会员子账户。若未使用绑定账号转入，则系统无法自动清分到对应子账户，则转入挂账子账户由平台自行清分。若是 “见证+收单充值”T0充值记录时备注Note为“见证+收单充值,订单号” 此接口可以查到T0到账的“见证+收单充值”充值记录。
    @inlinable
    public func queryCommonTransferRecharge(_ input: QueryCommonTransferRechargeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCommonTransferRechargeResponse {
        try await self.client.execute(action: "QueryCommonTransferRecharge", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-查询普通转账充值明细
    ///
    /// 查询普通转账充值明细。接口用于查询会员主动转账进资金汇总账户的明细情况。若会员使用绑定账号转入，则直接入账到会员子账户。若未使用绑定账号转入，则系统无法自动清分到对应子账户，则转入挂账子账户由平台自行清分。若是 “见证+收单充值”T0充值记录时备注Note为“见证+收单充值,订单号” 此接口可以查到T0到账的“见证+收单充值”充值记录。
    @inlinable
    public func queryCommonTransferRecharge(mrchCode: String, functionFlag: String, startDate: String, endDate: String, pageNum: String, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCommonTransferRechargeResponse> {
        self.queryCommonTransferRecharge(.init(mrchCode: mrchCode, functionFlag: functionFlag, startDate: startDate, endDate: endDate, pageNum: pageNum, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-查询普通转账充值明细
    ///
    /// 查询普通转账充值明细。接口用于查询会员主动转账进资金汇总账户的明细情况。若会员使用绑定账号转入，则直接入账到会员子账户。若未使用绑定账号转入，则系统无法自动清分到对应子账户，则转入挂账子账户由平台自行清分。若是 “见证+收单充值”T0充值记录时备注Note为“见证+收单充值,订单号” 此接口可以查到T0到账的“见证+收单充值”充值记录。
    @inlinable
    public func queryCommonTransferRecharge(mrchCode: String, functionFlag: String, startDate: String, endDate: String, pageNum: String, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCommonTransferRechargeResponse {
        try await self.queryCommonTransferRecharge(.init(mrchCode: mrchCode, functionFlag: functionFlag, startDate: startDate, endDate: endDate, pageNum: pageNum, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
