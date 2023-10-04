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

extension Iecp {
    /// DescribeEdgeUnitApplications请求参数结构体
    public struct DescribeEdgeUnitApplicationsRequest: TCPaginatedRequest {
        /// 单元ID
        public let edgeUnitId: UInt64

        /// 翻页偏移
        public let offset: UInt64

        /// 翻页大小
        public let limit: UInt64

        /// 名称模糊匹配
        public let namePattern: String?

        /// 字段排序 (Sort.Filed为:StartTime）
        public let sort: [FieldSort]?

        /// 命名空间过滤
        public let namespace: String?

        public init(edgeUnitId: UInt64, offset: UInt64, limit: UInt64, namePattern: String? = nil, sort: [FieldSort]? = nil, namespace: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.offset = offset
            self.limit = limit
            self.namePattern = namePattern
            self.sort = sort
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case offset = "Offset"
            case limit = "Limit"
            case namePattern = "NamePattern"
            case sort = "Sort"
            case namespace = "Namespace"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEdgeUnitApplicationsResponse) -> DescribeEdgeUnitApplicationsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(edgeUnitId: self.edgeUnitId, offset: self.offset + .init(response.getItems().count), limit: self.limit, namePattern: self.namePattern, sort: self.sort, namespace: self.namespace)
        }
    }

    /// DescribeEdgeUnitApplications返回参数结构体
    public struct DescribeEdgeUnitApplicationsResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 应用列表
        public let applicationSet: [ApplicationStatusInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case applicationSet = "ApplicationSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ApplicationStatusInfo`` list from the paginated response.
        public func getItems() -> [ApplicationStatusInfo] {
            self.applicationSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取单元下应用列表
    @inlinable
    public func describeEdgeUnitApplications(_ input: DescribeEdgeUnitApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitApplicationsResponse> {
        self.client.execute(action: "DescribeEdgeUnitApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单元下应用列表
    @inlinable
    public func describeEdgeUnitApplications(_ input: DescribeEdgeUnitApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitApplicationsResponse {
        try await self.client.execute(action: "DescribeEdgeUnitApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单元下应用列表
    @inlinable
    public func describeEdgeUnitApplications(edgeUnitId: UInt64, offset: UInt64, limit: UInt64, namePattern: String? = nil, sort: [FieldSort]? = nil, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitApplicationsResponse> {
        self.describeEdgeUnitApplications(.init(edgeUnitId: edgeUnitId, offset: offset, limit: limit, namePattern: namePattern, sort: sort, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单元下应用列表
    @inlinable
    public func describeEdgeUnitApplications(edgeUnitId: UInt64, offset: UInt64, limit: UInt64, namePattern: String? = nil, sort: [FieldSort]? = nil, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitApplicationsResponse {
        try await self.describeEdgeUnitApplications(.init(edgeUnitId: edgeUnitId, offset: offset, limit: limit, namePattern: namePattern, sort: sort, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单元下应用列表
    @inlinable
    public func describeEdgeUnitApplicationsPaginated(_ input: DescribeEdgeUnitApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ApplicationStatusInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeUnitApplications, logger: logger, on: eventLoop)
    }

    /// 获取单元下应用列表
    @inlinable @discardableResult
    public func describeEdgeUnitApplicationsPaginated(_ input: DescribeEdgeUnitApplicationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEdgeUnitApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeUnitApplications, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取单元下应用列表
    ///
    /// - Returns: `AsyncSequence`s of ``ApplicationStatusInfo`` and ``DescribeEdgeUnitApplicationsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEdgeUnitApplicationsPaginator(_ input: DescribeEdgeUnitApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEdgeUnitApplicationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEdgeUnitApplications, logger: logger, on: eventLoop)
    }
}
