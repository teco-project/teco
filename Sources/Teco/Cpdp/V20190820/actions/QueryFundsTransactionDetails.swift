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
    /// QueryFundsTransactionDetails请求参数结构体
    public struct QueryFundsTransactionDetailsRequest: TCRequestModel {
        /// 查询的交易发生时间类型。
        /// __1__：当日
        /// __2__：历史
        public let queryDateType: String

        /// 查询的交易类型。
        /// __2__：提现/退款
        /// __3__：清分/充值
        public let queryTranType: String

        /// 父账户账号。
        /// _平安渠道为资金汇总账号_
        public let bankAccountNumber: String

        /// 子账户账号。
        /// _平安渠道为见证子账户的账号_
        public let subAccountNumber: String

        /// 分页号, 起始值为1。
        public let pageOffSet: String

        /// 查询开始日期，格式：yyyyMMdd。
        /// __若是历史查询，则必输，当日查询时，不起作用；开始日期不能超过当前日期__
        public let queryStartDate: String?

        /// 查询终止日期，格式：yyyyMMdd。
        /// __若是历史查询，则必输，当日查询时，不起作用；终止日期不能超过当前日期__
        public let queryEndDate: String?

        /// 环境名。
        /// __release__: 现网环境
        /// __sandbox__: 沙箱环境
        /// __development__: 开发环境
        /// _缺省: release_
        public let midasEnvironment: String?

        public init(queryDateType: String, queryTranType: String, bankAccountNumber: String, subAccountNumber: String, pageOffSet: String, queryStartDate: String? = nil, queryEndDate: String? = nil, midasEnvironment: String? = nil) {
            self.queryDateType = queryDateType
            self.queryTranType = queryTranType
            self.bankAccountNumber = bankAccountNumber
            self.subAccountNumber = subAccountNumber
            self.pageOffSet = pageOffSet
            self.queryStartDate = queryStartDate
            self.queryEndDate = queryEndDate
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case queryDateType = "QueryDateType"
            case queryTranType = "QueryTranType"
            case bankAccountNumber = "BankAccountNumber"
            case subAccountNumber = "SubAccountNumber"
            case pageOffSet = "PageOffSet"
            case queryStartDate = "QueryStartDate"
            case queryEndDate = "QueryEndDate"
            case midasEnvironment = "MidasEnvironment"
        }
    }

    /// QueryFundsTransactionDetails返回参数结构体
    public struct QueryFundsTransactionDetailsResponse: TCResponseModel {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        public let errMessage: String

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryFundsTransactionDetailsResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-查询会员资金交易信息列表
    @inlinable
    public func queryFundsTransactionDetails(_ input: QueryFundsTransactionDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFundsTransactionDetailsResponse> {
        self.client.execute(action: "QueryFundsTransactionDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-查询会员资金交易信息列表
    @inlinable
    public func queryFundsTransactionDetails(_ input: QueryFundsTransactionDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFundsTransactionDetailsResponse {
        try await self.client.execute(action: "QueryFundsTransactionDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-查询会员资金交易信息列表
    @inlinable
    public func queryFundsTransactionDetails(queryDateType: String, queryTranType: String, bankAccountNumber: String, subAccountNumber: String, pageOffSet: String, queryStartDate: String? = nil, queryEndDate: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFundsTransactionDetailsResponse> {
        self.queryFundsTransactionDetails(.init(queryDateType: queryDateType, queryTranType: queryTranType, bankAccountNumber: bankAccountNumber, subAccountNumber: subAccountNumber, pageOffSet: pageOffSet, queryStartDate: queryStartDate, queryEndDate: queryEndDate, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-查询会员资金交易信息列表
    @inlinable
    public func queryFundsTransactionDetails(queryDateType: String, queryTranType: String, bankAccountNumber: String, subAccountNumber: String, pageOffSet: String, queryStartDate: String? = nil, queryEndDate: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFundsTransactionDetailsResponse {
        try await self.queryFundsTransactionDetails(.init(queryDateType: queryDateType, queryTranType: queryTranType, bankAccountNumber: bankAccountNumber, subAccountNumber: subAccountNumber, pageOffSet: pageOffSet, queryStartDate: queryStartDate, queryEndDate: queryEndDate, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }
}
