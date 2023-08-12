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
    /// ChannelDescribeRoles请求参数结构体
    public struct ChannelDescribeRolesRequest: TCPaginatedRequest {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent

        /// 查询起始偏移，最大2000
        public let offset: UInt64

        /// 查询数量，最大200
        public let limit: String

        /// 查询的关键字段:
        /// Key:"RoleType",Values:["1"]查询系统角色，Values:["2"]查询自定义角色
        /// Key:"RoleStatus",Values:["1"]查询启用角色，Values:["2"]查询禁用角色
        public let filters: [Filter]?

        /// 操作人信息
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(agent: Agent, offset: UInt64, limit: String, filters: [Filter]? = nil) {
            self.agent = agent
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        @available(*, deprecated, renamed: "init(agent:offset:limit:filters:)", message: "'operator' is deprecated in 'ChannelDescribeRolesRequest'. Setting this parameter has no effect.")
        public init(agent: Agent, offset: UInt64, limit: String, filters: [Filter]? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case `operator` = "Operator"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ChannelDescribeRolesResponse) -> ChannelDescribeRolesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ChannelDescribeRolesRequest(agent: self.agent, offset: self.offset + response.limit, limit: self.limit, filters: self.filters)
        }
    }

    /// ChannelDescribeRoles返回参数结构体
    public struct ChannelDescribeRolesResponse: TCPaginatedResponse {
        /// 页面偏移量，最大2000
        public let offset: UInt64

        /// 查询数量，最大200
        public let limit: UInt64

        /// 查询角色的总数量
        public let totalCount: UInt64

        /// 角色信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let channelRoles: [ChannelRole]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case totalCount = "TotalCount"
            case channelRoles = "ChannelRoles"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ChannelRole`` list from the paginated response.
        public func getItems() -> [ChannelRole] {
            self.channelRoles ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询角色列表
    ///
    /// 查询角色列表，支持根据类型和状态过滤角色列表
    @inlinable
    public func channelDescribeRoles(_ input: ChannelDescribeRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeRolesResponse> {
        self.client.execute(action: "ChannelDescribeRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询角色列表
    ///
    /// 查询角色列表，支持根据类型和状态过滤角色列表
    @inlinable
    public func channelDescribeRoles(_ input: ChannelDescribeRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeRolesResponse {
        try await self.client.execute(action: "ChannelDescribeRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询角色列表
    ///
    /// 查询角色列表，支持根据类型和状态过滤角色列表
    @inlinable
    public func channelDescribeRoles(agent: Agent, offset: UInt64, limit: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeRolesResponse> {
        self.channelDescribeRoles(.init(agent: agent, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询角色列表
    ///
    /// 查询角色列表，支持根据类型和状态过滤角色列表
    @available(*, deprecated, renamed: "channelDescribeRoles(agent:offset:limit:filters:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func channelDescribeRoles(agent: Agent, offset: UInt64, limit: String, filters: [Filter]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeRolesResponse> {
        self.channelDescribeRoles(.init(agent: agent, offset: offset, limit: limit, filters: filters, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 查询角色列表
    ///
    /// 查询角色列表，支持根据类型和状态过滤角色列表
    @inlinable
    public func channelDescribeRoles(agent: Agent, offset: UInt64, limit: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeRolesResponse {
        try await self.channelDescribeRoles(.init(agent: agent, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询角色列表
    ///
    /// 查询角色列表，支持根据类型和状态过滤角色列表
    @available(*, deprecated, renamed: "channelDescribeRoles(agent:offset:limit:filters:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func channelDescribeRoles(agent: Agent, offset: UInt64, limit: String, filters: [Filter]? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeRolesResponse {
        try await self.channelDescribeRoles(.init(agent: agent, offset: offset, limit: limit, filters: filters, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 查询角色列表
    ///
    /// 查询角色列表，支持根据类型和状态过滤角色列表
    @inlinable
    public func channelDescribeRolesPaginated(_ input: ChannelDescribeRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ChannelRole])> {
        self.client.paginate(input: input, region: region, command: self.channelDescribeRoles, logger: logger, on: eventLoop)
    }

    /// 查询角色列表
    ///
    /// 查询角色列表，支持根据类型和状态过滤角色列表
    @inlinable @discardableResult
    public func channelDescribeRolesPaginated(_ input: ChannelDescribeRolesRequest, region: TCRegion? = nil, onResponse: @escaping (ChannelDescribeRolesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.channelDescribeRoles, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询角色列表
    ///
    /// 查询角色列表，支持根据类型和状态过滤角色列表
    ///
    /// - Returns: `AsyncSequence`s of `ChannelRole` and `ChannelDescribeRolesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func channelDescribeRolesPaginator(_ input: ChannelDescribeRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ChannelDescribeRolesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.channelDescribeRoles, logger: logger, on: eventLoop)
    }
}
