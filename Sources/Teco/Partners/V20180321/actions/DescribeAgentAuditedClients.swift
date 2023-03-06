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

extension Partners {
    /// DescribeAgentAuditedClients请求参数结构体
    public struct DescribeAgentAuditedClientsRequest: TCPaginatedRequest {
        /// 客户账号ID
        public let clientUin: String?

        /// 客户名称。由于涉及隐私，名称打码显示，故名称仅支持打码后的模糊搜索
        public let clientName: String?

        /// 客户类型，a/b，类型定义参考代理商相关政策文档
        public let clientFlag: String?

        /// ASC/DESC， 不区分大小写，按审核通过时间排序
        public let orderDirection: String?

        /// 客户账号ID列表
        public let clientUins: [String]?

        /// 是否欠费。0：不欠费；1：欠费
        public let hasOverdueBill: UInt64?

        /// 客户备注
        public let clientRemark: String?

        /// 偏移量
        public let offset: UInt64?

        /// 限制数目
        public let limit: UInt64?

        /// 可以为new(自拓)/assign(指派)/old(官网)/direct(直销)/direct_newopp(直销(新商机))/空
        public let clientType: String?

        /// 项目类型：可以为self(自拓项目)/platform(合作项目)/repeat(复算项目  )/空
        public let projectType: String?

        /// 业务员ID
        public let salesUin: String?

        /// 业务员姓名（模糊查询）
        public let salesName: String?

        public init(clientUin: String? = nil, clientName: String? = nil, clientFlag: String? = nil, orderDirection: String? = nil, clientUins: [String]? = nil, hasOverdueBill: UInt64? = nil, clientRemark: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, clientType: String? = nil, projectType: String? = nil, salesUin: String? = nil, salesName: String? = nil) {
            self.clientUin = clientUin
            self.clientName = clientName
            self.clientFlag = clientFlag
            self.orderDirection = orderDirection
            self.clientUins = clientUins
            self.hasOverdueBill = hasOverdueBill
            self.clientRemark = clientRemark
            self.offset = offset
            self.limit = limit
            self.clientType = clientType
            self.projectType = projectType
            self.salesUin = salesUin
            self.salesName = salesName
        }

        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
            case clientName = "ClientName"
            case clientFlag = "ClientFlag"
            case orderDirection = "OrderDirection"
            case clientUins = "ClientUins"
            case hasOverdueBill = "HasOverdueBill"
            case clientRemark = "ClientRemark"
            case offset = "Offset"
            case limit = "Limit"
            case clientType = "ClientType"
            case projectType = "ProjectType"
            case salesUin = "SalesUin"
            case salesName = "SalesName"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAgentAuditedClientsResponse) -> DescribeAgentAuditedClientsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAgentAuditedClientsRequest(clientUin: self.clientUin, clientName: self.clientName, clientFlag: self.clientFlag, orderDirection: self.orderDirection, clientUins: self.clientUins, hasOverdueBill: self.hasOverdueBill, clientRemark: self.clientRemark, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, clientType: self.clientType, projectType: self.projectType, salesUin: self.salesUin, salesName: self.salesName)
        }
    }

    /// DescribeAgentAuditedClients返回参数结构体
    public struct DescribeAgentAuditedClientsResponse: TCPaginatedResponse {
        /// 已审核代客列表
        public let agentClientSet: [AgentAuditedClient]

        /// 符合条件的代客总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case agentClientSet = "AgentClientSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AgentAuditedClient] {
            self.agentClientSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询已审核客户列表
    @inlinable
    public func describeAgentAuditedClients(_ input: DescribeAgentAuditedClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentAuditedClientsResponse> {
        self.client.execute(action: "DescribeAgentAuditedClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询已审核客户列表
    @inlinable
    public func describeAgentAuditedClients(_ input: DescribeAgentAuditedClientsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentAuditedClientsResponse {
        try await self.client.execute(action: "DescribeAgentAuditedClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询已审核客户列表
    @inlinable
    public func describeAgentAuditedClients(clientUin: String? = nil, clientName: String? = nil, clientFlag: String? = nil, orderDirection: String? = nil, clientUins: [String]? = nil, hasOverdueBill: UInt64? = nil, clientRemark: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, clientType: String? = nil, projectType: String? = nil, salesUin: String? = nil, salesName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentAuditedClientsResponse> {
        let input = DescribeAgentAuditedClientsRequest(clientUin: clientUin, clientName: clientName, clientFlag: clientFlag, orderDirection: orderDirection, clientUins: clientUins, hasOverdueBill: hasOverdueBill, clientRemark: clientRemark, offset: offset, limit: limit, clientType: clientType, projectType: projectType, salesUin: salesUin, salesName: salesName)
        return self.client.execute(action: "DescribeAgentAuditedClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询已审核客户列表
    @inlinable
    public func describeAgentAuditedClients(clientUin: String? = nil, clientName: String? = nil, clientFlag: String? = nil, orderDirection: String? = nil, clientUins: [String]? = nil, hasOverdueBill: UInt64? = nil, clientRemark: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, clientType: String? = nil, projectType: String? = nil, salesUin: String? = nil, salesName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentAuditedClientsResponse {
        let input = DescribeAgentAuditedClientsRequest(clientUin: clientUin, clientName: clientName, clientFlag: clientFlag, orderDirection: orderDirection, clientUins: clientUins, hasOverdueBill: hasOverdueBill, clientRemark: clientRemark, offset: offset, limit: limit, clientType: clientType, projectType: projectType, salesUin: salesUin, salesName: salesName)
        return try await self.client.execute(action: "DescribeAgentAuditedClients", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
