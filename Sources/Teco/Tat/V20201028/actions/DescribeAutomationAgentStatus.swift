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

import TecoCore
import TecoPaginationHelpers

extension Tat {
    /// DescribeAutomationAgentStatus请求参数结构体
    public struct DescribeAutomationAgentStatusRequest: TCPaginatedRequest {
        /// 待查询的实例ID列表。
        public let instanceIds: [String]?

        /// 过滤条件。<br> <li> agent-status - String - 是否必填：否 -（过滤条件）按照agent状态过滤，取值：Online 在线，Offline 离线。<br> <li> environment - String - 是否必填：否 -（过滤条件）按照agent运行环境查询，取值：Linux。<br> <li> instance-id - String - 是否必填：否 -（过滤条件）按照实例ID过滤。 <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `InstanceIds` 和 `Filters` 。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        public init(instanceIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.instanceIds = instanceIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAutomationAgentStatusResponse) -> DescribeAutomationAgentStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAutomationAgentStatusRequest(instanceIds: self.instanceIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeAutomationAgentStatus返回参数结构体
    public struct DescribeAutomationAgentStatusResponse: TCPaginatedResponse {
        /// Agent 信息列表。
        public let automationAgentSet: [AutomationAgentInfo]

        /// 符合条件的 Agent 总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case automationAgentSet = "AutomationAgentSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AutomationAgentInfo] {
            self.automationAgentSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询客户端状态
    ///
    /// 此接口用于查询自动化助手客户端的状态。
    @inlinable
    public func describeAutomationAgentStatus(_ input: DescribeAutomationAgentStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutomationAgentStatusResponse> {
        self.client.execute(action: "DescribeAutomationAgentStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户端状态
    ///
    /// 此接口用于查询自动化助手客户端的状态。
    @inlinable
    public func describeAutomationAgentStatus(_ input: DescribeAutomationAgentStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutomationAgentStatusResponse {
        try await self.client.execute(action: "DescribeAutomationAgentStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户端状态
    ///
    /// 此接口用于查询自动化助手客户端的状态。
    @inlinable
    public func describeAutomationAgentStatus(instanceIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutomationAgentStatusResponse> {
        self.describeAutomationAgentStatus(.init(instanceIds: instanceIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户端状态
    ///
    /// 此接口用于查询自动化助手客户端的状态。
    @inlinable
    public func describeAutomationAgentStatus(instanceIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutomationAgentStatusResponse {
        try await self.describeAutomationAgentStatus(.init(instanceIds: instanceIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户端状态
    ///
    /// 此接口用于查询自动化助手客户端的状态。
    @inlinable
    public func describeAutomationAgentStatusPaginated(_ input: DescribeAutomationAgentStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AutomationAgentInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAutomationAgentStatus, logger: logger, on: eventLoop)
    }

    /// 查询客户端状态
    ///
    /// 此接口用于查询自动化助手客户端的状态。
    @inlinable @discardableResult
    public func describeAutomationAgentStatusPaginated(_ input: DescribeAutomationAgentStatusRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAutomationAgentStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAutomationAgentStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询客户端状态
    ///
    /// 此接口用于查询自动化助手客户端的状态。
    ///
    /// - Returns: `AsyncSequence`s of `AutomationAgentInfo` and `DescribeAutomationAgentStatusResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAutomationAgentStatusPaginator(_ input: DescribeAutomationAgentStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAutomationAgentStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAutomationAgentStatus, logger: logger, on: eventLoop)
    }
}
