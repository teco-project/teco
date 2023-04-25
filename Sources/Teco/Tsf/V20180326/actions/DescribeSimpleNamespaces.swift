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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tsf {
    /// DescribeSimpleNamespaces请求参数结构体
    public struct DescribeSimpleNamespacesRequest: TCPaginatedRequest {
        /// 命名空间ID列表，不传入时查询全量
        public let namespaceIdList: [String]?

        /// 集群ID，不传入时查询全量
        public let clusterId: String?

        /// 每页条数
        public let limit: Int64?

        /// 起始偏移量
        public let offset: Int64?

        /// 命名空间ID，不传入时查询全量
        public let namespaceId: String?

        /// 查询资源类型列表
        public let namespaceResourceTypeList: [String]?

        /// 通过id和name进行过滤
        public let searchWord: String?

        /// 查询的命名空间类型列表
        public let namespaceTypeList: [String]?

        /// 通过命名空间名精确过滤
        public let namespaceName: String?

        /// 通过是否是默认命名空间过滤，不传表示拉取全部命名空间。0：默认，命名空间。1：非默认命名空间
        public let isDefault: String?

        /// 无
        public let disableProgramAuthCheck: Bool?

        public init(namespaceIdList: [String]? = nil, clusterId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, namespaceId: String? = nil, namespaceResourceTypeList: [String]? = nil, searchWord: String? = nil, namespaceTypeList: [String]? = nil, namespaceName: String? = nil, isDefault: String? = nil, disableProgramAuthCheck: Bool? = nil) {
            self.namespaceIdList = namespaceIdList
            self.clusterId = clusterId
            self.limit = limit
            self.offset = offset
            self.namespaceId = namespaceId
            self.namespaceResourceTypeList = namespaceResourceTypeList
            self.searchWord = searchWord
            self.namespaceTypeList = namespaceTypeList
            self.namespaceName = namespaceName
            self.isDefault = isDefault
            self.disableProgramAuthCheck = disableProgramAuthCheck
        }

        enum CodingKeys: String, CodingKey {
            case namespaceIdList = "NamespaceIdList"
            case clusterId = "ClusterId"
            case limit = "Limit"
            case offset = "Offset"
            case namespaceId = "NamespaceId"
            case namespaceResourceTypeList = "NamespaceResourceTypeList"
            case searchWord = "SearchWord"
            case namespaceTypeList = "NamespaceTypeList"
            case namespaceName = "NamespaceName"
            case isDefault = "IsDefault"
            case disableProgramAuthCheck = "DisableProgramAuthCheck"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSimpleNamespacesResponse) -> DescribeSimpleNamespacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSimpleNamespacesRequest(namespaceIdList: self.namespaceIdList, clusterId: self.clusterId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), namespaceId: self.namespaceId, namespaceResourceTypeList: self.namespaceResourceTypeList, searchWord: self.searchWord, namespaceTypeList: self.namespaceTypeList, namespaceName: self.namespaceName, isDefault: self.isDefault, disableProgramAuthCheck: self.disableProgramAuthCheck)
        }
    }

    /// DescribeSimpleNamespaces返回参数结构体
    public struct DescribeSimpleNamespacesResponse: TCPaginatedResponse {
        /// 命名空间分页列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageNamespace?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Namespace] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询简单命名空间列表
    @inlinable
    public func describeSimpleNamespaces(_ input: DescribeSimpleNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleNamespacesResponse> {
        self.client.execute(action: "DescribeSimpleNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询简单命名空间列表
    @inlinable
    public func describeSimpleNamespaces(_ input: DescribeSimpleNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleNamespacesResponse {
        try await self.client.execute(action: "DescribeSimpleNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询简单命名空间列表
    @inlinable
    public func describeSimpleNamespaces(namespaceIdList: [String]? = nil, clusterId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, namespaceId: String? = nil, namespaceResourceTypeList: [String]? = nil, searchWord: String? = nil, namespaceTypeList: [String]? = nil, namespaceName: String? = nil, isDefault: String? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleNamespacesResponse> {
        self.describeSimpleNamespaces(.init(namespaceIdList: namespaceIdList, clusterId: clusterId, limit: limit, offset: offset, namespaceId: namespaceId, namespaceResourceTypeList: namespaceResourceTypeList, searchWord: searchWord, namespaceTypeList: namespaceTypeList, namespaceName: namespaceName, isDefault: isDefault, disableProgramAuthCheck: disableProgramAuthCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 查询简单命名空间列表
    @inlinable
    public func describeSimpleNamespaces(namespaceIdList: [String]? = nil, clusterId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, namespaceId: String? = nil, namespaceResourceTypeList: [String]? = nil, searchWord: String? = nil, namespaceTypeList: [String]? = nil, namespaceName: String? = nil, isDefault: String? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleNamespacesResponse {
        try await self.describeSimpleNamespaces(.init(namespaceIdList: namespaceIdList, clusterId: clusterId, limit: limit, offset: offset, namespaceId: namespaceId, namespaceResourceTypeList: namespaceResourceTypeList, searchWord: searchWord, namespaceTypeList: namespaceTypeList, namespaceName: namespaceName, isDefault: isDefault, disableProgramAuthCheck: disableProgramAuthCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 查询简单命名空间列表
    @inlinable
    public func describeSimpleNamespacesPaginated(_ input: DescribeSimpleNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Namespace])> {
        self.client.paginate(input: input, region: region, command: self.describeSimpleNamespaces, logger: logger, on: eventLoop)
    }

    /// 查询简单命名空间列表
    @inlinable @discardableResult
    public func describeSimpleNamespacesPaginated(_ input: DescribeSimpleNamespacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSimpleNamespacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSimpleNamespaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询简单命名空间列表
    ///
    /// - Returns: `AsyncSequence`s of `Namespace` and `DescribeSimpleNamespacesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSimpleNamespacesPaginator(_ input: DescribeSimpleNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSimpleNamespacesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSimpleNamespaces, logger: logger, on: eventLoop)
    }
}
