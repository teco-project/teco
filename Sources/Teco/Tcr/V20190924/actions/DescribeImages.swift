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

extension Tcr {
    /// DescribeImages请求参数结构体
    public struct DescribeImagesRequest: TCPaginatedRequest {
        /// 实例ID
        public let registryId: String

        /// 命名空间名称
        public let namespaceName: String

        /// 镜像仓库名称
        public let repositoryName: String

        /// 指定镜像版本进行查找，当前为模糊搜索
        public let imageVersion: String?

        /// 每页个数，用于分页，默认20
        public let limit: Int64?

        /// 页数，默认值为1
        public let offset: Int64?

        /// 指定镜像 Digest 进行查找
        public let digest: String?

        /// 指定是否为精准匹配，true为精准匹配，不填为模糊匹配
        public let exactMatch: Bool?

        public init(registryId: String, namespaceName: String, repositoryName: String, imageVersion: String? = nil, limit: Int64? = nil, offset: Int64? = nil, digest: String? = nil, exactMatch: Bool? = nil) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.repositoryName = repositoryName
            self.imageVersion = imageVersion
            self.limit = limit
            self.offset = offset
            self.digest = digest
            self.exactMatch = exactMatch
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case repositoryName = "RepositoryName"
            case imageVersion = "ImageVersion"
            case limit = "Limit"
            case offset = "Offset"
            case digest = "Digest"
            case exactMatch = "ExactMatch"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImagesResponse) -> DescribeImagesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(registryId: self.registryId, namespaceName: self.namespaceName, repositoryName: self.repositoryName, imageVersion: self.imageVersion, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), digest: self.digest, exactMatch: self.exactMatch)
        }
    }

    /// DescribeImages返回参数结构体
    public struct DescribeImagesResponse: TCPaginatedResponse {
        /// 容器镜像信息列表
        public let imageInfoList: [TcrImageInfo]

        /// 容器镜像总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageInfoList = "ImageInfoList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TcrImageInfo`` list from the paginated response.
        public func getItems() -> [TcrImageInfo] {
            self.imageInfoList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询容器镜像信息
    ///
    /// 查询镜像版本列表或指定容器镜像信息
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器镜像信息
    ///
    /// 查询镜像版本列表或指定容器镜像信息
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器镜像信息
    ///
    /// 查询镜像版本列表或指定容器镜像信息
    @inlinable
    public func describeImages(registryId: String, namespaceName: String, repositoryName: String, imageVersion: String? = nil, limit: Int64? = nil, offset: Int64? = nil, digest: String? = nil, exactMatch: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.describeImages(.init(registryId: registryId, namespaceName: namespaceName, repositoryName: repositoryName, imageVersion: imageVersion, limit: limit, offset: offset, digest: digest, exactMatch: exactMatch), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器镜像信息
    ///
    /// 查询镜像版本列表或指定容器镜像信息
    @inlinable
    public func describeImages(registryId: String, namespaceName: String, repositoryName: String, imageVersion: String? = nil, limit: Int64? = nil, offset: Int64? = nil, digest: String? = nil, exactMatch: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.describeImages(.init(registryId: registryId, namespaceName: namespaceName, repositoryName: repositoryName, imageVersion: imageVersion, limit: limit, offset: offset, digest: digest, exactMatch: exactMatch), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器镜像信息
    ///
    /// 查询镜像版本列表或指定容器镜像信息
    @inlinable
    public func describeImagesPaginated(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TcrImageInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeImages, logger: logger, on: eventLoop)
    }

    /// 查询容器镜像信息
    ///
    /// 查询镜像版本列表或指定容器镜像信息
    @inlinable @discardableResult
    public func describeImagesPaginated(_ input: DescribeImagesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImagesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImages, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询容器镜像信息
    ///
    /// 查询镜像版本列表或指定容器镜像信息
    ///
    /// - Returns: `AsyncSequence`s of ``TcrImageInfo`` and ``DescribeImagesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImagesPaginator(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImagesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImages, logger: logger, on: eventLoop)
    }
}
