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

extension Tsf {
    /// DescribeGroups请求参数结构体
    public struct DescribeGroupsRequest: TCPaginatedRequest {
        /// 搜索字段
        public let searchWord: String?

        /// 应用ID
        public let applicationId: String?

        /// 排序字段
        public let orderBy: String?

        /// 排序方式
        public let orderType: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 分页个数
        public let limit: Int64?

        /// 命名空间ID
        public let namespaceId: String?

        /// 集群ID
        public let clusterId: String?

        /// 部署组资源类型列表
        public let groupResourceTypeList: [String]?

        /// 部署组状态过滤字段
        public let status: String?

        public let groupIdList: [String]?

        public init(searchWord: String? = nil, applicationId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, namespaceId: String? = nil, clusterId: String? = nil, groupResourceTypeList: [String]? = nil, status: String? = nil, groupIdList: [String]? = nil) {
            self.searchWord = searchWord
            self.applicationId = applicationId
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
            self.namespaceId = namespaceId
            self.clusterId = clusterId
            self.groupResourceTypeList = groupResourceTypeList
            self.status = status
            self.groupIdList = groupIdList
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case applicationId = "ApplicationId"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
            case namespaceId = "NamespaceId"
            case clusterId = "ClusterId"
            case groupResourceTypeList = "GroupResourceTypeList"
            case status = "Status"
            case groupIdList = "GroupIdList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGroupsResponse) -> DescribeGroupsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(searchWord: self.searchWord, applicationId: self.applicationId, orderBy: self.orderBy, orderType: self.orderType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, namespaceId: self.namespaceId, clusterId: self.clusterId, groupResourceTypeList: self.groupResourceTypeList, status: self.status, groupIdList: self.groupIdList)
        }
    }

    /// DescribeGroups返回参数结构体
    public struct DescribeGroupsResponse: TCPaginatedResponse {
        /// 虚拟机部署组分页信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageVmGroup?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``VmGroupSimple`` list from the paginated response.
        public func getItems() -> [VmGroupSimple] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 获取虚拟机部署组列表
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupsResponse> {
        self.client.execute(action: "DescribeGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取虚拟机部署组列表
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsResponse {
        try await self.client.execute(action: "DescribeGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取虚拟机部署组列表
    @inlinable
    public func describeGroups(searchWord: String? = nil, applicationId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, namespaceId: String? = nil, clusterId: String? = nil, groupResourceTypeList: [String]? = nil, status: String? = nil, groupIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupsResponse> {
        self.describeGroups(.init(searchWord: searchWord, applicationId: applicationId, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, namespaceId: namespaceId, clusterId: clusterId, groupResourceTypeList: groupResourceTypeList, status: status, groupIdList: groupIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取虚拟机部署组列表
    @inlinable
    public func describeGroups(searchWord: String? = nil, applicationId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, namespaceId: String? = nil, clusterId: String? = nil, groupResourceTypeList: [String]? = nil, status: String? = nil, groupIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsResponse {
        try await self.describeGroups(.init(searchWord: searchWord, applicationId: applicationId, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, namespaceId: namespaceId, clusterId: clusterId, groupResourceTypeList: groupResourceTypeList, status: status, groupIdList: groupIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取虚拟机部署组列表
    @inlinable
    public func describeGroupsPaginated(_ input: DescribeGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VmGroupSimple])> {
        self.client.paginate(input: input, region: region, command: self.describeGroups, logger: logger, on: eventLoop)
    }

    /// 获取虚拟机部署组列表
    @inlinable @discardableResult
    public func describeGroupsPaginated(_ input: DescribeGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取虚拟机部署组列表
    ///
    /// - Returns: `AsyncSequence`s of ``VmGroupSimple`` and ``DescribeGroupsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGroupsPaginator(_ input: DescribeGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGroups, logger: logger, on: eventLoop)
    }
}
