//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotvideo {
    /// DescribeBalanceTransactions请求参数结构体
    public struct DescribeBalanceTransactionsRequest: TCRequestModel {
        /// 账户类型：1-设备接入；2-云存。
        public let accountType: UInt64
        
        /// 分页游标开始，默认为0开始拉取第一条。
        public let offset: UInt64
        
        /// 分页每页数量。
        public let limit: UInt64
        
        /// 流水类型：All-全部类型；Recharge-充值；CreateOrder-新购。默认为All
        public let operation: String?
        
        public init (accountType: UInt64, offset: UInt64, limit: UInt64, operation: String? = nil) {
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
    }
    
    /// DescribeBalanceTransactions返回参数结构体
    public struct DescribeBalanceTransactionsResponse: TCResponseModel {
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
    }
    
    /// 拉取账户流水
    @inlinable
    public func describeBalanceTransactions(_ input: DescribeBalanceTransactionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBalanceTransactionsResponse > {
        self.client.execute(action: "DescribeBalanceTransactions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 拉取账户流水
    @inlinable
    public func describeBalanceTransactions(_ input: DescribeBalanceTransactionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBalanceTransactionsResponse {
        try await self.client.execute(action: "DescribeBalanceTransactions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
