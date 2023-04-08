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

extension Iotvideo {
    /// DescribeBalanceTransactions请求参数结构体
    public struct DescribeBalanceTransactionsRequest: TCPaginatedRequest {
        /// 账户类型：1-设备接入；2-云存。
        public let accountType: UInt64

        /// 分页游标开始，默认为0开始拉取第一条。
        public let offset: UInt64

        /// 分页每页数量。
        public let limit: UInt64

        /// 流水类型：All-全部类型；Recharge-充值；CreateOrder-新购。默认为All
        public let operation: String?

        public init(accountType: UInt64, offset: UInt64, limit: UInt64, operation: String? = nil) {
            self.accountType = accountType
            self.offset = offset
            self.limit = limit
            self.operation = operation
        }

        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
            case offset = "Offset"
            case limit = "Limit"
            case operation = "Operation"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBalanceTransactionsResponse) -> DescribeBalanceTransactionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBalanceTransactionsRequest(accountType: self.accountType, offset: self.offset + .init(response.getItems().count), limit: self.limit, operation: self.operation)
        }
    }

    /// DescribeBalanceTransactions返回参数结构体
    public struct DescribeBalanceTransactionsResponse: TCPaginatedResponse {
        /// 账户流水总数。
        public let totalCount: UInt64

        /// 账户流水详情数组。
        public let transactions: [BalanceTransaction]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case transactions = "Transactions"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BalanceTransaction] {
            self.transactions
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 拉取账户流水
    @inlinable
    public func describeBalanceTransactions(_ input: DescribeBalanceTransactionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBalanceTransactionsResponse> {
        self.client.execute(action: "DescribeBalanceTransactions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取账户流水
    @inlinable
    public func describeBalanceTransactions(_ input: DescribeBalanceTransactionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBalanceTransactionsResponse {
        try await self.client.execute(action: "DescribeBalanceTransactions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取账户流水
    @inlinable
    public func describeBalanceTransactions(accountType: UInt64, offset: UInt64, limit: UInt64, operation: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBalanceTransactionsResponse> {
        self.describeBalanceTransactions(.init(accountType: accountType, offset: offset, limit: limit, operation: operation), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取账户流水
    @inlinable
    public func describeBalanceTransactions(accountType: UInt64, offset: UInt64, limit: UInt64, operation: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBalanceTransactionsResponse {
        try await self.describeBalanceTransactions(.init(accountType: accountType, offset: offset, limit: limit, operation: operation), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取账户流水
    @inlinable
    public func describeBalanceTransactionsPaginated(_ input: DescribeBalanceTransactionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BalanceTransaction])> {
        self.client.paginate(input: input, region: region, command: self.describeBalanceTransactions, logger: logger, on: eventLoop)
    }

    /// 拉取账户流水
    @inlinable @discardableResult
    public func describeBalanceTransactionsPaginated(_ input: DescribeBalanceTransactionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBalanceTransactionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBalanceTransactions, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取账户流水
    ///
    /// - Returns: `AsyncSequence`s of `BalanceTransaction` and `DescribeBalanceTransactionsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBalanceTransactionsPaginator(_ input: DescribeBalanceTransactionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBalanceTransactionsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBalanceTransactions, logger: logger, on: eventLoop)
    }
}
