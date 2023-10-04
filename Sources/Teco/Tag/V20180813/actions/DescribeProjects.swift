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

extension Tag {
    /// DescribeProjects请求参数结构体
    public struct DescribeProjectsRequest: TCPaginatedRequest {
        /// 传1拉取所有项目（包括隐藏项目），传0拉取显示项目
        public let allList: UInt64

        /// 分页条数，固定值1000。
        public let limit: UInt64

        /// 分页偏移量。
        public let offset: UInt64

        public init(allList: UInt64, limit: UInt64, offset: UInt64) {
            self.allList = allList
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case allList = "AllList"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProjectsResponse) -> DescribeProjectsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(allList: self.allList, limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// DescribeProjects返回参数结构体
    public struct DescribeProjectsResponse: TCPaginatedResponse {
        /// 数据总条数
        public let total: UInt64

        /// 项目列表
        public let projects: [Project]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case projects = "Projects"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Project`` list from the paginated response.
        public func getItems() -> [Project] {
            self.projects
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取项目列表
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectsResponse> {
        self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取项目列表
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取项目列表
    @inlinable
    public func describeProjects(allList: UInt64, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectsResponse> {
        self.describeProjects(.init(allList: allList, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取项目列表
    @inlinable
    public func describeProjects(allList: UInt64, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.describeProjects(.init(allList: allList, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取项目列表
    @inlinable
    public func describeProjectsPaginated(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Project])> {
        self.client.paginate(input: input, region: region, command: self.describeProjects, logger: logger, on: eventLoop)
    }

    /// 获取项目列表
    @inlinable @discardableResult
    public func describeProjectsPaginated(_ input: DescribeProjectsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProjectsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProjects, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取项目列表
    ///
    /// - Returns: `AsyncSequence`s of ``Project`` and ``DescribeProjectsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProjectsPaginator(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProjectsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProjects, logger: logger, on: eventLoop)
    }
}
