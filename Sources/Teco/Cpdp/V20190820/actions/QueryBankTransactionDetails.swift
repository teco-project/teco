//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cpdp {
    /// 云鉴-查询银行时间段内交易明细
    ///
    /// 查询银行时间段内交易明细。查询时间段的会员成功交易。
    @inlinable
    public func queryBankTransactionDetails(_ input: QueryBankTransactionDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryBankTransactionDetailsResponse > {
        self.client.execute(action: "QueryBankTransactionDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云鉴-查询银行时间段内交易明细
    ///
    /// 查询银行时间段内交易明细。查询时间段的会员成功交易。
    @inlinable
    public func queryBankTransactionDetails(_ input: QueryBankTransactionDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryBankTransactionDetailsResponse {
        try await self.client.execute(action: "QueryBankTransactionDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryBankTransactionDetails请求参数结构体
    public struct QueryBankTransactionDetailsRequest: TCRequestModel {
        /// String(22)，商户号（签约客户号）
        public let mrchCode: String
        
        /// STRING(2)，功能标志（1: 当日; 2: 历史）
        public let functionFlag: String
        
        /// STRING(50)，见证子帐户的帐号
        public let subAcctNo: String
        
        /// STRING(4)，查询标志（1: 全部; 2: 转出; 3: 转入 ）
        public let queryFlag: String
        
        /// STRING(10)，页码（起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后）
        public let pageNum: String
        
        /// STRING(8)，开始日期（若是历史查询，则必输，当日查询时，不起作用。格式：20190101）
        public let startDate: String?
        
        /// STRING(8)，终止日期（若是历史查询，则必输，当日查询时，不起作用。格式：20190101）
        public let endDate: String?
        
        /// STRING(1027)，保留域
        public let reservedMsg: String?
        
        /// STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        public let profile: String?
        
        public init (mrchCode: String, functionFlag: String, subAcctNo: String, queryFlag: String, pageNum: String, startDate: String?, endDate: String?, reservedMsg: String?, profile: String?) {
            self.mrchCode = mrchCode
            self.functionFlag = functionFlag
            self.subAcctNo = subAcctNo
            self.queryFlag = queryFlag
            self.pageNum = pageNum
            self.startDate = startDate
            self.endDate = endDate
            self.reservedMsg = reservedMsg
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case mrchCode = "MrchCode"
            case functionFlag = "FunctionFlag"
            case subAcctNo = "SubAcctNo"
            case queryFlag = "QueryFlag"
            case pageNum = "PageNum"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case reservedMsg = "ReservedMsg"
            case profile = "Profile"
        }
    }
    
    /// QueryBankTransactionDetails返回参数结构体
    public struct QueryBankTransactionDetailsResponse: TCResponseModel {
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
        public let tranItemArray: [TransactionItem]?
        
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
}