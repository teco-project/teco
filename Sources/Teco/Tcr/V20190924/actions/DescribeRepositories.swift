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

import TecoCore
import TecoPaginationHelpers

extension Tcr {
    /// DescribeRepositories请求参数结构体
    public struct DescribeRepositoriesRequest: TCPaginatedRequest {
        /// 实例Id
        public let registryId: String

        /// 指定命名空间，不填写默认为查询所有命名空间下镜像仓库
        public let namespaceName: String?

        /// 指定镜像仓库，不填写默认查询指定命名空间下所有镜像仓库
        public let repositoryName: String?

        /// 页数，用于分页
        public let offset: Int64?

        /// 每页个数，用于分页
        public let limit: Int64?

        /// 基于字段排序，支持的值有-creation_time,-name, -update_time
        public let sortBy: String?

        public init(registryId: String, namespaceName: String? = nil, repositoryName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.repositoryName = repositoryName
            self.offset = offset
            self.limit = limit
            self.sortBy = sortBy
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case repositoryName = "RepositoryName"
            case offset = "Offset"
            case limit = "Limit"
            case sortBy = "SortBy"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRepositoriesResponse) -> DescribeRepositoriesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRepositoriesRequest(registryId: self.registryId, namespaceName: self.namespaceName, repositoryName: self.repositoryName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, sortBy: self.sortBy)
        }
    }

    /// DescribeRepositories返回参数结构体
    public struct DescribeRepositoriesResponse: TCPaginatedResponse {
        /// 仓库信息列表
        public let repositoryList: [TcrRepositoryInfo]

        /// 总个数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case repositoryList = "RepositoryList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TcrRepositoryInfo] {
            self.repositoryList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询镜像仓库信息
    ///
    /// 查询镜像仓库列表或指定镜像仓库信息
    @inlinable
    public func describeRepositories(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoriesResponse> {
        self.client.execute(action: "DescribeRepositories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像仓库信息
    ///
    /// 查询镜像仓库列表或指定镜像仓库信息
    @inlinable
    public func describeRepositories(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoriesResponse {
        try await self.client.execute(action: "DescribeRepositories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像仓库信息
    ///
    /// 查询镜像仓库列表或指定镜像仓库信息
    @inlinable
    public func describeRepositories(registryId: String, namespaceName: String? = nil, repositoryName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoriesResponse> {
        self.describeRepositories(.init(registryId: registryId, namespaceName: namespaceName, repositoryName: repositoryName, offset: offset, limit: limit, sortBy: sortBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像仓库信息
    ///
    /// 查询镜像仓库列表或指定镜像仓库信息
    @inlinable
    public func describeRepositories(registryId: String, namespaceName: String? = nil, repositoryName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoriesResponse {
        try await self.describeRepositories(.init(registryId: registryId, namespaceName: namespaceName, repositoryName: repositoryName, offset: offset, limit: limit, sortBy: sortBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像仓库信息
    ///
    /// 查询镜像仓库列表或指定镜像仓库信息
    @inlinable
    public func describeRepositoriesPaginated(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TcrRepositoryInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeRepositories, logger: logger, on: eventLoop)
    }

    /// 查询镜像仓库信息
    ///
    /// 查询镜像仓库列表或指定镜像仓库信息
    @inlinable @discardableResult
    public func describeRepositoriesPaginated(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRepositoriesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRepositories, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询镜像仓库信息
    ///
    /// 查询镜像仓库列表或指定镜像仓库信息
    ///
    /// - Returns: `AsyncSequence`s of `TcrRepositoryInfo` and `DescribeRepositoriesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRepositoriesPaginator(_ input: DescribeRepositoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRepositoriesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRepositories, logger: logger, on: eventLoop)
    }
}
