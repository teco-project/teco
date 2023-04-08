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
    /// QuerySmallAmountTransfer请求参数结构体
    public struct QuerySmallAmountTransferRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String

        /// STRING(52)，原交易流水号（小额鉴权交易请求时的CnsmrSeqNo值）
        public let oldTranSeqNo: String

        /// STRING(8)，交易日期（格式：20190101）
        public let tranDate: String

        /// STRING(1027)，保留域
        public let reservedMsg: String?

        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?

        public init(mrchCode: String, oldTranSeqNo: String, tranDate: String, reservedMsg: String? = nil, profile: String? = nil) {
            self.mrchCode = mrchCode
            self.oldTranSeqNo = oldTranSeqNo
            self.tranDate = tranDate
            self.reservedMsg = reservedMsg
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case oldTranSeqNo = "OldTranSeqNo"
            case tranDate = "TranDate"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }

    /// QuerySmallAmountTransfer返回参数结构体
    public struct QuerySmallAmountTransferResponse: TCResponseModel {
        /// String(20)，返回码
        public let txnReturnCode: String

        /// String(100)，返回信息
        public let txnReturnMsg: String

        /// String(22)，交易流水号
        public let cnsmrSeqNo: String

        /// STRING(10)，返回状态（0: 成功; 1: 失败; 2: 待确认）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnStatus: String?

        /// STRING(512)，返回信息（失败返回具体信息）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnMsg: String?

        /// STRING(1027)，保留域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reservedMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case txnReturnCode = "TxnReturnCode"
            case txnReturnMsg = "TxnReturnMsg"
            case cnsmrSeqNo = "CnsmrSeqNo"
            case returnStatus = "ReturnStatus"
            case returnMsg = "ReturnMsg"
            case reservedMsg = "ReservedMsg"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-查询小额鉴权转账结果
    ///
    /// 查询小额鉴权转账结果。查询小额往账鉴权的转账状态。
    @inlinable
    public func querySmallAmountTransfer(_ input: QuerySmallAmountTransferRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QuerySmallAmountTransferResponse> {
        self.client.execute(action: "QuerySmallAmountTransfer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-查询小额鉴权转账结果
    ///
    /// 查询小额鉴权转账结果。查询小额往账鉴权的转账状态。
    @inlinable
    public func querySmallAmountTransfer(_ input: QuerySmallAmountTransferRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QuerySmallAmountTransferResponse {
        try await self.client.execute(action: "QuerySmallAmountTransfer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-查询小额鉴权转账结果
    ///
    /// 查询小额鉴权转账结果。查询小额往账鉴权的转账状态。
    @inlinable
    public func querySmallAmountTransfer(mrchCode: String, oldTranSeqNo: String, tranDate: String, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QuerySmallAmountTransferResponse> {
        self.querySmallAmountTransfer(.init(mrchCode: mrchCode, oldTranSeqNo: oldTranSeqNo, tranDate: tranDate, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-查询小额鉴权转账结果
    ///
    /// 查询小额鉴权转账结果。查询小额往账鉴权的转账状态。
    @inlinable
    public func querySmallAmountTransfer(mrchCode: String, oldTranSeqNo: String, tranDate: String, reservedMsg: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QuerySmallAmountTransferResponse {
        try await self.querySmallAmountTransfer(.init(mrchCode: mrchCode, oldTranSeqNo: oldTranSeqNo, tranDate: tranDate, reservedMsg: reservedMsg, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
