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

extension Bda {
    /// GetGroupList请求参数结构体
    public struct GetGroupListRequest: TCPaginatedRequest {
        /// 起始序号，默认值为0。
        public let offset: UInt64?

        /// 返回数量，默认值为10，最大值为1000。
        public let limit: UInt64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetGroupListResponse) -> GetGroupListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetGroupListRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetGroupList返回参数结构体
    public struct GetGroupListResponse: TCPaginatedResponse {
        /// 返回的人体库信息。
        public let groupInfos: [GroupInfo]

        /// 人体库总数量。
        public let groupNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupInfos = "GroupInfos"
            case groupNum = "GroupNum"
            case requestId = "RequestId"
        }

        /// Extract the returned ``GroupInfo`` list from the paginated response.
        public func getItems() -> [GroupInfo] {
            self.groupInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.groupNum
        }
    }

    /// 获取人体库列表
    ///
    /// 获取人体库列表。
    @inlinable
    public func getGroupList(_ input: GetGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupListResponse> {
        self.client.execute(action: "GetGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人体库列表
    ///
    /// 获取人体库列表。
    @inlinable
    public func getGroupList(_ input: GetGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupListResponse {
        try await self.client.execute(action: "GetGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人体库列表
    ///
    /// 获取人体库列表。
    @inlinable
    public func getGroupList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupListResponse> {
        self.getGroupList(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人体库列表
    ///
    /// 获取人体库列表。
    @inlinable
    public func getGroupList(offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupListResponse {
        try await self.getGroupList(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人体库列表
    ///
    /// 获取人体库列表。
    @inlinable
    public func getGroupListPaginated(_ input: GetGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [GroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.getGroupList, logger: logger, on: eventLoop)
    }

    /// 获取人体库列表
    ///
    /// 获取人体库列表。
    @inlinable @discardableResult
    public func getGroupListPaginated(_ input: GetGroupListRequest, region: TCRegion? = nil, onResponse: @escaping (GetGroupListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getGroupList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取人体库列表
    ///
    /// 获取人体库列表。
    ///
    /// - Returns: `AsyncSequence`s of ``GroupInfo`` and ``GetGroupListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func getGroupListPaginator(_ input: GetGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetGroupListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getGroupList, logger: logger, on: eventLoop)
    }
}
