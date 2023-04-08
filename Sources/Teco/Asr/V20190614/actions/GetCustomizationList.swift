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

import TecoCore
import TecoPaginationHelpers

extension Asr {
    /// GetCustomizationList请求参数结构体
    public struct GetCustomizationListRequest: TCPaginatedRequest {
        /// 标签信息，格式为“$TagKey : $TagValue ”，中间分隔符为“空格”+“:”+“空格”
        public let tagInfos: [String]?

        /// 分页大小，默认1000
        public let limit: UInt64?

        /// 分页offset，默认0
        public let offset: UInt64?

        public init(tagInfos: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.tagInfos = tagInfos
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case tagInfos = "TagInfos"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetCustomizationListResponse) -> GetCustomizationListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetCustomizationListRequest(tagInfos: self.tagInfos, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// GetCustomizationList返回参数结构体
    public struct GetCustomizationListResponse: TCPaginatedResponse {
        /// 自学习模型数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [Model]?

        /// 自学习模型总量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Model] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询自学习模型列表
    @inlinable
    public func getCustomizationList(_ input: GetCustomizationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomizationListResponse> {
        self.client.execute(action: "GetCustomizationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自学习模型列表
    @inlinable
    public func getCustomizationList(_ input: GetCustomizationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCustomizationListResponse {
        try await self.client.execute(action: "GetCustomizationList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自学习模型列表
    @inlinable
    public func getCustomizationList(tagInfos: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomizationListResponse> {
        self.getCustomizationList(.init(tagInfos: tagInfos, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自学习模型列表
    @inlinable
    public func getCustomizationList(tagInfos: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCustomizationListResponse {
        try await self.getCustomizationList(.init(tagInfos: tagInfos, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自学习模型列表
    @inlinable
    public func getCustomizationListPaginated(_ input: GetCustomizationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Model])> {
        self.client.paginate(input: input, region: region, command: self.getCustomizationList, logger: logger, on: eventLoop)
    }

    /// 查询自学习模型列表
    @inlinable @discardableResult
    public func getCustomizationListPaginated(_ input: GetCustomizationListRequest, region: TCRegion? = nil, onResponse: @escaping (GetCustomizationListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getCustomizationList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询自学习模型列表
    ///
    /// - Returns: `AsyncSequence`s of `Model` and `GetCustomizationListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getCustomizationListPaginator(_ input: GetCustomizationListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetCustomizationListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getCustomizationList, logger: logger, on: eventLoop)
    }
}
