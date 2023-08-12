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

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Partners {
    /// DescribeAgentClients请求参数结构体
    public struct DescribeAgentClientsRequest: TCPaginatedRequest {
        /// 客户账号ID
        public let clientUin: String?

        /// 客户名称。由于涉及隐私，名称打码显示，故名称仅支持打码后的模糊搜索
        public let clientName: String?

        /// 客户类型，a/b，类型定义参考代理商相关政策文档
        public let clientFlag: String?

        /// ASC/DESC， 不区分大小写，按申请时间排序
        public let orderDirection: String?

        /// 偏移量
        public let offset: UInt64?

        /// 限制数目
        public let limit: UInt64?

        /// 业务员ID
        public let salesUin: String?

        /// 业务员姓名（模糊查询）
        public let salesName: String?

        public init(clientUin: String? = nil, clientName: String? = nil, clientFlag: String? = nil, orderDirection: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, salesUin: String? = nil, salesName: String? = nil) {
            self.clientUin = clientUin
            self.clientName = clientName
            self.clientFlag = clientFlag
            self.orderDirection = orderDirection
            self.offset = offset
            self.limit = limit
            self.salesUin = salesUin
            self.salesName = salesName
        }

        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
            case clientName = "ClientName"
            case clientFlag = "ClientFlag"
            case orderDirection = "OrderDirection"
            case offset = "Offset"
            case limit = "Limit"
            case salesUin = "SalesUin"
            case salesName = "SalesName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAgentClientsResponse) -> DescribeAgentClientsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAgentClientsRequest(clientUin: self.clientUin, clientName: self.clientName, clientFlag: self.clientFlag, orderDirection: self.orderDirection, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, salesUin: self.salesUin, salesName: self.salesName)
        }
    }

    /// DescribeAgentClients返回参数结构体
    public struct DescribeAgentClientsResponse: TCPaginatedResponse {
        /// 待审核代客列表
        public let agentClientSet: [AgentClientElem]

        /// 符合条件的代客总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case agentClientSet = "AgentClientSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AgentClientElem`` list from the paginated response.
        public func getItems() -> [AgentClientElem] {
            self.agentClientSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询待审核客户列表
    ///
    /// 代理商可查询自己名下待审核客户列表
    @inlinable
    public func describeAgentClients(_ input: DescribeAgentClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentClientsResponse> {
        self.client.execute(action: "DescribeAgentClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询待审核客户列表
    ///
    /// 代理商可查询自己名下待审核客户列表
    @inlinable
    public func describeAgentClients(_ input: DescribeAgentClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentClientsResponse {
        try await self.client.execute(action: "DescribeAgentClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询待审核客户列表
    ///
    /// 代理商可查询自己名下待审核客户列表
    @inlinable
    public func describeAgentClients(clientUin: String? = nil, clientName: String? = nil, clientFlag: String? = nil, orderDirection: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, salesUin: String? = nil, salesName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentClientsResponse> {
        self.describeAgentClients(.init(clientUin: clientUin, clientName: clientName, clientFlag: clientFlag, orderDirection: orderDirection, offset: offset, limit: limit, salesUin: salesUin, salesName: salesName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询待审核客户列表
    ///
    /// 代理商可查询自己名下待审核客户列表
    @inlinable
    public func describeAgentClients(clientUin: String? = nil, clientName: String? = nil, clientFlag: String? = nil, orderDirection: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, salesUin: String? = nil, salesName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentClientsResponse {
        try await self.describeAgentClients(.init(clientUin: clientUin, clientName: clientName, clientFlag: clientFlag, orderDirection: orderDirection, offset: offset, limit: limit, salesUin: salesUin, salesName: salesName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询待审核客户列表
    ///
    /// 代理商可查询自己名下待审核客户列表
    @inlinable
    public func describeAgentClientsPaginated(_ input: DescribeAgentClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AgentClientElem])> {
        self.client.paginate(input: input, region: region, command: self.describeAgentClients, logger: logger, on: eventLoop)
    }

    /// 查询待审核客户列表
    ///
    /// 代理商可查询自己名下待审核客户列表
    @inlinable @discardableResult
    public func describeAgentClientsPaginated(_ input: DescribeAgentClientsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAgentClientsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAgentClients, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询待审核客户列表
    ///
    /// 代理商可查询自己名下待审核客户列表
    ///
    /// - Returns: `AsyncSequence`s of ``AgentClientElem`` and ``DescribeAgentClientsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAgentClientsPaginator(_ input: DescribeAgentClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAgentClientsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAgentClients, logger: logger, on: eventLoop)
    }
}
