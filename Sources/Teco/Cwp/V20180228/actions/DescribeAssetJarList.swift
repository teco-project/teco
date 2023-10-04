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

extension Cwp {
    /// DescribeAssetJarList请求参数结构体
    public struct DescribeAssetJarListRequest: TCPaginatedRequest {
        /// 服务器Uuid
        public let uuid: String?

        /// 服务器Quuid
        public let quuid: String?

        /// 过滤条件。
        /// - IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选
        /// - Name- string - 是否必填：否 - 包名
        /// - Type- uint - 是否必填：否 - 类型
        ///   1: 应用程序
        ///   2 : 系统类库
        ///   3 : Web服务自带库
        ///   4 : 其他依赖包
        ///
        /// - Status- string - 是否必填：否 - 是否可执行：0否，1是
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序方式：[FirstTime]
        public let by: String?

        public init(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.uuid = uuid
            self.quuid = quuid
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case quuid = "Quuid"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetJarListResponse) -> DescribeAssetJarListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(uuid: self.uuid, quuid: self.quuid, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, by: self.by)
        }
    }

    /// DescribeAssetJarList返回参数结构体
    public struct DescribeAssetJarListResponse: TCPaginatedResponse {
        /// 应用列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jars: [AssetJarBaseInfo]?

        /// 总数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jars = "Jars"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AssetJarBaseInfo`` list from the paginated response.
        public func getItems() -> [AssetJarBaseInfo] {
            self.jars ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询Jar包列表
    @inlinable
    public func describeAssetJarList(_ input: DescribeAssetJarListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetJarListResponse> {
        self.client.execute(action: "DescribeAssetJarList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Jar包列表
    @inlinable
    public func describeAssetJarList(_ input: DescribeAssetJarListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetJarListResponse {
        try await self.client.execute(action: "DescribeAssetJarList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Jar包列表
    @inlinable
    public func describeAssetJarList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetJarListResponse> {
        self.describeAssetJarList(.init(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Jar包列表
    @inlinable
    public func describeAssetJarList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetJarListResponse {
        try await self.describeAssetJarList(.init(uuid: uuid, quuid: quuid, filters: filters, offset: offset, limit: limit, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Jar包列表
    @inlinable
    public func describeAssetJarListPaginated(_ input: DescribeAssetJarListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetJarBaseInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetJarList, logger: logger, on: eventLoop)
    }

    /// 查询Jar包列表
    @inlinable @discardableResult
    public func describeAssetJarListPaginated(_ input: DescribeAssetJarListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetJarListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetJarList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Jar包列表
    ///
    /// - Returns: `AsyncSequence`s of ``AssetJarBaseInfo`` and ``DescribeAssetJarListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetJarListPaginator(_ input: DescribeAssetJarListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetJarListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetJarList, logger: logger, on: eventLoop)
    }
}
