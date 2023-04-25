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
import TecoPaginationHelpers

extension Partners {
    /// DescribeAgentBills请求参数结构体
    public struct DescribeAgentBillsRequest: TCPaginatedRequest {
        /// 支付月份，如2018-02
        public let settleMonth: String

        /// 客户账号ID
        public let clientUin: String?

        /// 支付方式，prepay/postpay
        public let payMode: String?

        /// 预付费订单号
        public let orderId: String?

        /// 客户备注名称
        public let clientRemark: String?

        /// 偏移量
        public let offset: UInt64?

        /// 限制数目
        public let limit: UInt64?

        public init(settleMonth: String, clientUin: String? = nil, payMode: String? = nil, orderId: String? = nil, clientRemark: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.settleMonth = settleMonth
            self.clientUin = clientUin
            self.payMode = payMode
            self.orderId = orderId
            self.clientRemark = clientRemark
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case settleMonth = "SettleMonth"
            case clientUin = "ClientUin"
            case payMode = "PayMode"
            case orderId = "OrderId"
            case clientRemark = "ClientRemark"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAgentBillsResponse) -> DescribeAgentBillsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAgentBillsRequest(settleMonth: self.settleMonth, clientUin: self.clientUin, payMode: self.payMode, orderId: self.orderId, clientRemark: self.clientRemark, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAgentBills返回参数结构体
    public struct DescribeAgentBillsResponse: TCPaginatedResponse {
        /// 符合查询条件列表总数量
        public let totalCount: UInt64

        /// 业务明细列表
        public let agentBillSet: [AgentBillElem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case agentBillSet = "AgentBillSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AgentBillElem] {
            self.agentBillSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询业务明细
    ///
    /// 代理商可查询自己及名下代客所有业务明细
    @inlinable
    public func describeAgentBills(_ input: DescribeAgentBillsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentBillsResponse> {
        self.client.execute(action: "DescribeAgentBills", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询业务明细
    ///
    /// 代理商可查询自己及名下代客所有业务明细
    @inlinable
    public func describeAgentBills(_ input: DescribeAgentBillsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentBillsResponse {
        try await self.client.execute(action: "DescribeAgentBills", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询业务明细
    ///
    /// 代理商可查询自己及名下代客所有业务明细
    @inlinable
    public func describeAgentBills(settleMonth: String, clientUin: String? = nil, payMode: String? = nil, orderId: String? = nil, clientRemark: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentBillsResponse> {
        self.describeAgentBills(.init(settleMonth: settleMonth, clientUin: clientUin, payMode: payMode, orderId: orderId, clientRemark: clientRemark, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询业务明细
    ///
    /// 代理商可查询自己及名下代客所有业务明细
    @inlinable
    public func describeAgentBills(settleMonth: String, clientUin: String? = nil, payMode: String? = nil, orderId: String? = nil, clientRemark: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentBillsResponse {
        try await self.describeAgentBills(.init(settleMonth: settleMonth, clientUin: clientUin, payMode: payMode, orderId: orderId, clientRemark: clientRemark, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询业务明细
    ///
    /// 代理商可查询自己及名下代客所有业务明细
    @inlinable
    public func describeAgentBillsPaginated(_ input: DescribeAgentBillsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AgentBillElem])> {
        self.client.paginate(input: input, region: region, command: self.describeAgentBills, logger: logger, on: eventLoop)
    }

    /// 查询业务明细
    ///
    /// 代理商可查询自己及名下代客所有业务明细
    @inlinable @discardableResult
    public func describeAgentBillsPaginated(_ input: DescribeAgentBillsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAgentBillsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAgentBills, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询业务明细
    ///
    /// 代理商可查询自己及名下代客所有业务明细
    ///
    /// - Returns: `AsyncSequence`s of `AgentBillElem` and `DescribeAgentBillsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAgentBillsPaginator(_ input: DescribeAgentBillsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAgentBillsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAgentBills, logger: logger, on: eventLoop)
    }
}
