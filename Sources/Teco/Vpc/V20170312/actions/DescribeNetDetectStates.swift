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

extension Vpc {
    /// DescribeNetDetectStates请求参数结构体
    public struct DescribeNetDetectStatesRequest: TCPaginatedRequest {
        /// 网络探测实例`ID`数组。形如：[`netd-12345678`]。
        public let netDetectIds: [String]?

        /// 过滤条件，参数不支持同时指定NetDetectIds和Filters。
        /// <li>net-detect-id - String - （过滤条件）网络探测实例ID，形如：netd-12345678。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(netDetectIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.netDetectIds = netDetectIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case netDetectIds = "NetDetectIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNetDetectStatesResponse) -> DescribeNetDetectStatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNetDetectStatesRequest(netDetectIds: self.netDetectIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeNetDetectStates返回参数结构体
    public struct DescribeNetDetectStatesResponse: TCPaginatedResponse {
        /// 符合条件的网络探测验证结果对象数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let netDetectStateSet: [NetDetectState]?

        /// 符合条件的网络探测验证结果对象数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case netDetectStateSet = "NetDetectStateSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NetDetectState] {
            self.netDetectStateSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询网络探测验证结果列表
    ///
    /// 本接口(DescribeNetDetectStates)用于查询网络探测验证结果列表。
    @inlinable
    public func describeNetDetectStates(_ input: DescribeNetDetectStatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetDetectStatesResponse> {
        self.client.execute(action: "DescribeNetDetectStates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网络探测验证结果列表
    ///
    /// 本接口(DescribeNetDetectStates)用于查询网络探测验证结果列表。
    @inlinable
    public func describeNetDetectStates(_ input: DescribeNetDetectStatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetDetectStatesResponse {
        try await self.client.execute(action: "DescribeNetDetectStates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网络探测验证结果列表
    ///
    /// 本接口(DescribeNetDetectStates)用于查询网络探测验证结果列表。
    @inlinable
    public func describeNetDetectStates(netDetectIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetDetectStatesResponse> {
        self.describeNetDetectStates(.init(netDetectIds: netDetectIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网络探测验证结果列表
    ///
    /// 本接口(DescribeNetDetectStates)用于查询网络探测验证结果列表。
    @inlinable
    public func describeNetDetectStates(netDetectIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetDetectStatesResponse {
        try await self.describeNetDetectStates(.init(netDetectIds: netDetectIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网络探测验证结果列表
    ///
    /// 本接口(DescribeNetDetectStates)用于查询网络探测验证结果列表。
    @inlinable
    public func describeNetDetectStatesPaginated(_ input: DescribeNetDetectStatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NetDetectState])> {
        self.client.paginate(input: input, region: region, command: self.describeNetDetectStates, logger: logger, on: eventLoop)
    }

    /// 查询网络探测验证结果列表
    ///
    /// 本接口(DescribeNetDetectStates)用于查询网络探测验证结果列表。
    @inlinable @discardableResult
    public func describeNetDetectStatesPaginated(_ input: DescribeNetDetectStatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNetDetectStatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNetDetectStates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询网络探测验证结果列表
    ///
    /// 本接口(DescribeNetDetectStates)用于查询网络探测验证结果列表。
    ///
    /// - Returns: `AsyncSequence`s of `NetDetectState` and `DescribeNetDetectStatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNetDetectStatesPaginator(_ input: DescribeNetDetectStatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNetDetectStatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNetDetectStates, logger: logger, on: eventLoop)
    }
}
