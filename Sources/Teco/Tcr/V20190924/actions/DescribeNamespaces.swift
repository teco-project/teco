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

extension Tcr {
    /// DescribeNamespaces请求参数结构体
    public struct DescribeNamespacesRequest: TCPaginatedRequest {
        /// 实例Id
        public let registryId: String

        /// 指定命名空间，不填写默认查询所有命名空间
        public let namespaceName: String?

        /// 每页个数
        public let limit: Int64?

        /// 页面偏移（第几页）
        public let offset: Int64?

        /// 列出所有命名空间
        public let all: Bool?

        /// 过滤条件
        public let filters: [Filter]?

        /// 仅查询启用了 KMS 镜像签名的空间
        public let kmsSignPolicy: Bool?

        public init(registryId: String, namespaceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, all: Bool? = nil, filters: [Filter]? = nil, kmsSignPolicy: Bool? = nil) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.limit = limit
            self.offset = offset
            self.all = all
            self.filters = filters
            self.kmsSignPolicy = kmsSignPolicy
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case limit = "Limit"
            case offset = "Offset"
            case all = "All"
            case filters = "Filters"
            case kmsSignPolicy = "KmsSignPolicy"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeNamespacesResponse) -> DescribeNamespacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNamespacesRequest(registryId: self.registryId, namespaceName: self.namespaceName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), all: self.all, filters: self.filters, kmsSignPolicy: self.kmsSignPolicy)
        }
    }

    /// DescribeNamespaces返回参数结构体
    public struct DescribeNamespacesResponse: TCPaginatedResponse {
        /// 命名空间列表信息
        public let namespaceList: [TcrNamespaceInfo]

        /// 总个数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case namespaceList = "NamespaceList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TcrNamespaceInfo] {
            self.namespaceList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询命名空间信息
    ///
    /// 查询命名空间列表或指定命名空间信息
    @inlinable
    public func describeNamespaces(_ input: DescribeNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespacesResponse> {
        self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询命名空间信息
    ///
    /// 查询命名空间列表或指定命名空间信息
    @inlinable
    public func describeNamespaces(_ input: DescribeNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespacesResponse {
        try await self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询命名空间信息
    ///
    /// 查询命名空间列表或指定命名空间信息
    @inlinable
    public func describeNamespaces(registryId: String, namespaceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, all: Bool? = nil, filters: [Filter]? = nil, kmsSignPolicy: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespacesResponse> {
        let input = DescribeNamespacesRequest(registryId: registryId, namespaceName: namespaceName, limit: limit, offset: offset, all: all, filters: filters, kmsSignPolicy: kmsSignPolicy)
        return self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询命名空间信息
    ///
    /// 查询命名空间列表或指定命名空间信息
    @inlinable
    public func describeNamespaces(registryId: String, namespaceName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, all: Bool? = nil, filters: [Filter]? = nil, kmsSignPolicy: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespacesResponse {
        let input = DescribeNamespacesRequest(registryId: registryId, namespaceName: namespaceName, limit: limit, offset: offset, all: all, filters: filters, kmsSignPolicy: kmsSignPolicy)
        return try await self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
