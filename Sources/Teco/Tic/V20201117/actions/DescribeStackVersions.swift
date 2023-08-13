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

extension Tic {
    /// DescribeStackVersions请求参数结构体
    public struct DescribeStackVersionsRequest: TCPaginatedRequest {
        /// 按照⼀个或者多个版本ID查询
        public let versionIds: [String]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节
        public let limit: Int64?

        /// - **Name**
        /// 按照【**版本名称**】进行过滤
        /// 类型：string
        /// - **Status**
        /// 按照【**版本状态**】过滤，形如`VERSION_EDITING`，`PLAN_IN_PROGRESS`等
        /// 类型：string
        /// - **StackId**
        /// 按照版本所属的【**资源栈ID**】进行过滤，形如`stk-xxxxxx`
        /// 类型：string
        public let filters: [Filter]?

        public init(versionIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.versionIds = versionIds
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case versionIds = "VersionIds"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeStackVersionsResponse) -> DescribeStackVersionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeStackVersionsRequest(versionIds: self.versionIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeStackVersions返回参数结构体
    public struct DescribeStackVersionsResponse: TCPaginatedResponse {
        /// 符合条件的版本数量
        public let totalCount: Int64

        /// 版本详细信息列表
        public let versions: [VersionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case versions = "Versions"
            case requestId = "RequestId"
        }

        /// Extract the returned ``VersionInfo`` list from the paginated response.
        public func getItems() -> [VersionInfo] {
            self.versions
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询版本列表
    ///
    /// 本接口（DescribeStackVersions）用于查询一个或多个版本的详细信息。
    ///
    /// - 可以根据版本ID查询感兴趣的版本
    /// - 可以根据版本名字和状态来过滤版本，详见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的版本
    @inlinable
    public func describeStackVersions(_ input: DescribeStackVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStackVersionsResponse> {
        self.client.execute(action: "DescribeStackVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询版本列表
    ///
    /// 本接口（DescribeStackVersions）用于查询一个或多个版本的详细信息。
    ///
    /// - 可以根据版本ID查询感兴趣的版本
    /// - 可以根据版本名字和状态来过滤版本，详见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的版本
    @inlinable
    public func describeStackVersions(_ input: DescribeStackVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStackVersionsResponse {
        try await self.client.execute(action: "DescribeStackVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询版本列表
    ///
    /// 本接口（DescribeStackVersions）用于查询一个或多个版本的详细信息。
    ///
    /// - 可以根据版本ID查询感兴趣的版本
    /// - 可以根据版本名字和状态来过滤版本，详见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的版本
    @inlinable
    public func describeStackVersions(versionIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStackVersionsResponse> {
        self.describeStackVersions(.init(versionIds: versionIds, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询版本列表
    ///
    /// 本接口（DescribeStackVersions）用于查询一个或多个版本的详细信息。
    ///
    /// - 可以根据版本ID查询感兴趣的版本
    /// - 可以根据版本名字和状态来过滤版本，详见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的版本
    @inlinable
    public func describeStackVersions(versionIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStackVersionsResponse {
        try await self.describeStackVersions(.init(versionIds: versionIds, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询版本列表
    ///
    /// 本接口（DescribeStackVersions）用于查询一个或多个版本的详细信息。
    ///
    /// - 可以根据版本ID查询感兴趣的版本
    /// - 可以根据版本名字和状态来过滤版本，详见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的版本
    @inlinable
    public func describeStackVersionsPaginated(_ input: DescribeStackVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VersionInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeStackVersions, logger: logger, on: eventLoop)
    }

    /// 查询版本列表
    ///
    /// 本接口（DescribeStackVersions）用于查询一个或多个版本的详细信息。
    ///
    /// - 可以根据版本ID查询感兴趣的版本
    /// - 可以根据版本名字和状态来过滤版本，详见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的版本
    @inlinable @discardableResult
    public func describeStackVersionsPaginated(_ input: DescribeStackVersionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeStackVersionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeStackVersions, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询版本列表
    ///
    /// 本接口（DescribeStackVersions）用于查询一个或多个版本的详细信息。
    ///
    /// - 可以根据版本ID查询感兴趣的版本
    /// - 可以根据版本名字和状态来过滤版本，详见过滤器Filter
    /// - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的版本
    ///
    /// - Returns: `AsyncSequence`s of ``VersionInfo`` and ``DescribeStackVersionsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeStackVersionsPaginator(_ input: DescribeStackVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeStackVersionsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeStackVersions, logger: logger, on: eventLoop)
    }
}
