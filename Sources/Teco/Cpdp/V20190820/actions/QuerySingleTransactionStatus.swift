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
    /// QuerySingleTransactionStatus请求参数结构体
    public struct QuerySingleTransactionStatusRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String

        /// STRING(2)，功能标志（2: 会员间交易; 3: 提现; 4: 充值）
        public let functionFlag: String

        /// STRING(52)，交易网流水号（提现，充值或会员交易请求时的CnsmrSeqNo值）
        public let tranNetSeqNo: String

        /// STRING(50)，见证子帐户的帐号（未启用）
        public let subAcctNo: String?

        /// STRING(8)，交易日期（未启用）
        public let tranDate: String?

        /// STRING(1027)，保留域
        public let reservedMsg: String?

        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?

        public init(mrchCode: String, functionFlag: String, tranNetSeqNo: String, subAcctNo: String? = nil, tranDate: String? = nil, reservedMsg: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.functionFlag = functionFlag
            self.tranNetSeqNo = tranNetSeqNo
            self.subAcctNo = subAcctNo
            self.tranDate = tranDate
            self.reservedMsg = reservedMsg
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case functionFlag = "FunctionFlag"
            case tranNetSeqNo = "TranNetSeqNo"
            case subAcctNo = "SubAcctNo"
            case tranDate = "TranDate"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }

    /// QuerySingleTransactionStatus返回参数结构体
    public struct QuerySingleTransactionStatusResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// STRING(2)，记账标志（记账标志。1: 登记挂账; 2: 支付; 3: 提现; 4: 清分; 5: 下单预支付; 6: 确认并付款; 7: 退款; 8: 支付到平台; N: 其他）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bookingFlag: String?

        /// STRING(32)，交易状态（0: 成功; 1: 失败; 2: 待确认; 5: 待处理; 6: 处理中。0和1是终态，2、5、6是中间态，其中2是特指提现后待确认提现是否成功，5是银行收到交易等待处理，6是交易正在处理）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tranStatus: String?

        /// STRING(20)，交易金额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tranAmt: String?

        /// STRING(8)，交易日期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tranDate: String?

        /// STRING(20)，交易时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tranTime: String?

        /// STRING(50)，转入子账户账号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inSubAcctNo: String?

        /// STRING(50)，转出子账户账号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let outSubAcctNo: String?

        /// STRING(300)，失败信息（当提现失败时，返回交易失败原因）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failMsg: String?

        /// STRING(50)，原前置流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let oldTranFrontSeqNo: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case txnReturnCode = "TxnReturnCode"
            case txnReturnMsg = "TxnReturnMsg"
            case cnsmrSeqNo = "CnsmrSeqNo"
            case bookingFlag = "BookingFlag"
            case tranStatus = "TranStatus"
            case tranAmt = "TranAmt"
            case tranDate = "TranDate"
            case tranTime = "TranTime"
            case inSubAcctNo = "InSubAcctNo"
            case outSubAcctNo = "OutSubAcctNo"
            case failMsg = "FailMsg"
            case oldTranFrontSeqNo = "OldTranFrontSeqNo"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-查询银行单笔交易状态
    ///
    /// 查询银行单笔交易状态。查询单笔交易的状态。
    @inlinable
    public func querySingleTransactionStatus(_ input: QuerySingleTransactionStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QuerySingleTransactionStatusResponse> {
        self.client.execute(action: "QuerySingleTransactionStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-查询银行单笔交易状态
    ///
    /// 查询银行单笔交易状态。查询单笔交易的状态。
    @inlinable
    public func querySingleTransactionStatus(_ input: QuerySingleTransactionStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QuerySingleTransactionStatusResponse {
        try await self.client.execute(action: "QuerySingleTransactionStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-查询银行单笔交易状态
    ///
    /// 查询银行单笔交易状态。查询单笔交易的状态。
    @inlinable
    public func querySingleTransactionStatus(mrchCode: String, functionFlag: String, tranNetSeqNo: String, subAcctNo: String? = nil, tranDate: String? = nil, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QuerySingleTransactionStatusResponse> {
        self.querySingleTransactionStatus(QuerySingleTransactionStatusRequest(mrchCode: mrchCode, functionFlag: functionFlag, tranNetSeqNo: tranNetSeqNo, subAcctNo: subAcctNo, tranDate: tranDate, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-查询银行单笔交易状态
    ///
    /// 查询银行单笔交易状态。查询单笔交易的状态。
    @inlinable
    public func querySingleTransactionStatus(mrchCode: String, functionFlag: String, tranNetSeqNo: String, subAcctNo: String? = nil, tranDate: String? = nil, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QuerySingleTransactionStatusResponse {
        try await self.querySingleTransactionStatus(QuerySingleTransactionStatusRequest(mrchCode: mrchCode, functionFlag: functionFlag, tranNetSeqNo: tranNetSeqNo, subAcctNo: subAcctNo, tranDate: tranDate, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
