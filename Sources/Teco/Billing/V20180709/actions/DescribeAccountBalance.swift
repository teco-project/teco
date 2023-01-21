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

extension Billing {
    /// DescribeAccountBalance请求参数结构体
    public struct DescribeAccountBalanceRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeAccountBalance返回参数结构体
    public struct DescribeAccountBalanceResponse: TCResponseModel {
        /// 接口做过变更,为兼容老接口,本字段与RealBalance相同,为当前真实可用余额,单位 分
        public let balance: Int64

        /// 查询的用户Uin
        public let uin: UInt64

        /// 当前真实可用余额,单位 分
        public let realBalance: Float

        /// 现金账户余额,单位 分
        public let cashAccountBalance: Float

        /// 收益转入账户余额,单位 分
        public let incomeIntoAccountBalance: Float

        /// 赠送账户余额,单位 分
        public let presentAccountBalance: Float

        /// 冻结金额,单位 分
        public let freezeAmount: Float

        /// 欠费金额,单位 分
        public let oweAmount: Float

        /// 是否允许欠费消费
        public let isAllowArrears: Bool

        /// 是否限制信用额度
        public let isCreditLimited: Bool

        /// 信用额度
        public let creditAmount: Float

        /// 可用信用额度
        public let creditBalance: Float

        /// 真实可用信用额度
        public let realCreditBalance: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case balance = "Balance"
            case uin = "Uin"
            case realBalance = "RealBalance"
            case cashAccountBalance = "CashAccountBalance"
            case incomeIntoAccountBalance = "IncomeIntoAccountBalance"
            case presentAccountBalance = "PresentAccountBalance"
            case freezeAmount = "FreezeAmount"
            case oweAmount = "OweAmount"
            case isAllowArrears = "IsAllowArrears"
            case isCreditLimited = "IsCreditLimited"
            case creditAmount = "CreditAmount"
            case creditBalance = "CreditBalance"
            case realCreditBalance = "RealCreditBalance"
            case requestId = "RequestId"
        }
    }

    /// 获取账户余额
    ///
    /// 获取云账户余额信息。
    @inlinable
    public func describeAccountBalance(_ input: DescribeAccountBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountBalanceResponse> {
        self.client.execute(action: "DescribeAccountBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取账户余额
    ///
    /// 获取云账户余额信息。
    @inlinable
    public func describeAccountBalance(_ input: DescribeAccountBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountBalanceResponse {
        try await self.client.execute(action: "DescribeAccountBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取账户余额
    ///
    /// 获取云账户余额信息。
    @inlinable
    public func describeAccountBalance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountBalanceResponse> {
        self.describeAccountBalance(DescribeAccountBalanceRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取账户余额
    ///
    /// 获取云账户余额信息。
    @inlinable
    public func describeAccountBalance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountBalanceResponse {
        try await self.describeAccountBalance(DescribeAccountBalanceRequest(), region: region, logger: logger, on: eventLoop)
    }
}
