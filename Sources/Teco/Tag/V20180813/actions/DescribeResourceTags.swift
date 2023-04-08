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
    /// DescribeResourceTags请求参数结构体
    public struct DescribeResourceTagsRequest: TCPaginatedRequest {
        /// 创建者uin
        public let createUin: UInt64?

        /// 资源所在地域
        public let resourceRegion: String?

        /// 业务类型
        public let serviceType: String?

        /// 资源前缀
        public let resourcePrefix: String?

        /// 资源唯一标识。只输入ResourceId进行查询可能会查询较慢，或者无法匹配到结果，建议在输入ResourceId的同时也输入ServiceType、ResourcePrefix和ResourceRegion（不区分地域的资源可忽略该参数）
        public let resourceId: String?

        /// 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        public let offset: UInt64?

        /// 每页大小，默认为 15
        public let limit: UInt64?

        /// 是否是cos的资源（0或者1），输入的ResourceId为cos资源时必填
        public let cosResourceId: UInt64?

        public init(createUin: UInt64? = nil, resourceRegion: String? = nil, serviceType: String? = nil, resourcePrefix: String? = nil, resourceId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, cosResourceId: UInt64? = nil) {
            self.createUin = createUin
            self.resourceRegion = resourceRegion
            self.serviceType = serviceType
            self.resourcePrefix = resourcePrefix
            self.resourceId = resourceId
            self.offset = offset
            self.limit = limit
            self.cosResourceId = cosResourceId
        }

        enum CodingKeys: String, CodingKey {
            case createUin = "CreateUin"
            case resourceRegion = "ResourceRegion"
            case serviceType = "ServiceType"
            case resourcePrefix = "ResourcePrefix"
            case resourceId = "ResourceId"
            case offset = "Offset"
            case limit = "Limit"
            case cosResourceId = "CosResourceId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeResourceTagsResponse) -> DescribeResourceTagsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeResourceTagsRequest(createUin: self.createUin, resourceRegion: self.resourceRegion, serviceType: self.serviceType, resourcePrefix: self.resourcePrefix, resourceId: self.resourceId, offset: (self.offset ?? 0) + (response.limit ?? 0), limit: self.limit, cosResourceId: self.cosResourceId)
        }
    }

    /// DescribeResourceTags返回参数结构体
    public struct DescribeResourceTagsResponse: TCPaginatedResponse {
        /// 结果总数
        public let totalCount: UInt64

        /// 数据位移偏量
        public let offset: UInt64

        /// 每页大小
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let limit: UInt64?

        /// 资源标签
        public let rows: [TagResource]

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
        public func getItems() -> [TagResource] {
            self.rows
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询资源关联标签
    @inlinable
    public func describeResourceTags(_ input: DescribeResourceTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsResponse> {
        self.client.execute(action: "DescribeResourceTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资源关联标签
    @inlinable
    public func describeResourceTags(_ input: DescribeResourceTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsResponse {
        try await self.client.execute(action: "DescribeResourceTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资源关联标签
    @inlinable
    public func describeResourceTags(createUin: UInt64? = nil, resourceRegion: String? = nil, serviceType: String? = nil, resourcePrefix: String? = nil, resourceId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, cosResourceId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsResponse> {
        self.describeResourceTags(.init(createUin: createUin, resourceRegion: resourceRegion, serviceType: serviceType, resourcePrefix: resourcePrefix, resourceId: resourceId, offset: offset, limit: limit, cosResourceId: cosResourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资源关联标签
    @inlinable
    public func describeResourceTags(createUin: UInt64? = nil, resourceRegion: String? = nil, serviceType: String? = nil, resourcePrefix: String? = nil, resourceId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, cosResourceId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsResponse {
        try await self.describeResourceTags(.init(createUin: createUin, resourceRegion: resourceRegion, serviceType: serviceType, resourcePrefix: resourcePrefix, resourceId: resourceId, offset: offset, limit: limit, cosResourceId: cosResourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资源关联标签
    @inlinable
    public func describeResourceTagsPaginated(_ input: DescribeResourceTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TagResource])> {
        self.client.paginate(input: input, region: region, command: self.describeResourceTags, logger: logger, on: eventLoop)
    }

    /// 查询资源关联标签
    @inlinable @discardableResult
    public func describeResourceTagsPaginated(_ input: DescribeResourceTagsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourceTagsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResourceTags, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资源关联标签
    ///
    /// - Returns: `AsyncSequence`s of `TagResource` and `DescribeResourceTagsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeResourceTagsPaginator(_ input: DescribeResourceTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourceTagsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResourceTags, logger: logger, on: eventLoop)
    }
}
