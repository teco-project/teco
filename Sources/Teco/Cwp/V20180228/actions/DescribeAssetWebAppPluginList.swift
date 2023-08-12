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

extension Cwp {
    /// DescribeAssetWebAppPluginList请求参数结构体
    public struct DescribeAssetWebAppPluginListRequest: TCPaginatedRequest {
        /// 主机Quuid
        public let quuid: String

        /// 主机Uuid
        public let uuid: String

        /// Web应用ID
        public let id: String

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        public init(quuid: String, uuid: String, id: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.quuid = quuid
            self.uuid = uuid
            self.id = id
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case uuid = "Uuid"
            case id = "Id"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetWebAppPluginListResponse) -> DescribeAssetWebAppPluginListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetWebAppPluginListRequest(quuid: self.quuid, uuid: self.uuid, id: self.id, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAssetWebAppPluginList返回参数结构体
    public struct DescribeAssetWebAppPluginListResponse: TCPaginatedResponse {
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let plugins: [AssetWebAppPluginInfo]?

        /// 分区总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case plugins = "Plugins"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AssetWebAppPluginInfo`` list from the paginated response.
        public func getItems() -> [AssetWebAppPluginInfo] {
            self.plugins ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取资产管理Web应用插件列表
    @inlinable
    public func describeAssetWebAppPluginList(_ input: DescribeAssetWebAppPluginListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebAppPluginListResponse> {
        self.client.execute(action: "DescribeAssetWebAppPluginList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用插件列表
    @inlinable
    public func describeAssetWebAppPluginList(_ input: DescribeAssetWebAppPluginListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebAppPluginListResponse {
        try await self.client.execute(action: "DescribeAssetWebAppPluginList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产管理Web应用插件列表
    @inlinable
    public func describeAssetWebAppPluginList(quuid: String, uuid: String, id: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetWebAppPluginListResponse> {
        self.describeAssetWebAppPluginList(.init(quuid: quuid, uuid: uuid, id: id, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用插件列表
    @inlinable
    public func describeAssetWebAppPluginList(quuid: String, uuid: String, id: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebAppPluginListResponse {
        try await self.describeAssetWebAppPluginList(.init(quuid: quuid, uuid: uuid, id: id, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用插件列表
    @inlinable
    public func describeAssetWebAppPluginListPaginated(_ input: DescribeAssetWebAppPluginListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AssetWebAppPluginInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebAppPluginList, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用插件列表
    @inlinable @discardableResult
    public func describeAssetWebAppPluginListPaginated(_ input: DescribeAssetWebAppPluginListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetWebAppPluginListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetWebAppPluginList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取资产管理Web应用插件列表
    ///
    /// - Returns: `AsyncSequence`s of ``AssetWebAppPluginInfo`` and ``DescribeAssetWebAppPluginListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetWebAppPluginListPaginator(_ input: DescribeAssetWebAppPluginListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetWebAppPluginListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetWebAppPluginList, logger: logger, on: eventLoop)
    }
}
