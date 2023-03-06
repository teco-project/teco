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

import TecoPaginationHelpers

extension Tsf {
    /// DescribeSimpleGroups请求参数结构体
    public struct DescribeSimpleGroupsRequest: TCPaginatedRequest {
        /// 部署组ID列表，不填写时查询全量
        public let groupIdList: [String]?

        /// 应用ID，不填写时查询全量
        public let applicationId: String?

        /// 集群ID，不填写时查询全量
        public let clusterId: String?

        /// 命名空间ID，不填写时查询全量
        public let namespaceId: String?

        /// 每页条数
        public let limit: Int64?

        /// 起始偏移量
        public let offset: Int64?

        /// 部署组ID，不填写时查询全量
        public let groupId: String?

        /// 模糊查询，部署组名称，不填写时查询全量
        public let searchWord: String?

        /// 部署组类型，精确过滤字段，M：service mesh, P：原生应用， G：网关应用
        public let appMicroServiceType: String?

        public init(groupIdList: [String]? = nil, applicationId: String? = nil, clusterId: String? = nil, namespaceId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, groupId: String? = nil, searchWord: String? = nil, appMicroServiceType: String? = nil) {
            self.groupIdList = groupIdList
            self.applicationId = applicationId
            self.clusterId = clusterId
            self.namespaceId = namespaceId
            self.limit = limit
            self.offset = offset
            self.groupId = groupId
            self.searchWord = searchWord
            self.appMicroServiceType = appMicroServiceType
        }

        enum CodingKeys: String, CodingKey {
            case groupIdList = "GroupIdList"
            case applicationId = "ApplicationId"
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
            case limit = "Limit"
            case offset = "Offset"
            case groupId = "GroupId"
            case searchWord = "SearchWord"
            case appMicroServiceType = "AppMicroServiceType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeSimpleGroupsResponse) -> DescribeSimpleGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSimpleGroupsRequest(groupIdList: self.groupIdList, applicationId: self.applicationId, clusterId: self.clusterId, namespaceId: self.namespaceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), groupId: self.groupId, searchWord: self.searchWord, appMicroServiceType: self.appMicroServiceType)
        }
    }

    /// DescribeSimpleGroups返回参数结构体
    public struct DescribeSimpleGroupsResponse: TCPaginatedResponse {
        /// 简单部署组列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageSimpleGroup?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SimpleGroup] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询简单部署组列表
    @inlinable
    public func describeSimpleGroups(_ input: DescribeSimpleGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleGroupsResponse> {
        self.client.execute(action: "DescribeSimpleGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询简单部署组列表
    @inlinable
    public func describeSimpleGroups(_ input: DescribeSimpleGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleGroupsResponse {
        try await self.client.execute(action: "DescribeSimpleGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询简单部署组列表
    @inlinable
    public func describeSimpleGroups(groupIdList: [String]? = nil, applicationId: String? = nil, clusterId: String? = nil, namespaceId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, groupId: String? = nil, searchWord: String? = nil, appMicroServiceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleGroupsResponse> {
        let input = DescribeSimpleGroupsRequest(groupIdList: groupIdList, applicationId: applicationId, clusterId: clusterId, namespaceId: namespaceId, limit: limit, offset: offset, groupId: groupId, searchWord: searchWord, appMicroServiceType: appMicroServiceType)
        return self.client.execute(action: "DescribeSimpleGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询简单部署组列表
    @inlinable
    public func describeSimpleGroups(groupIdList: [String]? = nil, applicationId: String? = nil, clusterId: String? = nil, namespaceId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, groupId: String? = nil, searchWord: String? = nil, appMicroServiceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleGroupsResponse {
        let input = DescribeSimpleGroupsRequest(groupIdList: groupIdList, applicationId: applicationId, clusterId: clusterId, namespaceId: namespaceId, limit: limit, offset: offset, groupId: groupId, searchWord: searchWord, appMicroServiceType: appMicroServiceType)
        return try await self.client.execute(action: "DescribeSimpleGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询简单部署组列表
    @inlinable
    public func describeSimpleGroupsPaginated(_ input: DescribeSimpleGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SimpleGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeSimpleGroups, logger: logger, on: eventLoop)
    }

    /// 查询简单部署组列表
    @inlinable @discardableResult
    public func describeSimpleGroupsPaginated(_ input: DescribeSimpleGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSimpleGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSimpleGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询简单部署组列表
    ///
    /// - Returns: `AsyncSequence`s of `SimpleGroup` and `DescribeSimpleGroupsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSimpleGroupsPaginator(_ input: DescribeSimpleGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSimpleGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSimpleGroups, logger: logger, on: eventLoop)
    }
}
