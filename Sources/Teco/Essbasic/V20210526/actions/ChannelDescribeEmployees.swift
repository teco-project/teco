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

extension Essbasic {
    /// ChannelDescribeEmployees请求参数结构体
    public struct ChannelDescribeEmployeesRequest: TCPaginatedRequest {
        /// 返回最大数量，最大为20
        public let limit: Int64

        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent?

        /// 查询过滤实名用户，Key为Status，Values为["IsVerified"]
        /// 根据第三方系统openId过滤查询员工时,Key为StaffOpenId,Values为["OpenId","OpenId",...]
        /// 查询离职员工时，Key为Status，Values为["QuiteJob"]
        public let filters: [Filter]?

        /// 偏移量，默认为0，最大为20000
        public let offset: Int64?

        /// 暂未开放
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(limit: Int64, agent: Agent? = nil, filters: [Filter]? = nil, offset: Int64? = nil) {
            self.limit = limit
            self.agent = agent
            self.filters = filters
            self.offset = offset
        }

        @available(*, deprecated, renamed: "init(limit:agent:filters:offset:)", message: "'operator' is deprecated in 'ChannelDescribeEmployeesRequest'. Setting this parameter has no effect.")
        public init(limit: Int64, agent: Agent? = nil, filters: [Filter]? = nil, offset: Int64? = nil, operator: UserInfo? = nil) {
            self.limit = limit
            self.agent = agent
            self.filters = filters
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case agent = "Agent"
            case filters = "Filters"
            case offset = "Offset"
            case `operator` = "Operator"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ChannelDescribeEmployeesResponse) -> ChannelDescribeEmployeesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ChannelDescribeEmployeesRequest(limit: self.limit, agent: self.agent, filters: self.filters, offset: (self.offset ?? 0) + response.limit)
        }
    }

    /// ChannelDescribeEmployees返回参数结构体
    public struct ChannelDescribeEmployeesResponse: TCPaginatedResponse {
        /// 员工数据列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let employees: [Staff]?

        /// 偏移量，默认为0，最大为20000
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offset: Int64?

        /// 返回最大数量，最大为20
        public let limit: Int64

        /// 符合条件的员工数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case employees = "Employees"
            case offset = "Offset"
            case limit = "Limit"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Staff`` list from the paginated response.
        public func getItems() -> [Staff] {
            self.employees ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @inlinable
    public func channelDescribeEmployees(_ input: ChannelDescribeEmployeesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeEmployeesResponse> {
        self.client.execute(action: "ChannelDescribeEmployees", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @inlinable
    public func channelDescribeEmployees(_ input: ChannelDescribeEmployeesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeEmployeesResponse {
        try await self.client.execute(action: "ChannelDescribeEmployees", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @inlinable
    public func channelDescribeEmployees(limit: Int64, agent: Agent? = nil, filters: [Filter]? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeEmployeesResponse> {
        self.channelDescribeEmployees(.init(limit: limit, agent: agent, filters: filters, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @available(*, deprecated, renamed: "channelDescribeEmployees(limit:agent:filters:offset:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func channelDescribeEmployees(limit: Int64, agent: Agent? = nil, filters: [Filter]? = nil, offset: Int64? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeEmployeesResponse> {
        self.channelDescribeEmployees(.init(limit: limit, agent: agent, filters: filters, offset: offset, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @inlinable
    public func channelDescribeEmployees(limit: Int64, agent: Agent? = nil, filters: [Filter]? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeEmployeesResponse {
        try await self.channelDescribeEmployees(.init(limit: limit, agent: agent, filters: filters, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @available(*, deprecated, renamed: "channelDescribeEmployees(limit:agent:filters:offset:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func channelDescribeEmployees(limit: Int64, agent: Agent? = nil, filters: [Filter]? = nil, offset: Int64? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeEmployeesResponse {
        try await self.channelDescribeEmployees(.init(limit: limit, agent: agent, filters: filters, offset: offset, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @inlinable
    public func channelDescribeEmployeesPaginated(_ input: ChannelDescribeEmployeesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Staff])> {
        self.client.paginate(input: input, region: region, command: self.channelDescribeEmployees, logger: logger, on: eventLoop)
    }

    /// 查询企业员工
    ///
    /// 查询企业员工列表
    @inlinable @discardableResult
    public func channelDescribeEmployeesPaginated(_ input: ChannelDescribeEmployeesRequest, region: TCRegion? = nil, onResponse: @escaping (ChannelDescribeEmployeesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.channelDescribeEmployees, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询企业员工
    ///
    /// 查询企业员工列表
    ///
    /// - Returns: `AsyncSequence`s of `Staff` and `ChannelDescribeEmployeesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func channelDescribeEmployeesPaginator(_ input: ChannelDescribeEmployeesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ChannelDescribeEmployeesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.channelDescribeEmployees, logger: logger, on: eventLoop)
    }
}
