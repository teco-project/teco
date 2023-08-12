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

extension Tsf {
    /// DescribeContainerGroups请求参数结构体
    public struct DescribeContainerGroupsRequest: TCPaginatedRequest {
        /// 搜索字段，模糊搜索groupName字段
        public let searchWord: String?

        /// 分组所属应用ID。必填
        public let applicationId: String?

        /// 排序字段，默认为 createTime字段，支持id， name， createTime
        public let orderBy: String?

        /// 排序方式，默认为1：倒序排序，0：正序，1：倒序
        public let orderType: Int64?

        /// 偏移量，取值从0开始
        public let offset: Int64?

        /// 分页个数，默认为20， 取值应为1~50
        public let limit: Int64?

        /// 集群ID
        public let clusterId: String?

        /// 命名空间 ID
        public let namespaceId: String?

        public init(searchWord: String? = nil, applicationId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, clusterId: String? = nil, namespaceId: String? = nil) {
            self.searchWord = searchWord
            self.applicationId = applicationId
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
            self.clusterId = clusterId
            self.namespaceId = namespaceId
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case applicationId = "ApplicationId"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeContainerGroupsResponse) -> DescribeContainerGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeContainerGroupsRequest(searchWord: self.searchWord, applicationId: self.applicationId, orderBy: self.orderBy, orderType: self.orderType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, clusterId: self.clusterId, namespaceId: self.namespaceId)
        }
    }

    /// DescribeContainerGroups返回参数结构体
    public struct DescribeContainerGroupsResponse: TCPaginatedResponse {
        /// 查询的权限数据对象
        public let result: ContainGroupResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ContainGroup`` list from the paginated response.
        public func getItems() -> [ContainGroup] {
            self.result.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 容器部署组列表
    @inlinable
    public func describeContainerGroups(_ input: DescribeContainerGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerGroupsResponse> {
        self.client.execute(action: "DescribeContainerGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 容器部署组列表
    @inlinable
    public func describeContainerGroups(_ input: DescribeContainerGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerGroupsResponse {
        try await self.client.execute(action: "DescribeContainerGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 容器部署组列表
    @inlinable
    public func describeContainerGroups(searchWord: String? = nil, applicationId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, clusterId: String? = nil, namespaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerGroupsResponse> {
        self.describeContainerGroups(.init(searchWord: searchWord, applicationId: applicationId, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, clusterId: clusterId, namespaceId: namespaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 容器部署组列表
    @inlinable
    public func describeContainerGroups(searchWord: String? = nil, applicationId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, clusterId: String? = nil, namespaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerGroupsResponse {
        try await self.describeContainerGroups(.init(searchWord: searchWord, applicationId: applicationId, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, clusterId: clusterId, namespaceId: namespaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 容器部署组列表
    @inlinable
    public func describeContainerGroupsPaginated(_ input: DescribeContainerGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ContainGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeContainerGroups, logger: logger, on: eventLoop)
    }

    /// 容器部署组列表
    @inlinable @discardableResult
    public func describeContainerGroupsPaginated(_ input: DescribeContainerGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeContainerGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeContainerGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 容器部署组列表
    ///
    /// - Returns: `AsyncSequence`s of ``ContainGroup`` and ``DescribeContainerGroupsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeContainerGroupsPaginator(_ input: DescribeContainerGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeContainerGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeContainerGroups, logger: logger, on: eventLoop)
    }
}
