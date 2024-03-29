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

extension Solar {
    /// DescribeProjects请求参数结构体
    public struct DescribeProjectsRequest: TCPaginatedRequest {
        /// 页码
        public let pageNo: UInt64

        /// 页面大小
        public let pageSize: UInt64

        /// 过滤规则
        public let searchWord: String?

        /// 部门范围过滤
        public let filters: Filters?

        /// 项目状态, 0:编辑中 1:运营中 2:已下线 3:已删除 4:审批中
        public let projectStatus: Int64?

        public init(pageNo: UInt64, pageSize: UInt64, searchWord: String? = nil, filters: Filters? = nil, projectStatus: Int64? = nil) {
            self.pageNo = pageNo
            self.pageSize = pageSize
            self.searchWord = searchWord
            self.filters = filters
            self.projectStatus = projectStatus
        }

        enum CodingKeys: String, CodingKey {
            case pageNo = "PageNo"
            case pageSize = "PageSize"
            case searchWord = "SearchWord"
            case filters = "Filters"
            case projectStatus = "ProjectStatus"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProjectsResponse) -> DescribeProjectsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(pageNo: self.pageNo + 1, pageSize: self.pageSize, searchWord: self.searchWord, filters: self.filters, projectStatus: self.projectStatus)
        }
    }

    /// DescribeProjects返回参数结构体
    public struct DescribeProjectsResponse: TCPaginatedResponse {
        /// 项目列表
        public let projectList: [ProjectInfo]

        /// 项目数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectList = "ProjectList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProjectInfo`` list from the paginated response.
        public func getItems() -> [ProjectInfo] {
            self.projectList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 项目列表展示
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectsResponse> {
        self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 项目列表展示
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 项目列表展示
    @inlinable
    public func describeProjects(pageNo: UInt64, pageSize: UInt64, searchWord: String? = nil, filters: Filters? = nil, projectStatus: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectsResponse> {
        self.describeProjects(.init(pageNo: pageNo, pageSize: pageSize, searchWord: searchWord, filters: filters, projectStatus: projectStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 项目列表展示
    @inlinable
    public func describeProjects(pageNo: UInt64, pageSize: UInt64, searchWord: String? = nil, filters: Filters? = nil, projectStatus: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.describeProjects(.init(pageNo: pageNo, pageSize: pageSize, searchWord: searchWord, filters: filters, projectStatus: projectStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 项目列表展示
    @inlinable
    public func describeProjectsPaginated(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ProjectInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeProjects, logger: logger, on: eventLoop)
    }

    /// 项目列表展示
    @inlinable @discardableResult
    public func describeProjectsPaginated(_ input: DescribeProjectsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProjectsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProjects, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 项目列表展示
    ///
    /// - Returns: `AsyncSequence`s of ``ProjectInfo`` and ``DescribeProjectsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProjectsPaginator(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProjectsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProjects, logger: logger, on: eventLoop)
    }
}
