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

extension Tcm {
    /// DescribeMeshList请求参数结构体
    public struct DescribeMeshListRequest: TCPaginatedRequest {
        /// 过滤条件
        public let filters: [Filter]?

        /// 分页限制
        public let limit: Int64?

        /// 分页偏移
        public let offset: Int64?

        public init(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMeshListResponse) -> DescribeMeshListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMeshListRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeMeshList返回参数结构体
    public struct DescribeMeshListResponse: TCPaginatedResponse {
        /// 查询到的网格信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let meshList: [Mesh]?

        /// 总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case meshList = "MeshList"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Mesh] {
            self.meshList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询网格列表
    @inlinable
    public func describeMeshList(_ input: DescribeMeshListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMeshListResponse> {
        self.client.execute(action: "DescribeMeshList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网格列表
    @inlinable
    public func describeMeshList(_ input: DescribeMeshListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMeshListResponse {
        try await self.client.execute(action: "DescribeMeshList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网格列表
    @inlinable
    public func describeMeshList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMeshListResponse> {
        self.describeMeshList(.init(filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网格列表
    @inlinable
    public func describeMeshList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMeshListResponse {
        try await self.describeMeshList(.init(filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网格列表
    @inlinable
    public func describeMeshListPaginated(_ input: DescribeMeshListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Mesh])> {
        self.client.paginate(input: input, region: region, command: self.describeMeshList, logger: logger, on: eventLoop)
    }

    /// 查询网格列表
    @inlinable @discardableResult
    public func describeMeshListPaginated(_ input: DescribeMeshListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMeshListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMeshList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询网格列表
    ///
    /// - Returns: `AsyncSequence`s of `Mesh` and `DescribeMeshListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMeshListPaginator(_ input: DescribeMeshListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMeshListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMeshList, logger: logger, on: eventLoop)
    }
}
