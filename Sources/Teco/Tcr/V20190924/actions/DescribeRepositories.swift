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

extension Tcr {
    /// DescribeRepositories请求参数结构体
    public struct DescribeRepositoriesRequest: TCRequestModel {
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
    }

    /// DescribeRepositories返回参数结构体
    public struct DescribeRepositoriesResponse: TCResponseModel {
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
        self.describeRepositories(DescribeRepositoriesRequest(registryId: registryId, namespaceName: namespaceName, repositoryName: repositoryName, offset: offset, limit: limit, sortBy: sortBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像仓库信息
    ///
    /// 查询镜像仓库列表或指定镜像仓库信息
    @inlinable
    public func describeRepositories(registryId: String, namespaceName: String? = nil, repositoryName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoriesResponse {
        try await self.describeRepositories(DescribeRepositoriesRequest(registryId: registryId, namespaceName: namespaceName, repositoryName: repositoryName, offset: offset, limit: limit, sortBy: sortBy), region: region, logger: logger, on: eventLoop)
    }
}
