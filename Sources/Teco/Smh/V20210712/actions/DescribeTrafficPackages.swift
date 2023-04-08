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

extension Smh {
    /// DescribeTrafficPackages请求参数结构体
    public struct DescribeTrafficPackagesRequest: TCPaginatedRequest {
        /// 按照一个或者多个资源 ID 查询，每次请求的上限为 100 个。
        public let resourceIds: [String]?

        /// 页码，整型，配合 PageSize 使用，默认值为 1。
        public let pageNumber: UInt64?

        /// 每页数目，整型，配合 PageNumber 使用，默认值为 20，最大值为 100。
        public let pageSize: UInt64?

        /// 对指定列进行排序
        public let orderBy: String?

        /// 排序方式
        public let orderByType: String?

        /// 来源类型筛选
        public let type: UInt64?

        public init(resourceIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, type: UInt64? = nil) {
            self.resourceIds = resourceIds
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case type = "Type"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTrafficPackagesResponse) -> DescribeTrafficPackagesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTrafficPackagesRequest(resourceIds: self.resourceIds, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, orderBy: self.orderBy, orderByType: self.orderByType, type: self.type)
        }
    }

    /// DescribeTrafficPackages返回参数结构体
    public struct DescribeTrafficPackagesResponse: TCPaginatedResponse {
        /// 流量包列表
        public let list: [TrafficPackage]

        /// 总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TrafficPackage] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询流量包
    ///
    /// 查询流量资源包
    @inlinable
    public func describeTrafficPackages(_ input: DescribeTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrafficPackagesResponse> {
        self.client.execute(action: "DescribeTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流量包
    ///
    /// 查询流量资源包
    @inlinable
    public func describeTrafficPackages(_ input: DescribeTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficPackagesResponse {
        try await self.client.execute(action: "DescribeTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流量包
    ///
    /// 查询流量资源包
    @inlinable
    public func describeTrafficPackages(resourceIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, type: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrafficPackagesResponse> {
        self.describeTrafficPackages(.init(resourceIds: resourceIds, pageNumber: pageNumber, pageSize: pageSize, orderBy: orderBy, orderByType: orderByType, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 查询流量包
    ///
    /// 查询流量资源包
    @inlinable
    public func describeTrafficPackages(resourceIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, type: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficPackagesResponse {
        try await self.describeTrafficPackages(.init(resourceIds: resourceIds, pageNumber: pageNumber, pageSize: pageSize, orderBy: orderBy, orderByType: orderByType, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 查询流量包
    ///
    /// 查询流量资源包
    @inlinable
    public func describeTrafficPackagesPaginated(_ input: DescribeTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TrafficPackage])> {
        self.client.paginate(input: input, region: region, command: self.describeTrafficPackages, logger: logger, on: eventLoop)
    }

    /// 查询流量包
    ///
    /// 查询流量资源包
    @inlinable @discardableResult
    public func describeTrafficPackagesPaginated(_ input: DescribeTrafficPackagesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTrafficPackagesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTrafficPackages, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询流量包
    ///
    /// 查询流量资源包
    ///
    /// - Returns: `AsyncSequence`s of `TrafficPackage` and `DescribeTrafficPackagesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTrafficPackagesPaginator(_ input: DescribeTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTrafficPackagesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTrafficPackages, logger: logger, on: eventLoop)
    }
}
