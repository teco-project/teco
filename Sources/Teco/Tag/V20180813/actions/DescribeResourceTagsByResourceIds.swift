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
    /// DescribeResourceTagsByResourceIds请求参数结构体
    public struct DescribeResourceTagsByResourceIdsRequest: TCPaginatedRequest {
        /// 业务类型
        public let serviceType: String

        /// 资源前缀
        public let resourcePrefix: String

        /// 资源ID数组，大小不超过50
        public let resourceIds: [String]

        /// 资源所在地域
        public let resourceRegion: String

        /// 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        public let offset: UInt64?

        /// 每页大小，默认为 15
        public let limit: UInt64?

        public init(serviceType: String, resourcePrefix: String, resourceIds: [String], resourceRegion: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.serviceType = serviceType
            self.resourcePrefix = resourcePrefix
            self.resourceIds = resourceIds
            self.resourceRegion = resourceRegion
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case serviceType = "ServiceType"
            case resourcePrefix = "ResourcePrefix"
            case resourceIds = "ResourceIds"
            case resourceRegion = "ResourceRegion"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeResourceTagsByResourceIdsResponse) -> DescribeResourceTagsByResourceIdsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeResourceTagsByResourceIdsRequest(serviceType: self.serviceType, resourcePrefix: self.resourcePrefix, resourceIds: self.resourceIds, resourceRegion: self.resourceRegion, offset: (self.offset ?? 0) + response.limit, limit: self.limit)
        }
    }

    /// DescribeResourceTagsByResourceIds返回参数结构体
    public struct DescribeResourceTagsByResourceIdsResponse: TCPaginatedResponse {
        /// 结果总数
        public let totalCount: UInt64

        /// 数据位移偏量
        public let offset: UInt64

        /// 每页大小
        public let limit: UInt64

        /// 标签列表
        public let tags: [TagResource]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case offset = "Offset"
            case limit = "Limit"
            case tags = "Tags"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TagResource] {
            self.tags
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 批量查看资源关联的标签
    ///
    /// 用于批量查询已有资源关联的标签键值对
    @inlinable
    public func describeResourceTagsByResourceIds(_ input: DescribeResourceTagsByResourceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsByResourceIdsResponse> {
        self.client.execute(action: "DescribeResourceTagsByResourceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量查看资源关联的标签
    ///
    /// 用于批量查询已有资源关联的标签键值对
    @inlinable
    public func describeResourceTagsByResourceIds(_ input: DescribeResourceTagsByResourceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsByResourceIdsResponse {
        try await self.client.execute(action: "DescribeResourceTagsByResourceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量查看资源关联的标签
    ///
    /// 用于批量查询已有资源关联的标签键值对
    @inlinable
    public func describeResourceTagsByResourceIds(serviceType: String, resourcePrefix: String, resourceIds: [String], resourceRegion: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsByResourceIdsResponse> {
        let input = DescribeResourceTagsByResourceIdsRequest(serviceType: serviceType, resourcePrefix: resourcePrefix, resourceIds: resourceIds, resourceRegion: resourceRegion, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeResourceTagsByResourceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量查看资源关联的标签
    ///
    /// 用于批量查询已有资源关联的标签键值对
    @inlinable
    public func describeResourceTagsByResourceIds(serviceType: String, resourcePrefix: String, resourceIds: [String], resourceRegion: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsByResourceIdsResponse {
        let input = DescribeResourceTagsByResourceIdsRequest(serviceType: serviceType, resourcePrefix: resourcePrefix, resourceIds: resourceIds, resourceRegion: resourceRegion, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeResourceTagsByResourceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量查看资源关联的标签
    ///
    /// 用于批量查询已有资源关联的标签键值对
    @inlinable
    public func describeResourceTagsByResourceIdsPaginated(_ input: DescribeResourceTagsByResourceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TagResource])> {
        self.client.paginate(input: input, region: region, command: self.describeResourceTagsByResourceIds, logger: logger, on: eventLoop)
    }

    /// 批量查看资源关联的标签
    ///
    /// 用于批量查询已有资源关联的标签键值对
    @inlinable @discardableResult
    public func describeResourceTagsByResourceIdsPaginated(_ input: DescribeResourceTagsByResourceIdsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourceTagsByResourceIdsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResourceTagsByResourceIds, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 批量查看资源关联的标签
    ///
    /// 用于批量查询已有资源关联的标签键值对
    ///
    /// - Returns: `AsyncSequence`s of `TagResource` and `DescribeResourceTagsByResourceIdsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeResourceTagsByResourceIdsPaginator(_ input: DescribeResourceTagsByResourceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourceTagsByResourceIdsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResourceTagsByResourceIds, logger: logger, on: eventLoop)
    }
}
