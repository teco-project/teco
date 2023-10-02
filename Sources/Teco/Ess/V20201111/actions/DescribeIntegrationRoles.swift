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

extension Ess {
    /// DescribeIntegrationRoles请求参数结构体
    public struct DescribeIntegrationRolesRequest: TCPaginatedRequest {
        /// 执行本接口操作的员工信息。使用此接口时，必须填写UserId。
        /// 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。
        public let `operator`: UserInfo

        /// 指定分页每页返回的数据条数，单页最大支持 200。
        public let limit: UInt64

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        /// 查询的关键字段，支持Key-Value单值查询。可选键值对如下：
        ///
        /// - Key:"RoleType"，查询角色类型，Values可选：
        ///   - **"1"**：查询系统角色
        ///   - **"2"**：查询自定义角色
        /// - Key:"RoleStatus"，查询角色状态，Values可选：
        ///   - **"1"**：查询启用角色
        ///   - **"2"**：查询禁用角色
        /// - Key:"IsGroupRole"，是否查询集团角色，Values可选：
        ///   - **"0"**：查询非集团角色
        ///   - **"1"**：查询集团角色
        /// - Key:"IsReturnPermissionGroup"，是否返回角色对应权限树，Values可选：
        ///   - **"0"**：接口不返回角色对应的权限树字段
        ///   - **"1"**：接口返回角色对应的权限树字段
        public let filters: [Filter]?

        /// 指定分页返回第几页的数据，如果不传默认返回第一页。页码从 0 开始，即首页为 0，最大2000。
        public let offset: UInt64?

        public init(operator: UserInfo, limit: UInt64, agent: Agent? = nil, filters: [Filter]? = nil, offset: UInt64? = nil) {
            self.operator = `operator`
            self.limit = limit
            self.agent = agent
            self.filters = filters
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case limit = "Limit"
            case agent = "Agent"
            case filters = "Filters"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIntegrationRolesResponse) -> DescribeIntegrationRolesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(operator: self.operator, limit: self.limit, agent: self.agent, filters: self.filters, offset: (self.offset ?? 0) + response.limit)
        }
    }

    /// DescribeIntegrationRoles返回参数结构体
    public struct DescribeIntegrationRolesResponse: TCPaginatedResponse {
        /// 指定分页返回的页码。页码从0开始，最大为2000。
        public let offset: UInt64

        /// 指定分页每页返回的数据条数，单页最大支持 200。
        public let limit: UInt64

        /// 符合查询条件的总角色数。
        public let totalCount: UInt64

        /// 企业角色信息列表。
        public let integrateRoles: [IntegrateRole]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case totalCount = "TotalCount"
            case integrateRoles = "IntegrateRoles"
            case requestId = "RequestId"
        }

        /// Extract the returned ``IntegrateRole`` list from the paginated response.
        public func getItems() -> [IntegrateRole] {
            self.integrateRoles
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询企业角色列表
    ///
    /// 此接口（DescribeIntegrationRoles）用于分页查询企业角色列表，列表按照角色创建时间升序排列。
    ///
    /// 注：`法人角色是系统保留角色，因此返回列表中不含法人角色。`
    @inlinable
    public func describeIntegrationRoles(_ input: DescribeIntegrationRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationRolesResponse> {
        self.client.execute(action: "DescribeIntegrationRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询企业角色列表
    ///
    /// 此接口（DescribeIntegrationRoles）用于分页查询企业角色列表，列表按照角色创建时间升序排列。
    ///
    /// 注：`法人角色是系统保留角色，因此返回列表中不含法人角色。`
    @inlinable
    public func describeIntegrationRoles(_ input: DescribeIntegrationRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationRolesResponse {
        try await self.client.execute(action: "DescribeIntegrationRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询企业角色列表
    ///
    /// 此接口（DescribeIntegrationRoles）用于分页查询企业角色列表，列表按照角色创建时间升序排列。
    ///
    /// 注：`法人角色是系统保留角色，因此返回列表中不含法人角色。`
    @inlinable
    public func describeIntegrationRoles(operator: UserInfo, limit: UInt64, agent: Agent? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationRolesResponse> {
        self.describeIntegrationRoles(.init(operator: `operator`, limit: limit, agent: agent, filters: filters, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询企业角色列表
    ///
    /// 此接口（DescribeIntegrationRoles）用于分页查询企业角色列表，列表按照角色创建时间升序排列。
    ///
    /// 注：`法人角色是系统保留角色，因此返回列表中不含法人角色。`
    @inlinable
    public func describeIntegrationRoles(operator: UserInfo, limit: UInt64, agent: Agent? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationRolesResponse {
        try await self.describeIntegrationRoles(.init(operator: `operator`, limit: limit, agent: agent, filters: filters, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询企业角色列表
    ///
    /// 此接口（DescribeIntegrationRoles）用于分页查询企业角色列表，列表按照角色创建时间升序排列。
    ///
    /// 注：`法人角色是系统保留角色，因此返回列表中不含法人角色。`
    @inlinable
    public func describeIntegrationRolesPaginated(_ input: DescribeIntegrationRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [IntegrateRole])> {
        self.client.paginate(input: input, region: region, command: self.describeIntegrationRoles, logger: logger, on: eventLoop)
    }

    /// 查询企业角色列表
    ///
    /// 此接口（DescribeIntegrationRoles）用于分页查询企业角色列表，列表按照角色创建时间升序排列。
    ///
    /// 注：`法人角色是系统保留角色，因此返回列表中不含法人角色。`
    @inlinable @discardableResult
    public func describeIntegrationRolesPaginated(_ input: DescribeIntegrationRolesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIntegrationRolesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIntegrationRoles, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询企业角色列表
    ///
    /// 此接口（DescribeIntegrationRoles）用于分页查询企业角色列表，列表按照角色创建时间升序排列。
    ///
    /// 注：`法人角色是系统保留角色，因此返回列表中不含法人角色。`
    ///
    /// - Returns: `AsyncSequence`s of ``IntegrateRole`` and ``DescribeIntegrationRolesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIntegrationRolesPaginator(_ input: DescribeIntegrationRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIntegrationRolesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIntegrationRoles, logger: logger, on: eventLoop)
    }
}
