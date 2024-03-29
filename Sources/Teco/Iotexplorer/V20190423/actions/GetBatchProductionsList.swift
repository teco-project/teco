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
    /// GetBatchProductionsList请求参数结构体
    public struct GetBatchProductionsListRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: String

        /// 偏移量
        public let offset: Int64?

        /// 返回数量限制
        public let limit: Int64?

        public init(projectId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.projectId = projectId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetBatchProductionsListResponse) -> GetBatchProductionsListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(projectId: self.projectId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetBatchProductionsList返回参数结构体
    public struct GetBatchProductionsListResponse: TCPaginatedResponse {
        /// 返回详情信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchProductions: [BatchProductionInfo]?

        /// 返回数量。
        public let totalCnt: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchProductions = "BatchProductions"
            case totalCnt = "TotalCnt"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BatchProductionInfo`` list from the paginated response.
        public func getItems() -> [BatchProductionInfo] {
            self.batchProductions ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCnt
        }
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable
    public func getBatchProductionsList(_ input: GetBatchProductionsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBatchProductionsListResponse> {
        self.client.execute(action: "GetBatchProductionsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable
    public func getBatchProductionsList(_ input: GetBatchProductionsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBatchProductionsListResponse {
        try await self.client.execute(action: "GetBatchProductionsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable
    public func getBatchProductionsList(projectId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBatchProductionsListResponse> {
        self.getBatchProductionsList(.init(projectId: projectId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable
    public func getBatchProductionsList(projectId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBatchProductionsListResponse {
        try await self.getBatchProductionsList(.init(projectId: projectId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable
    public func getBatchProductionsListPaginated(_ input: GetBatchProductionsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BatchProductionInfo])> {
        self.client.paginate(input: input, region: region, command: self.getBatchProductionsList, logger: logger, on: eventLoop)
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable @discardableResult
    public func getBatchProductionsListPaginated(_ input: GetBatchProductionsListRequest, region: TCRegion? = nil, onResponse: @escaping (GetBatchProductionsListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getBatchProductionsList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    ///
    /// - Returns: `AsyncSequence`s of ``BatchProductionInfo`` and ``GetBatchProductionsListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func getBatchProductionsListPaginator(_ input: GetBatchProductionsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetBatchProductionsListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getBatchProductionsList, logger: logger, on: eventLoop)
    }
}
