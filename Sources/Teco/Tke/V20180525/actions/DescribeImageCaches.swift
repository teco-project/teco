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

extension Tke {
    /// DescribeImageCaches请求参数结构体
    public struct DescribeImageCachesRequest: TCPaginatedRequest {
        /// 镜像缓存Id数组
        public let imageCacheIds: [String]?

        /// 镜像缓存名称数组
        public let imageCacheNames: [String]?

        /// 限定此次返回资源的数量。如果不设定，默认返回20，最大不能超过50
        public let limit: UInt64?

        /// 偏移量,默认0
        public let offset: UInt64?

        /// 过滤条件，可选条件：
        /// (1)实例名称
        /// KeyName: image-cache-name
        /// 类型：String
        public let filters: [Filter]?

        public init(imageCacheIds: [String]? = nil, imageCacheNames: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.imageCacheIds = imageCacheIds
            self.imageCacheNames = imageCacheNames
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case imageCacheIds = "ImageCacheIds"
            case imageCacheNames = "ImageCacheNames"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImageCachesResponse) -> DescribeImageCachesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImageCachesRequest(imageCacheIds: self.imageCacheIds, imageCacheNames: self.imageCacheNames, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeImageCaches返回参数结构体
    public struct DescribeImageCachesResponse: TCPaginatedResponse {
        /// 镜像缓存总数
        public let totalCount: UInt64

        /// 镜像缓存信息列表
        public let imageCaches: [ImageCache]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case imageCaches = "ImageCaches"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImageCache] {
            self.imageCaches
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询镜像缓存信息
    ///
    /// 查询镜像缓存信息接口
    @inlinable
    public func describeImageCaches(_ input: DescribeImageCachesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageCachesResponse> {
        self.client.execute(action: "DescribeImageCaches", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像缓存信息
    ///
    /// 查询镜像缓存信息接口
    @inlinable
    public func describeImageCaches(_ input: DescribeImageCachesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageCachesResponse {
        try await self.client.execute(action: "DescribeImageCaches", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像缓存信息
    ///
    /// 查询镜像缓存信息接口
    @inlinable
    public func describeImageCaches(imageCacheIds: [String]? = nil, imageCacheNames: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageCachesResponse> {
        self.describeImageCaches(.init(imageCacheIds: imageCacheIds, imageCacheNames: imageCacheNames, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像缓存信息
    ///
    /// 查询镜像缓存信息接口
    @inlinable
    public func describeImageCaches(imageCacheIds: [String]? = nil, imageCacheNames: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageCachesResponse {
        try await self.describeImageCaches(.init(imageCacheIds: imageCacheIds, imageCacheNames: imageCacheNames, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像缓存信息
    ///
    /// 查询镜像缓存信息接口
    @inlinable
    public func describeImageCachesPaginated(_ input: DescribeImageCachesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImageCache])> {
        self.client.paginate(input: input, region: region, command: self.describeImageCaches, logger: logger, on: eventLoop)
    }

    /// 查询镜像缓存信息
    ///
    /// 查询镜像缓存信息接口
    @inlinable @discardableResult
    public func describeImageCachesPaginated(_ input: DescribeImageCachesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImageCachesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImageCaches, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询镜像缓存信息
    ///
    /// 查询镜像缓存信息接口
    ///
    /// - Returns: `AsyncSequence`s of `ImageCache` and `DescribeImageCachesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImageCachesPaginator(_ input: DescribeImageCachesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImageCachesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImageCaches, logger: logger, on: eventLoop)
    }
}
