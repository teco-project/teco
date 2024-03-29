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

extension Iotexplorer {
    /// GetStudioProductList请求参数结构体
    public struct GetStudioProductListRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: String?

        /// 产品DevStatus
        public let devStatus: String?

        /// 偏移量
        public let offset: UInt64?

        /// 数量限制
        public let limit: UInt64?

        public init(projectId: String? = nil, devStatus: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.projectId = projectId
            self.devStatus = devStatus
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case devStatus = "DevStatus"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetStudioProductListResponse) -> GetStudioProductListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(projectId: self.projectId, devStatus: self.devStatus, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetStudioProductList返回参数结构体
    public struct GetStudioProductListResponse: TCPaginatedResponse {
        /// 产品列表
        public let products: [ProductEntry]

        /// 产品数量
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProductEntry`` list from the paginated response.
        public func getItems() -> [ProductEntry] {
            self.products
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取产品列表
    ///
    /// 提供查询某个项目下所有产品信息的能力。
    @inlinable
    public func getStudioProductList(_ input: GetStudioProductListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStudioProductListResponse> {
        self.client.execute(action: "GetStudioProductList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 提供查询某个项目下所有产品信息的能力。
    @inlinable
    public func getStudioProductList(_ input: GetStudioProductListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStudioProductListResponse {
        try await self.client.execute(action: "GetStudioProductList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品列表
    ///
    /// 提供查询某个项目下所有产品信息的能力。
    @inlinable
    public func getStudioProductList(projectId: String? = nil, devStatus: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStudioProductListResponse> {
        self.getStudioProductList(.init(projectId: projectId, devStatus: devStatus, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 提供查询某个项目下所有产品信息的能力。
    @inlinable
    public func getStudioProductList(projectId: String? = nil, devStatus: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStudioProductListResponse {
        try await self.getStudioProductList(.init(projectId: projectId, devStatus: devStatus, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 提供查询某个项目下所有产品信息的能力。
    @inlinable
    public func getStudioProductListPaginated(_ input: GetStudioProductListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ProductEntry])> {
        self.client.paginate(input: input, region: region, command: self.getStudioProductList, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 提供查询某个项目下所有产品信息的能力。
    @inlinable @discardableResult
    public func getStudioProductListPaginated(_ input: GetStudioProductListRequest, region: TCRegion? = nil, onResponse: @escaping (GetStudioProductListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getStudioProductList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取产品列表
    ///
    /// 提供查询某个项目下所有产品信息的能力。
    ///
    /// - Returns: `AsyncSequence`s of ``ProductEntry`` and ``GetStudioProductListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func getStudioProductListPaginator(_ input: GetStudioProductListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetStudioProductListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getStudioProductList, logger: logger, on: eventLoop)
    }
}
