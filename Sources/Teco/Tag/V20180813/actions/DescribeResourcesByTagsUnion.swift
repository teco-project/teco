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

extension Tag {
    /// DescribeResourcesByTagsUnion请求参数结构体
    public struct DescribeResourcesByTagsUnionRequest: TCPaginatedRequest {
        /// 标签过滤数组
        public let tagFilters: [TagFilter]

        /// 创建标签者uin
        public let createUin: UInt64?

        /// 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        public let offset: UInt64?

        /// 每页大小，默认为 15
        public let limit: UInt64?

        /// 资源前缀
        public let resourcePrefix: String?

        /// 资源唯一标记
        public let resourceId: String?

        /// 资源所在地域
        public let resourceRegion: String?

        /// 业务类型
        public let serviceType: String?

        public init(tagFilters: [TagFilter], createUin: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, resourcePrefix: String? = nil, resourceId: String? = nil, resourceRegion: String? = nil, serviceType: String? = nil) {
            self.tagFilters = tagFilters
            self.createUin = createUin
            self.offset = offset
            self.limit = limit
            self.resourcePrefix = resourcePrefix
            self.resourceId = resourceId
            self.resourceRegion = resourceRegion
            self.serviceType = serviceType
        }

        enum CodingKeys: String, CodingKey {
            case tagFilters = "TagFilters"
            case createUin = "CreateUin"
            case offset = "Offset"
            case limit = "Limit"
            case resourcePrefix = "ResourcePrefix"
            case resourceId = "ResourceId"
            case resourceRegion = "ResourceRegion"
            case serviceType = "ServiceType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeResourcesByTagsUnionResponse) -> DescribeResourcesByTagsUnionRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeResourcesByTagsUnionRequest(tagFilters: self.tagFilters, createUin: self.createUin, offset: (self.offset ?? 0) + response.limit, limit: self.limit, resourcePrefix: self.resourcePrefix, resourceId: self.resourceId, resourceRegion: self.resourceRegion, serviceType: self.serviceType)
        }
    }

    /// DescribeResourcesByTagsUnion返回参数结构体
    public struct DescribeResourcesByTagsUnionResponse: TCPaginatedResponse {
        /// 结果总数
        public let totalCount: UInt64

        /// 数据位移偏量
        public let offset: UInt64

        /// 每页大小
        public let limit: UInt64

        /// 资源标签
        public let rows: [ResourceTag]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case offset = "Offset"
            case limit = "Limit"
            case rows = "Rows"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ResourceTag] {
            self.rows
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 通过标签查询资源列表并集
    @inlinable
    public func describeResourcesByTagsUnion(_ input: DescribeResourcesByTagsUnionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesByTagsUnionResponse> {
        self.client.execute(action: "DescribeResourcesByTagsUnion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过标签查询资源列表并集
    @inlinable
    public func describeResourcesByTagsUnion(_ input: DescribeResourcesByTagsUnionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesByTagsUnionResponse {
        try await self.client.execute(action: "DescribeResourcesByTagsUnion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过标签查询资源列表并集
    @inlinable
    public func describeResourcesByTagsUnion(tagFilters: [TagFilter], createUin: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, resourcePrefix: String? = nil, resourceId: String? = nil, resourceRegion: String? = nil, serviceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesByTagsUnionResponse> {
        let input = DescribeResourcesByTagsUnionRequest(tagFilters: tagFilters, createUin: createUin, offset: offset, limit: limit, resourcePrefix: resourcePrefix, resourceId: resourceId, resourceRegion: resourceRegion, serviceType: serviceType)
        return self.client.execute(action: "DescribeResourcesByTagsUnion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过标签查询资源列表并集
    @inlinable
    public func describeResourcesByTagsUnion(tagFilters: [TagFilter], createUin: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, resourcePrefix: String? = nil, resourceId: String? = nil, resourceRegion: String? = nil, serviceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesByTagsUnionResponse {
        let input = DescribeResourcesByTagsUnionRequest(tagFilters: tagFilters, createUin: createUin, offset: offset, limit: limit, resourcePrefix: resourcePrefix, resourceId: resourceId, resourceRegion: resourceRegion, serviceType: serviceType)
        return try await self.client.execute(action: "DescribeResourcesByTagsUnion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过标签查询资源列表并集
    @inlinable
    public func describeResourcesByTagsUnionPaginated(_ input: DescribeResourcesByTagsUnionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ResourceTag])> {
        self.client.paginate(input: input, region: region, command: self.describeResourcesByTagsUnion, logger: logger, on: eventLoop)
    }

    /// 通过标签查询资源列表并集
    @inlinable @discardableResult
    public func describeResourcesByTagsUnionPaginated(_ input: DescribeResourcesByTagsUnionRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourcesByTagsUnionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResourcesByTagsUnion, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 通过标签查询资源列表并集
    ///
    /// - Returns: `AsyncSequence`s of `ResourceTag` and `DescribeResourcesByTagsUnionResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeResourcesByTagsUnionPaginator(_ input: DescribeResourcesByTagsUnionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourcesByTagsUnionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResourcesByTagsUnion, logger: logger, on: eventLoop)
    }
}
