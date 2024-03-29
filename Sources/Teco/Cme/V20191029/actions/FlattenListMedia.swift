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

extension Cme {
    /// FlattenListMedia请求参数结构体
    public struct FlattenListMediaRequest: TCPaginatedRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 媒体分类路径，例如填写"/a/b"，则代表平铺该分类路径下及其子分类路径下的媒体信息。
        public let classPath: String

        /// 媒体分类的归属者。
        public let owner: Entity

        /// 分页偏移量，默认值：0。
        public let offset: Int64?

        /// 返回记录条数，默认值：10，最大值：50。
        public let limit: Int64?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以平铺查询任意分类下的媒体信息。如果指定操作者，则操作者必须对当前分类有读权限。
        public let `operator`: String?

        public init(platform: String, classPath: String, owner: Entity, offset: Int64? = nil, limit: Int64? = nil, operator: String? = nil) {
            self.platform = platform
            self.classPath = classPath
            self.owner = owner
            self.offset = offset
            self.limit = limit
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case classPath = "ClassPath"
            case owner = "Owner"
            case offset = "Offset"
            case limit = "Limit"
            case `operator` = "Operator"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: FlattenListMediaResponse) -> FlattenListMediaRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(platform: self.platform, classPath: self.classPath, owner: self.owner, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, operator: self.operator)
        }
    }

    /// FlattenListMedia返回参数结构体
    public struct FlattenListMediaResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        public let totalCount: Int64

        /// 该分类路径下及其子分类下的所有媒体基础信息列表。
        public let materialInfoSet: [MaterialInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case materialInfoSet = "MaterialInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MaterialInfo`` list from the paginated response.
        public func getItems() -> [MaterialInfo] {
            self.materialInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 平铺浏览媒体
    ///
    /// 平铺分类路径下及其子分类下的所有媒体基础信息，返回当前分类及子分类中的所有媒体的基础信息。
    @inlinable
    public func flattenListMedia(_ input: FlattenListMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FlattenListMediaResponse> {
        self.client.execute(action: "FlattenListMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 平铺浏览媒体
    ///
    /// 平铺分类路径下及其子分类下的所有媒体基础信息，返回当前分类及子分类中的所有媒体的基础信息。
    @inlinable
    public func flattenListMedia(_ input: FlattenListMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FlattenListMediaResponse {
        try await self.client.execute(action: "FlattenListMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 平铺浏览媒体
    ///
    /// 平铺分类路径下及其子分类下的所有媒体基础信息，返回当前分类及子分类中的所有媒体的基础信息。
    @inlinable
    public func flattenListMedia(platform: String, classPath: String, owner: Entity, offset: Int64? = nil, limit: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FlattenListMediaResponse> {
        self.flattenListMedia(.init(platform: platform, classPath: classPath, owner: owner, offset: offset, limit: limit, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 平铺浏览媒体
    ///
    /// 平铺分类路径下及其子分类下的所有媒体基础信息，返回当前分类及子分类中的所有媒体的基础信息。
    @inlinable
    public func flattenListMedia(platform: String, classPath: String, owner: Entity, offset: Int64? = nil, limit: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FlattenListMediaResponse {
        try await self.flattenListMedia(.init(platform: platform, classPath: classPath, owner: owner, offset: offset, limit: limit, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 平铺浏览媒体
    ///
    /// 平铺分类路径下及其子分类下的所有媒体基础信息，返回当前分类及子分类中的所有媒体的基础信息。
    @inlinable
    public func flattenListMediaPaginated(_ input: FlattenListMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MaterialInfo])> {
        self.client.paginate(input: input, region: region, command: self.flattenListMedia, logger: logger, on: eventLoop)
    }

    /// 平铺浏览媒体
    ///
    /// 平铺分类路径下及其子分类下的所有媒体基础信息，返回当前分类及子分类中的所有媒体的基础信息。
    @inlinable @discardableResult
    public func flattenListMediaPaginated(_ input: FlattenListMediaRequest, region: TCRegion? = nil, onResponse: @escaping (FlattenListMediaResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.flattenListMedia, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 平铺浏览媒体
    ///
    /// 平铺分类路径下及其子分类下的所有媒体基础信息，返回当前分类及子分类中的所有媒体的基础信息。
    ///
    /// - Returns: `AsyncSequence`s of ``MaterialInfo`` and ``FlattenListMediaResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func flattenListMediaPaginator(_ input: FlattenListMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<FlattenListMediaRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.flattenListMedia, logger: logger, on: eventLoop)
    }
}
