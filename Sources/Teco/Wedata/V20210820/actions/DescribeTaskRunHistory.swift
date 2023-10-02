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

extension Wedata {
    /// DescribeTaskRunHistory请求参数结构体
    public struct DescribeTaskRunHistoryRequest: TCPaginatedRequest {
        /// 项目id
        public let projectId: String

        /// 检索条件
        public let searchCondition: InstanceSearchCondition

        /// 分页大小
        public let pageSize: UInt64

        /// 分页页码
        public let pageNumber: UInt64

        public init(projectId: String, searchCondition: InstanceSearchCondition, pageSize: UInt64, pageNumber: UInt64) {
            self.projectId = projectId
            self.searchCondition = searchCondition
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case searchCondition = "SearchCondition"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTaskRunHistoryResponse) -> DescribeTaskRunHistoryRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(projectId: self.projectId, searchCondition: self.searchCondition, pageSize: self.pageSize, pageNumber: self.pageNumber + 1)
        }
    }

    /// DescribeTaskRunHistory返回参数结构体
    public struct DescribeTaskRunHistoryResponse: TCPaginatedResponse {
        /// 分页查询任务运行历史结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: InstanceOpsInfoPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceOpsDto`` list from the paginated response.
        public func getItems() -> [InstanceOpsDto] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.data?.totalCount
        }
    }

    /// 分页查询任务运行历史
    @inlinable
    public func describeTaskRunHistory(_ input: DescribeTaskRunHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskRunHistoryResponse> {
        self.client.execute(action: "DescribeTaskRunHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询任务运行历史
    @inlinable
    public func describeTaskRunHistory(_ input: DescribeTaskRunHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskRunHistoryResponse {
        try await self.client.execute(action: "DescribeTaskRunHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询任务运行历史
    @inlinable
    public func describeTaskRunHistory(projectId: String, searchCondition: InstanceSearchCondition, pageSize: UInt64, pageNumber: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskRunHistoryResponse> {
        self.describeTaskRunHistory(.init(projectId: projectId, searchCondition: searchCondition, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询任务运行历史
    @inlinable
    public func describeTaskRunHistory(projectId: String, searchCondition: InstanceSearchCondition, pageSize: UInt64, pageNumber: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskRunHistoryResponse {
        try await self.describeTaskRunHistory(.init(projectId: projectId, searchCondition: searchCondition, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询任务运行历史
    @inlinable
    public func describeTaskRunHistoryPaginated(_ input: DescribeTaskRunHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [InstanceOpsDto])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskRunHistory, logger: logger, on: eventLoop)
    }

    /// 分页查询任务运行历史
    @inlinable @discardableResult
    public func describeTaskRunHistoryPaginated(_ input: DescribeTaskRunHistoryRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskRunHistoryResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskRunHistory, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 分页查询任务运行历史
    ///
    /// - Returns: `AsyncSequence`s of ``InstanceOpsDto`` and ``DescribeTaskRunHistoryResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTaskRunHistoryPaginator(_ input: DescribeTaskRunHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskRunHistoryRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskRunHistory, logger: logger, on: eventLoop)
    }
}
