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

extension Iotvideoindustry {
    /// DescribeBindSceneChannels请求参数结构体
    public struct DescribeBindSceneChannelsRequest: TCPaginatedRequest {
        /// 条数限制最大不能超过1000
        public let limit: Int64

        /// 场景ID
        public let sceneId: Int64?

        /// 偏移值
        public let offset: Int64?

        public init(limit: Int64, sceneId: Int64? = nil, offset: Int64? = nil) {
            self.limit = limit
            self.sceneId = sceneId
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case sceneId = "SceneId"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBindSceneChannelsResponse) -> DescribeBindSceneChannelsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBindSceneChannelsRequest(limit: self.limit, sceneId: self.sceneId, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeBindSceneChannels返回参数结构体
    public struct DescribeBindSceneChannelsResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 通道列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [ChannelItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ChannelItem] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取场景绑定通道列表
    @inlinable
    public func describeBindSceneChannels(_ input: DescribeBindSceneChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindSceneChannelsResponse> {
        self.client.execute(action: "DescribeBindSceneChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定通道列表
    @inlinable
    public func describeBindSceneChannels(_ input: DescribeBindSceneChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindSceneChannelsResponse {
        try await self.client.execute(action: "DescribeBindSceneChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取场景绑定通道列表
    @inlinable
    public func describeBindSceneChannels(limit: Int64, sceneId: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindSceneChannelsResponse> {
        self.describeBindSceneChannels(.init(limit: limit, sceneId: sceneId, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定通道列表
    @inlinable
    public func describeBindSceneChannels(limit: Int64, sceneId: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindSceneChannelsResponse {
        try await self.describeBindSceneChannels(.init(limit: limit, sceneId: sceneId, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定通道列表
    @inlinable
    public func describeBindSceneChannelsPaginated(_ input: DescribeBindSceneChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ChannelItem])> {
        self.client.paginate(input: input, region: region, command: self.describeBindSceneChannels, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定通道列表
    @inlinable @discardableResult
    public func describeBindSceneChannelsPaginated(_ input: DescribeBindSceneChannelsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBindSceneChannelsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBindSceneChannels, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定通道列表
    ///
    /// - Returns: `AsyncSequence`s of `ChannelItem` and `DescribeBindSceneChannelsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBindSceneChannelsPaginator(_ input: DescribeBindSceneChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBindSceneChannelsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBindSceneChannels, logger: logger, on: eventLoop)
    }
}
