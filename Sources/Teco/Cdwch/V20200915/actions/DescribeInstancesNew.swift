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

extension Cdwch {
    /// DescribeInstancesNew请求参数结构体
    public struct DescribeInstancesNewRequest: TCPaginatedRequest {
        /// 搜索的集群id名称
        public let searchInstanceId: String?

        /// 搜索的集群name
        public let searchInstanceName: String?

        /// 分页参数，第一页为0，第二页为10
        public let offset: Int64?

        /// 分页参数，分页步长，默认为10
        public let limit: Int64?

        /// 搜索标签列表
        public let searchTags: [SearchTags]?

        /// 信息详细与否
        public let isSimple: Bool?

        public init(searchInstanceId: String? = nil, searchInstanceName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchTags: [SearchTags]? = nil, isSimple: Bool? = nil) {
            self.searchInstanceId = searchInstanceId
            self.searchInstanceName = searchInstanceName
            self.offset = offset
            self.limit = limit
            self.searchTags = searchTags
            self.isSimple = isSimple
        }

        enum CodingKeys: String, CodingKey {
            case searchInstanceId = "SearchInstanceId"
            case searchInstanceName = "SearchInstanceName"
            case offset = "Offset"
            case limit = "Limit"
            case searchTags = "SearchTags"
            case isSimple = "IsSimple"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesNewResponse) -> DescribeInstancesNewRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesNewRequest(searchInstanceId: self.searchInstanceId, searchInstanceName: self.searchInstanceName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, searchTags: self.searchTags, isSimple: self.isSimple)
        }
    }

    /// DescribeInstancesNew返回参数结构体
    public struct DescribeInstancesNewResponse: TCPaginatedResponse {
        /// 实例总数
        public let totalCount: Int64

        /// 实例数组
        public let instancesList: [InstanceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instancesList = "InstancesList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceInfo`` list from the paginated response.
        public func getItems() -> [InstanceInfo] {
            self.instancesList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取实例简单信息列表
    ///
    /// 获取实例列表，供外部sdk使用
    @inlinable
    public func describeInstancesNew(_ input: DescribeInstancesNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesNewResponse> {
        self.client.execute(action: "DescribeInstancesNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例简单信息列表
    ///
    /// 获取实例列表，供外部sdk使用
    @inlinable
    public func describeInstancesNew(_ input: DescribeInstancesNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesNewResponse {
        try await self.client.execute(action: "DescribeInstancesNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例简单信息列表
    ///
    /// 获取实例列表，供外部sdk使用
    @inlinable
    public func describeInstancesNew(searchInstanceId: String? = nil, searchInstanceName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchTags: [SearchTags]? = nil, isSimple: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesNewResponse> {
        self.describeInstancesNew(.init(searchInstanceId: searchInstanceId, searchInstanceName: searchInstanceName, offset: offset, limit: limit, searchTags: searchTags, isSimple: isSimple), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例简单信息列表
    ///
    /// 获取实例列表，供外部sdk使用
    @inlinable
    public func describeInstancesNew(searchInstanceId: String? = nil, searchInstanceName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchTags: [SearchTags]? = nil, isSimple: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesNewResponse {
        try await self.describeInstancesNew(.init(searchInstanceId: searchInstanceId, searchInstanceName: searchInstanceName, offset: offset, limit: limit, searchTags: searchTags, isSimple: isSimple), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例简单信息列表
    ///
    /// 获取实例列表，供外部sdk使用
    @inlinable
    public func describeInstancesNewPaginated(_ input: DescribeInstancesNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesNew, logger: logger, on: eventLoop)
    }

    /// 获取实例简单信息列表
    ///
    /// 获取实例列表，供外部sdk使用
    @inlinable @discardableResult
    public func describeInstancesNewPaginated(_ input: DescribeInstancesNewRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesNewResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstancesNew, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取实例简单信息列表
    ///
    /// 获取实例列表，供外部sdk使用
    ///
    /// - Returns: `AsyncSequence`s of `InstanceInfo` and `DescribeInstancesNewResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesNewPaginator(_ input: DescribeInstancesNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesNewRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstancesNew, logger: logger, on: eventLoop)
    }
}
