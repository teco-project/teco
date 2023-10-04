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

extension Tag {
    /// DescribeResourceTagsByResourceIdsSeq请求参数结构体
    public struct DescribeResourceTagsByResourceIdsSeqRequest: TCPaginatedRequest {
        /// 业务类型
        public let serviceType: String

        /// 资源前缀
        public let resourcePrefix: String

        /// 资源唯一标记
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
        public func makeNextRequest(with response: DescribeResourceTagsByResourceIdsSeqResponse) -> DescribeResourceTagsByResourceIdsSeqRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(serviceType: self.serviceType, resourcePrefix: self.resourcePrefix, resourceIds: self.resourceIds, resourceRegion: self.resourceRegion, offset: (self.offset ?? 0) + response.limit, limit: self.limit)
        }
    }

    /// DescribeResourceTagsByResourceIdsSeq返回参数结构体
    public struct DescribeResourceTagsByResourceIdsSeqResponse: TCPaginatedResponse {
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

        /// Extract the returned ``TagResource`` list from the paginated response.
        public func getItems() -> [TagResource] {
            self.tags
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 按顺序查看资源关联的标签
    @inlinable
    public func describeResourceTagsByResourceIdsSeq(_ input: DescribeResourceTagsByResourceIdsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsByResourceIdsSeqResponse> {
        self.client.execute(action: "DescribeResourceTagsByResourceIdsSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按顺序查看资源关联的标签
    @inlinable
    public func describeResourceTagsByResourceIdsSeq(_ input: DescribeResourceTagsByResourceIdsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsByResourceIdsSeqResponse {
        try await self.client.execute(action: "DescribeResourceTagsByResourceIdsSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按顺序查看资源关联的标签
    @inlinable
    public func describeResourceTagsByResourceIdsSeq(serviceType: String, resourcePrefix: String, resourceIds: [String], resourceRegion: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsByResourceIdsSeqResponse> {
        self.describeResourceTagsByResourceIdsSeq(.init(serviceType: serviceType, resourcePrefix: resourcePrefix, resourceIds: resourceIds, resourceRegion: resourceRegion, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 按顺序查看资源关联的标签
    @inlinable
    public func describeResourceTagsByResourceIdsSeq(serviceType: String, resourcePrefix: String, resourceIds: [String], resourceRegion: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsByResourceIdsSeqResponse {
        try await self.describeResourceTagsByResourceIdsSeq(.init(serviceType: serviceType, resourcePrefix: resourcePrefix, resourceIds: resourceIds, resourceRegion: resourceRegion, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 按顺序查看资源关联的标签
    @inlinable
    public func describeResourceTagsByResourceIdsSeqPaginated(_ input: DescribeResourceTagsByResourceIdsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TagResource])> {
        self.client.paginate(input: input, region: region, command: self.describeResourceTagsByResourceIdsSeq, logger: logger, on: eventLoop)
    }

    /// 按顺序查看资源关联的标签
    @inlinable @discardableResult
    public func describeResourceTagsByResourceIdsSeqPaginated(_ input: DescribeResourceTagsByResourceIdsSeqRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourceTagsByResourceIdsSeqResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResourceTagsByResourceIdsSeq, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 按顺序查看资源关联的标签
    ///
    /// - Returns: `AsyncSequence`s of ``TagResource`` and ``DescribeResourceTagsByResourceIdsSeqResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeResourceTagsByResourceIdsSeqPaginator(_ input: DescribeResourceTagsByResourceIdsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourceTagsByResourceIdsSeqRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResourceTagsByResourceIdsSeq, logger: logger, on: eventLoop)
    }
}
