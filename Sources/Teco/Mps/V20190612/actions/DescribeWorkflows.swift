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

extension Mps {
    /// DescribeWorkflows请求参数结构体
    public struct DescribeWorkflowsRequest: TCPaginatedRequest {
        /// 工作流 ID 过滤条件，数组长度限制：100。
        public let workflowIds: [Int64]?

        /// 工作流状态，取值范围：
        /// - Enabled：已启用，
        /// - Disabled：已禁用。
        /// 不填此参数，则不区分工作流状态。
        public let status: String?

        /// 分页偏移量，默认值：0。
        public let offset: Int64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: Int64?

        public init(workflowIds: [Int64]? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.workflowIds = workflowIds
            self.status = status
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case workflowIds = "WorkflowIds"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWorkflowsResponse) -> DescribeWorkflowsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWorkflowsRequest(workflowIds: self.workflowIds, status: self.status, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeWorkflows返回参数结构体
    public struct DescribeWorkflowsResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 工作流信息数组。
        public let workflowInfoSet: [WorkflowInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case workflowInfoSet = "WorkflowInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``WorkflowInfo`` list from the paginated response.
        public func getItems() -> [WorkflowInfo] {
            self.workflowInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取工作流列表
    ///
    /// 根据工作流 ID，获取工作流详情列表。
    @inlinable
    public func describeWorkflows(_ input: DescribeWorkflowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkflowsResponse> {
        self.client.execute(action: "DescribeWorkflows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取工作流列表
    ///
    /// 根据工作流 ID，获取工作流详情列表。
    @inlinable
    public func describeWorkflows(_ input: DescribeWorkflowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkflowsResponse {
        try await self.client.execute(action: "DescribeWorkflows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取工作流列表
    ///
    /// 根据工作流 ID，获取工作流详情列表。
    @inlinable
    public func describeWorkflows(workflowIds: [Int64]? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkflowsResponse> {
        self.describeWorkflows(.init(workflowIds: workflowIds, status: status, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取工作流列表
    ///
    /// 根据工作流 ID，获取工作流详情列表。
    @inlinable
    public func describeWorkflows(workflowIds: [Int64]? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkflowsResponse {
        try await self.describeWorkflows(.init(workflowIds: workflowIds, status: status, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取工作流列表
    ///
    /// 根据工作流 ID，获取工作流详情列表。
    @inlinable
    public func describeWorkflowsPaginated(_ input: DescribeWorkflowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [WorkflowInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeWorkflows, logger: logger, on: eventLoop)
    }

    /// 获取工作流列表
    ///
    /// 根据工作流 ID，获取工作流详情列表。
    @inlinable @discardableResult
    public func describeWorkflowsPaginated(_ input: DescribeWorkflowsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWorkflowsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWorkflows, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取工作流列表
    ///
    /// 根据工作流 ID，获取工作流详情列表。
    ///
    /// - Returns: `AsyncSequence`s of ``WorkflowInfo`` and ``DescribeWorkflowsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWorkflowsPaginator(_ input: DescribeWorkflowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWorkflowsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWorkflows, logger: logger, on: eventLoop)
    }
}
