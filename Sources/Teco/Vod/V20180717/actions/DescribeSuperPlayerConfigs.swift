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

extension Vod {
    /// DescribeSuperPlayerConfigs请求参数结构体
    public struct DescribeSuperPlayerConfigsRequest: TCPaginatedRequest {
        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 播放器配置名字过滤条件，数组长度限制：100。
        public let names: [String]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        /// 播放器配置类型过滤条件，可选值：
        /// - Preset：系统预置配置；
        /// - Custom：用户自定义配置。
        public let type: String?

        public init(subAppId: UInt64? = nil, names: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil) {
            self.subAppId = subAppId
            self.names = names
            self.offset = offset
            self.limit = limit
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case names = "Names"
            case offset = "Offset"
            case limit = "Limit"
            case type = "Type"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSuperPlayerConfigsResponse) -> DescribeSuperPlayerConfigsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(subAppId: self.subAppId, names: self.names, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, type: self.type)
        }
    }

    /// DescribeSuperPlayerConfigs返回参数结构体
    public struct DescribeSuperPlayerConfigsResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 播放器配置数组。
        public let playerConfigSet: [PlayerConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case playerConfigSet = "PlayerConfigSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PlayerConfig`` list from the paginated response.
        public func getItems() -> [PlayerConfig] {
            self.playerConfigSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取播放器配置列表
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 查询播放器配置，支持根据条件，分页查询。
    @inlinable
    public func describeSuperPlayerConfigs(_ input: DescribeSuperPlayerConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSuperPlayerConfigsResponse> {
        self.client.execute(action: "DescribeSuperPlayerConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取播放器配置列表
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 查询播放器配置，支持根据条件，分页查询。
    @inlinable
    public func describeSuperPlayerConfigs(_ input: DescribeSuperPlayerConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSuperPlayerConfigsResponse {
        try await self.client.execute(action: "DescribeSuperPlayerConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取播放器配置列表
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 查询播放器配置，支持根据条件，分页查询。
    @inlinable
    public func describeSuperPlayerConfigs(subAppId: UInt64? = nil, names: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSuperPlayerConfigsResponse> {
        self.describeSuperPlayerConfigs(.init(subAppId: subAppId, names: names, offset: offset, limit: limit, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取播放器配置列表
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 查询播放器配置，支持根据条件，分页查询。
    @inlinable
    public func describeSuperPlayerConfigs(subAppId: UInt64? = nil, names: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSuperPlayerConfigsResponse {
        try await self.describeSuperPlayerConfigs(.init(subAppId: subAppId, names: names, offset: offset, limit: limit, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取播放器配置列表
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 查询播放器配置，支持根据条件，分页查询。
    @inlinable
    public func describeSuperPlayerConfigsPaginated(_ input: DescribeSuperPlayerConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PlayerConfig])> {
        self.client.paginate(input: input, region: region, command: self.describeSuperPlayerConfigs, logger: logger, on: eventLoop)
    }

    /// 获取播放器配置列表
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 查询播放器配置，支持根据条件，分页查询。
    @inlinable @discardableResult
    public func describeSuperPlayerConfigsPaginated(_ input: DescribeSuperPlayerConfigsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSuperPlayerConfigsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSuperPlayerConfigs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取播放器配置列表
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 查询播放器配置，支持根据条件，分页查询。
    ///
    /// - Returns: `AsyncSequence`s of ``PlayerConfig`` and ``DescribeSuperPlayerConfigsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSuperPlayerConfigsPaginator(_ input: DescribeSuperPlayerConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSuperPlayerConfigsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSuperPlayerConfigs, logger: logger, on: eventLoop)
    }
}
