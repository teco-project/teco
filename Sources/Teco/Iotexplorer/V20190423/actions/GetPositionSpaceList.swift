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

extension Iotexplorer {
    /// GetPositionSpaceList请求参数结构体
    public struct GetPositionSpaceListRequest: TCPaginatedRequest {
        /// 项目Id
        public let projectId: String

        /// 翻页偏移量，0起始
        public let offset: Int64

        /// 最大返回结果数
        public let limit: Int64

        public init(projectId: String, offset: Int64, limit: Int64) {
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
        public func makeNextRequest(with response: GetPositionSpaceListResponse) -> GetPositionSpaceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetPositionSpaceListRequest(projectId: self.projectId, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetPositionSpaceList返回参数结构体
    public struct GetPositionSpaceListResponse: TCPaginatedResponse {
        /// 位置空间列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [PositionSpaceInfo]?

        /// 位置空间数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PositionSpaceInfo] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取位置空间列表
    @inlinable
    public func getPositionSpaceList(_ input: GetPositionSpaceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPositionSpaceListResponse> {
        self.client.execute(action: "GetPositionSpaceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取位置空间列表
    @inlinable
    public func getPositionSpaceList(_ input: GetPositionSpaceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPositionSpaceListResponse {
        try await self.client.execute(action: "GetPositionSpaceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取位置空间列表
    @inlinable
    public func getPositionSpaceList(projectId: String, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPositionSpaceListResponse> {
        self.getPositionSpaceList(.init(projectId: projectId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取位置空间列表
    @inlinable
    public func getPositionSpaceList(projectId: String, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPositionSpaceListResponse {
        try await self.getPositionSpaceList(.init(projectId: projectId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取位置空间列表
    @inlinable
    public func getPositionSpaceListPaginated(_ input: GetPositionSpaceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PositionSpaceInfo])> {
        self.client.paginate(input: input, region: region, command: self.getPositionSpaceList, logger: logger, on: eventLoop)
    }

    /// 获取位置空间列表
    @inlinable @discardableResult
    public func getPositionSpaceListPaginated(_ input: GetPositionSpaceListRequest, region: TCRegion? = nil, onResponse: @escaping (GetPositionSpaceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getPositionSpaceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取位置空间列表
    ///
    /// - Returns: `AsyncSequence`s of `PositionSpaceInfo` and `GetPositionSpaceListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getPositionSpaceListPaginator(_ input: GetPositionSpaceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetPositionSpaceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getPositionSpaceList, logger: logger, on: eventLoop)
    }
}
