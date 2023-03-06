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

import TecoPaginationHelpers

extension Billing {
    /// DescribeBillList请求参数结构体
    public struct DescribeBillListRequest: TCPaginatedRequest {
        /// 查询范围的起始时间（包含）
        public let startTime: String

        /// 查询范围的结束时间（包含）
        public let endTime: String

        /// 翻页偏移量，初始值为0
        public let offset: UInt64

        /// 每页的限制数量
        public let limit: UInt64

        /// 交易类型： all所有交易类型，recharge充值，return退款，unblock解冻，agentin资金转入，advanced垫付，cash提现，deduct扣费，block冻结，agentout资金转出，repay垫付回款，repayment还款(仅国际信用账户)，adj_refund调增(仅国际信用账户)，adj_deduct调减(仅国际信用账户)
        public let payType: [String]?

        /// 扣费模式，
        /// 当所选的交易类型为扣费deduct时：
        /// all所有扣费类型;trade预付费支付;hour_h按量小时结;hour_d按量日结;hour_m按量月结;decompensate调账扣费;other第三方扣费;panshi 线下项目扣费;offline 线下产品扣费;
        ///
        /// 当所选的交易类型为扣费recharge时：
        /// online 在线充值;bank-enterprice 银企直连;offline 线下充值;transfer 分成充值
        ///
        /// 当所选的交易类型为扣费cash时：
        /// online 线上提现;offline 线下提现;panshi 赠送金清零
        ///
        /// 当所选的交易类型为扣费advanced时：
        /// advanced 垫付充值
        ///
        /// 当所选的交易类型为扣费repay时：
        /// panshi 垫付回款
        ///
        /// 当所选的交易类型为扣费block时：
        /// other 第三方冻结;hour 按量冻结;month按月冻结
        ///
        /// 当所选的交易类型为扣费return时：
        /// compensate 调账补偿;trade 预付费退款
        ///
        /// 当所选的交易类型为扣费unblock时：
        /// other 第三方解冻;hour 按量解冻;month 按月解冻
        public let subPayType: [String]?

        /// 是否返回0元交易金额的交易项，取值：0-不返回，1-返回。不传该参数则不返回
        public let withZeroAmount: UInt64?

        public init(startTime: String, endTime: String, offset: UInt64, limit: UInt64, payType: [String]? = nil, subPayType: [String]? = nil, withZeroAmount: UInt64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
            self.payType = payType
            self.subPayType = subPayType
            self.withZeroAmount = withZeroAmount
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case payType = "PayType"
            case subPayType = "SubPayType"
            case withZeroAmount = "WithZeroAmount"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBillListResponse) -> DescribeBillListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBillListRequest(startTime: self.startTime, endTime: self.endTime, offset: self.offset + .init(response.getItems().count), limit: self.limit, payType: self.payType, subPayType: self.subPayType, withZeroAmount: self.withZeroAmount)
        }
    }

    /// DescribeBillList返回参数结构体
    public struct DescribeBillListResponse: TCPaginatedResponse {
        /// 收支明细列表
        public let transactionList: [BillTransactionInfo]

        /// 总条数
        public let total: Int64

        /// 退费总额，单位（分）
        public let returnAmount: Float

        /// 充值总额，单位（分）
        public let rechargeAmount: Float

        /// 冻结总额，单位（分）
        public let blockAmount: Float

        /// 解冻总额，单位（分）
        public let unblockAmount: Float

        /// 扣费总额，单位（分）
        public let deductAmount: Float

        /// 资金转入总额，单位（分）
        public let agentInAmount: Float

        /// 垫付充值总额，单位（分）
        public let advanceRechargeAmount: Float

        /// 提现扣减总额，单位（分）
        public let withdrawAmount: Float

        /// 资金转出总额，单位（分）
        public let agentOutAmount: Float

        /// 还垫付总额，单位（分）
        public let advancePayAmount: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case transactionList = "TransactionList"
            case total = "Total"
            case returnAmount = "ReturnAmount"
            case rechargeAmount = "RechargeAmount"
            case blockAmount = "BlockAmount"
            case unblockAmount = "UnblockAmount"
            case deductAmount = "DeductAmount"
            case agentInAmount = "AgentInAmount"
            case advanceRechargeAmount = "AdvanceRechargeAmount"
            case withdrawAmount = "WithdrawAmount"
            case agentOutAmount = "AgentOutAmount"
            case advancePayAmount = "AdvancePayAmount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BillTransactionInfo] {
            self.transactionList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取收支明细列表
    ///
    /// 获取收支明细列表，支持翻页和参数过滤
    @inlinable
    public func describeBillList(_ input: DescribeBillListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillListResponse> {
        self.client.execute(action: "DescribeBillList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取收支明细列表
    ///
    /// 获取收支明细列表，支持翻页和参数过滤
    @inlinable
    public func describeBillList(_ input: DescribeBillListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillListResponse {
        try await self.client.execute(action: "DescribeBillList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取收支明细列表
    ///
    /// 获取收支明细列表，支持翻页和参数过滤
    @inlinable
    public func describeBillList(startTime: String, endTime: String, offset: UInt64, limit: UInt64, payType: [String]? = nil, subPayType: [String]? = nil, withZeroAmount: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillListResponse> {
        let input = DescribeBillListRequest(startTime: startTime, endTime: endTime, offset: offset, limit: limit, payType: payType, subPayType: subPayType, withZeroAmount: withZeroAmount)
        return self.client.execute(action: "DescribeBillList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取收支明细列表
    ///
    /// 获取收支明细列表，支持翻页和参数过滤
    @inlinable
    public func describeBillList(startTime: String, endTime: String, offset: UInt64, limit: UInt64, payType: [String]? = nil, subPayType: [String]? = nil, withZeroAmount: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillListResponse {
        let input = DescribeBillListRequest(startTime: startTime, endTime: endTime, offset: offset, limit: limit, payType: payType, subPayType: subPayType, withZeroAmount: withZeroAmount)
        return try await self.client.execute(action: "DescribeBillList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取收支明细列表
    ///
    /// 获取收支明细列表，支持翻页和参数过滤
    @inlinable
    public func describeBillListPaginated(_ input: DescribeBillListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BillTransactionInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBillList, logger: logger, on: eventLoop)
    }

    /// 获取收支明细列表
    ///
    /// 获取收支明细列表，支持翻页和参数过滤
    @inlinable @discardableResult
    public func describeBillListPaginated(_ input: DescribeBillListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBillListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBillList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取收支明细列表
    ///
    /// 获取收支明细列表，支持翻页和参数过滤
    ///
    /// - Returns: `AsyncSequence`s of `BillTransactionInfo` and `DescribeBillListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBillListPaginator(_ input: DescribeBillListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBillListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBillList, logger: logger, on: eventLoop)
    }
}
