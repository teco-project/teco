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

extension Lighthouse {
    /// DescribeBlueprints请求参数结构体
    public struct DescribeBlueprintsRequest: TCPaginatedRequest {
        /// 镜像 ID 列表。
        public let blueprintIds: [String]?

        /// 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let limit: Int64?

        /// 过滤器列表。
        /// - blueprint-id
        /// 按照【镜像 ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - blueprint-type
        /// 按照【镜像类型】进行过滤。
        /// 取值：APP_OS（应用镜像 ）；PURE_OS（系统镜像）；DOCKER（Docker容器镜像）；PRIVATE（自定义镜像）；SHARED（共享镜像）。
        /// 类型：String
        /// 必选：否
        /// - platform-type
        /// 按照【镜像平台类型】进行过滤。
        /// 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）。
        /// 类型：String
        /// 必选：否
        /// - blueprint-name
        /// 按照【镜像名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - blueprint-state
        /// 按照【镜像状态】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - scene-id
        /// 按照【使用场景Id】进行过滤。
        /// 类型：String
        /// 必选：否
        ///
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 100。参数不支持同时指定 BlueprintIds 和 Filters 。
        public let filters: [Filter]?

        public init(blueprintIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.blueprintIds = blueprintIds
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case blueprintIds = "BlueprintIds"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBlueprintsResponse) -> DescribeBlueprintsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(blueprintIds: self.blueprintIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeBlueprints返回参数结构体
    public struct DescribeBlueprintsResponse: TCPaginatedResponse {
        /// 符合条件的镜像数量。
        public let totalCount: Int64

        /// 镜像详细信息列表。
        public let blueprintSet: [Blueprint]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case blueprintSet = "BlueprintSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Blueprint`` list from the paginated response.
        public func getItems() -> [Blueprint] {
            self.blueprintSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询镜像信息
    ///
    /// 本接口（DescribeBlueprints）用于查询镜像信息。
    @inlinable
    public func describeBlueprints(_ input: DescribeBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlueprintsResponse> {
        self.client.execute(action: "DescribeBlueprints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像信息
    ///
    /// 本接口（DescribeBlueprints）用于查询镜像信息。
    @inlinable
    public func describeBlueprints(_ input: DescribeBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlueprintsResponse {
        try await self.client.execute(action: "DescribeBlueprints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像信息
    ///
    /// 本接口（DescribeBlueprints）用于查询镜像信息。
    @inlinable
    public func describeBlueprints(blueprintIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlueprintsResponse> {
        self.describeBlueprints(.init(blueprintIds: blueprintIds, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像信息
    ///
    /// 本接口（DescribeBlueprints）用于查询镜像信息。
    @inlinable
    public func describeBlueprints(blueprintIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlueprintsResponse {
        try await self.describeBlueprints(.init(blueprintIds: blueprintIds, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像信息
    ///
    /// 本接口（DescribeBlueprints）用于查询镜像信息。
    @inlinable
    public func describeBlueprintsPaginated(_ input: DescribeBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Blueprint])> {
        self.client.paginate(input: input, region: region, command: self.describeBlueprints, logger: logger, on: eventLoop)
    }

    /// 查询镜像信息
    ///
    /// 本接口（DescribeBlueprints）用于查询镜像信息。
    @inlinable @discardableResult
    public func describeBlueprintsPaginated(_ input: DescribeBlueprintsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBlueprintsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBlueprints, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询镜像信息
    ///
    /// 本接口（DescribeBlueprints）用于查询镜像信息。
    ///
    /// - Returns: `AsyncSequence`s of ``Blueprint`` and ``DescribeBlueprintsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBlueprintsPaginator(_ input: DescribeBlueprintsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBlueprintsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBlueprints, logger: logger, on: eventLoop)
    }
}
