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
import TecoPaginationHelpers

extension Teo {
    /// DescribeOriginGroup请求参数结构体
    public struct DescribeOriginGroupRequest: TCPaginatedRequest {
        /// 分页查询偏移量，默认为0。
        public let offset: UInt64

        /// 分页查询限制数目，默认为10，取值：1-1000。
        public let limit: UInt64

        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// - zone-id
        ///
        /// 按照【**站点ID**】进行过滤。站点ID形如：zone-20hzkd4rdmy0
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// 模糊查询：不支持
        /// - origin-group-id
        ///
        /// 按照【**源站组ID**】进行过滤。源站组ID形如：origin-2ccgtb24-7dc5-46s2-9r3e-95825d53dwe3a
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// 模糊查询：不支持
        /// - origin-group-name
        ///
        /// 按照【**源站组名称**】进行过滤
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// 模糊查询：支持。使用模糊查询时，仅支持填写一个源站组名称
        public let filters: [AdvancedFilter]?

        public init(offset: UInt64, limit: UInt64, filters: [AdvancedFilter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeOriginGroupResponse) -> DescribeOriginGroupRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeOriginGroupRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeOriginGroup返回参数结构体
    public struct DescribeOriginGroupResponse: TCPaginatedResponse {
        /// 记录总数。
        public let totalCount: UInt64

        /// 源站组信息。
        public let originGroups: [OriginGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case originGroups = "OriginGroups"
            case requestId = "RequestId"
        }

        /// Extract the returned ``OriginGroup`` list from the paginated response.
        public func getItems() -> [OriginGroup] {
            self.originGroups
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取源站组列表
    @inlinable
    public func describeOriginGroup(_ input: DescribeOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOriginGroupResponse> {
        self.client.execute(action: "DescribeOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取源站组列表
    @inlinable
    public func describeOriginGroup(_ input: DescribeOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginGroupResponse {
        try await self.client.execute(action: "DescribeOriginGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取源站组列表
    @inlinable
    public func describeOriginGroup(offset: UInt64, limit: UInt64, filters: [AdvancedFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOriginGroupResponse> {
        self.describeOriginGroup(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取源站组列表
    @inlinable
    public func describeOriginGroup(offset: UInt64, limit: UInt64, filters: [AdvancedFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginGroupResponse {
        try await self.describeOriginGroup(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取源站组列表
    @inlinable
    public func describeOriginGroupPaginated(_ input: DescribeOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [OriginGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeOriginGroup, logger: logger, on: eventLoop)
    }

    /// 获取源站组列表
    @inlinable @discardableResult
    public func describeOriginGroupPaginated(_ input: DescribeOriginGroupRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOriginGroupResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOriginGroup, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取源站组列表
    ///
    /// - Returns: `AsyncSequence`s of ``OriginGroup`` and ``DescribeOriginGroupResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeOriginGroupPaginator(_ input: DescribeOriginGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeOriginGroupRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOriginGroup, logger: logger, on: eventLoop)
    }
}
