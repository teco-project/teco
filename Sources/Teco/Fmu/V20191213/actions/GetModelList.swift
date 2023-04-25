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

extension Fmu {
    /// GetModelList请求参数结构体
    public struct GetModelListRequest: TCPaginatedRequest {
        /// 起始序号，默认值为0。
        public let offset: Int64?

        /// 返回数量，默认值为10，最大值为100。
        public let limit: Int64?

        public init(offset: Int64? = nil, limit: Int64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetModelListResponse) -> GetModelListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetModelListRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetModelList返回参数结构体
    public struct GetModelListResponse: TCPaginatedResponse {
        /// 唇色素材总数量。
        public let modelIdNum: Int64

        /// 素材数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelInfos: [ModelInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modelIdNum = "ModelIdNum"
            case modelInfos = "ModelInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ModelInfo] {
            self.modelInfos ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.modelIdNum
        }
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable
    public func getModelList(_ input: GetModelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetModelListResponse> {
        self.client.execute(action: "GetModelList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable
    public func getModelList(_ input: GetModelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetModelListResponse {
        try await self.client.execute(action: "GetModelList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable
    public func getModelList(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetModelListResponse> {
        self.getModelList(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable
    public func getModelList(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetModelListResponse {
        try await self.getModelList(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable
    public func getModelListPaginated(_ input: GetModelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ModelInfo])> {
        self.client.paginate(input: input, region: region, command: self.getModelList, logger: logger, on: eventLoop)
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable @discardableResult
    public func getModelListPaginated(_ input: GetModelListRequest, region: TCRegion? = nil, onResponse: @escaping (GetModelListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getModelList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    ///
    /// - Returns: `AsyncSequence`s of `ModelInfo` and `GetModelListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getModelListPaginator(_ input: GetModelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetModelListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getModelList, logger: logger, on: eventLoop)
    }
}
