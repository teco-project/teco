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

extension Lighthouse {
    /// DescribeAllScenes请求参数结构体
    public struct DescribeAllScenesRequest: TCPaginatedRequest {
        /// 使用场景ID列表。
        public let sceneIds: [String]?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        public init(sceneIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.sceneIds = sceneIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case sceneIds = "SceneIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAllScenesResponse) -> DescribeAllScenesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAllScenesRequest(sceneIds: self.sceneIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAllScenes返回参数结构体
    public struct DescribeAllScenesResponse: TCPaginatedResponse {
        /// 使用场景详细信息列表。
        public let sceneInfoSet: [SceneInfo]

        /// 使用场景详细信息总数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sceneInfoSet = "SceneInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SceneInfo] {
            self.sceneInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询全地域使用场景列表
    ///
    /// 本接口(DescribeAllScenes)用于查询全地域使用场景列表。
    @inlinable
    public func describeAllScenes(_ input: DescribeAllScenesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllScenesResponse> {
        self.client.execute(action: "DescribeAllScenes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询全地域使用场景列表
    ///
    /// 本接口(DescribeAllScenes)用于查询全地域使用场景列表。
    @inlinable
    public func describeAllScenes(_ input: DescribeAllScenesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllScenesResponse {
        try await self.client.execute(action: "DescribeAllScenes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询全地域使用场景列表
    ///
    /// 本接口(DescribeAllScenes)用于查询全地域使用场景列表。
    @inlinable
    public func describeAllScenes(sceneIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllScenesResponse> {
        self.describeAllScenes(.init(sceneIds: sceneIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询全地域使用场景列表
    ///
    /// 本接口(DescribeAllScenes)用于查询全地域使用场景列表。
    @inlinable
    public func describeAllScenes(sceneIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllScenesResponse {
        try await self.describeAllScenes(.init(sceneIds: sceneIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询全地域使用场景列表
    ///
    /// 本接口(DescribeAllScenes)用于查询全地域使用场景列表。
    @inlinable
    public func describeAllScenesPaginated(_ input: DescribeAllScenesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SceneInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAllScenes, logger: logger, on: eventLoop)
    }

    /// 查询全地域使用场景列表
    ///
    /// 本接口(DescribeAllScenes)用于查询全地域使用场景列表。
    @inlinable @discardableResult
    public func describeAllScenesPaginated(_ input: DescribeAllScenesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAllScenesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAllScenes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询全地域使用场景列表
    ///
    /// 本接口(DescribeAllScenes)用于查询全地域使用场景列表。
    ///
    /// - Returns: `AsyncSequence`s of `SceneInfo` and `DescribeAllScenesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAllScenesPaginator(_ input: DescribeAllScenesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAllScenesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAllScenes, logger: logger, on: eventLoop)
    }
}
