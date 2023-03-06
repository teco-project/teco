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

extension Dtf {
    /// DescribeTransactions请求参数结构体
    public struct DescribeTransactionsRequest: TCPaginatedRequest {
        /// 事务分组ID
        public let groupId: String

        /// 事务开始时间查询起始时间戳，UTC，精确到毫秒
        public let transactionBeginFrom: Int64?

        /// 事务开始时间查询截止时间戳，UTC，精确到毫秒
        public let transactionBeginTo: Int64?

        /// 仅查询异常状态的事务，true：仅查询异常，false或不传入：查询所有
        public let searchError: Bool?

        /// 主事务ID，不传入时查询全量，高优先级
        public let transactionId: Int64?

        /// 主事务ID列表，不传入时查询全量，低优先级
        public let transactionIdList: [Int64]?

        /// 每页数量
        public let limit: Int64?

        /// 起始偏移量
        public let offset: Int64?

        public init(groupId: String, transactionBeginFrom: Int64? = nil, transactionBeginTo: Int64? = nil, searchError: Bool? = nil, transactionId: Int64? = nil, transactionIdList: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.groupId = groupId
            self.transactionBeginFrom = transactionBeginFrom
            self.transactionBeginTo = transactionBeginTo
            self.searchError = searchError
            self.transactionId = transactionId
            self.transactionIdList = transactionIdList
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case transactionBeginFrom = "TransactionBeginFrom"
            case transactionBeginTo = "TransactionBeginTo"
            case searchError = "SearchError"
            case transactionId = "TransactionId"
            case transactionIdList = "TransactionIdList"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTransactionsResponse) -> DescribeTransactionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTransactionsRequest(groupId: self.groupId, transactionBeginFrom: self.transactionBeginFrom, transactionBeginTo: self.transactionBeginTo, searchError: self.searchError, transactionId: self.transactionId, transactionIdList: self.transactionIdList, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeTransactions返回参数结构体
    public struct DescribeTransactionsResponse: TCPaginatedResponse {
        /// 主事务分页列表
        public let result: PagedTransaction

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Transaction] {
            self.result.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询主事务列表
    @inlinable
    public func describeTransactions(_ input: DescribeTransactionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTransactionsResponse> {
        self.client.execute(action: "DescribeTransactions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主事务列表
    @inlinable
    public func describeTransactions(_ input: DescribeTransactionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTransactionsResponse {
        try await self.client.execute(action: "DescribeTransactions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主事务列表
    @inlinable
    public func describeTransactions(groupId: String, transactionBeginFrom: Int64? = nil, transactionBeginTo: Int64? = nil, searchError: Bool? = nil, transactionId: Int64? = nil, transactionIdList: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTransactionsResponse> {
        let input = DescribeTransactionsRequest(groupId: groupId, transactionBeginFrom: transactionBeginFrom, transactionBeginTo: transactionBeginTo, searchError: searchError, transactionId: transactionId, transactionIdList: transactionIdList, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeTransactions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主事务列表
    @inlinable
    public func describeTransactions(groupId: String, transactionBeginFrom: Int64? = nil, transactionBeginTo: Int64? = nil, searchError: Bool? = nil, transactionId: Int64? = nil, transactionIdList: [Int64]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTransactionsResponse {
        let input = DescribeTransactionsRequest(groupId: groupId, transactionBeginFrom: transactionBeginFrom, transactionBeginTo: transactionBeginTo, searchError: searchError, transactionId: transactionId, transactionIdList: transactionIdList, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeTransactions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主事务列表
    @inlinable
    public func describeTransactionsPaginated(_ input: DescribeTransactionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Transaction])> {
        self.client.paginate(input: input, region: region, command: self.describeTransactions, logger: logger, on: eventLoop)
    }

    /// 查询主事务列表
    @inlinable
    public func describeTransactionsPaginated(_ input: DescribeTransactionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTransactionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTransactions, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询主事务列表
    @inlinable
    public func describeTransactionsPaginator(_ input: DescribeTransactionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeTransactionsRequest, DescribeTransactionsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeTransactionsRequest, DescribeTransactionsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeTransactionsRequest, DescribeTransactionsResponse>.ResultSequence(input: input, region: region, command: self.describeTransactions, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeTransactionsRequest, DescribeTransactionsResponse>.ResponseSequence(input: input, region: region, command: self.describeTransactions, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
