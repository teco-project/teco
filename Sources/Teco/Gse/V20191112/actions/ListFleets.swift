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

import TecoPaginationHelpers

extension Gse {
    /// ListFleets请求参数结构体
    public struct ListFleetsRequest: TCPaginatedRequest {
        /// 生成包 Id
        public let assetId: String?

        /// 结果返回最大值，暂未使用
        public let limit: UInt64?

        /// 结果返回偏移，暂未使用
        public let offset: UInt64?

        /// 资源过滤字段，可以按照资源名称和标签进行过滤- 资源名称过滤    - Key: 固定字符串 "resource:name"    - Values: 资源名称数组（当前仅支持单个名称的过滤）- 标签过滤    - 通过标签键过滤        - Key: 固定字符串 "tag:key"        - Values 不传    - 通过标签键值过滤        - Key: 固定字符串 "tag:key-value"        - Values: 标签键值对数组，例如 ["key1:value1", "key1:value2", "key2:value2"]
        public let filters: [Filter]?

        public init(assetId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.assetId = assetId
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case assetId = "AssetId"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListFleetsResponse) -> ListFleetsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListFleetsRequest(assetId: self.assetId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// ListFleets返回参数结构体
    public struct ListFleetsResponse: TCPaginatedResponse {
        /// 服务器舰队 Id 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fleetIds: [String]?

        /// 服务器舰队 Id 总数，最小值0
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fleetIds = "FleetIds"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [String] {
            self.fleetIds ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取服务器舰队列表
    ///
    /// 本接口（ListFleets）用于获取服务器舰队列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listFleets(_ input: ListFleetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFleetsResponse> {
        self.client.execute(action: "ListFleets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取服务器舰队列表
    ///
    /// 本接口（ListFleets）用于获取服务器舰队列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listFleets(_ input: ListFleetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFleetsResponse {
        try await self.client.execute(action: "ListFleets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取服务器舰队列表
    ///
    /// 本接口（ListFleets）用于获取服务器舰队列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listFleets(assetId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFleetsResponse> {
        let input = ListFleetsRequest(assetId: assetId, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "ListFleets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取服务器舰队列表
    ///
    /// 本接口（ListFleets）用于获取服务器舰队列表。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listFleets(assetId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFleetsResponse {
        let input = ListFleetsRequest(assetId: assetId, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "ListFleets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
