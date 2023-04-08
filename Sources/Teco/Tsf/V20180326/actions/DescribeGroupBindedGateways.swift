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

extension Tsf {
    /// DescribeGroupBindedGateways请求参数结构体
    public struct DescribeGroupBindedGatewaysRequest: TCPaginatedRequest {
        /// API 分组ID
        public let groupId: String

        /// 翻页查询偏移量
        public let offset: Int64

        /// 翻页查询每页记录数
        public let limit: Int64

        /// 搜索关键字
        public let searchWord: String?

        public init(groupId: String, offset: Int64, limit: Int64, searchWord: String? = nil) {
            self.groupId = groupId
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGroupBindedGatewaysResponse) -> DescribeGroupBindedGatewaysRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGroupBindedGatewaysRequest(groupId: self.groupId, offset: self.offset + .init(response.getItems().count), limit: self.limit, searchWord: self.searchWord)
        }
    }

    /// DescribeGroupBindedGateways返回参数结构体
    public struct DescribeGroupBindedGatewaysResponse: TCPaginatedResponse {
        /// 翻页结构体
        public let result: TsfPageGatewayDeployGroup

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GatewayDeployGroup] {
            self.result.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询某个API分组已绑定的网关部署组信息列表
    @inlinable
    public func describeGroupBindedGateways(_ input: DescribeGroupBindedGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupBindedGatewaysResponse> {
        self.client.execute(action: "DescribeGroupBindedGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某个API分组已绑定的网关部署组信息列表
    @inlinable
    public func describeGroupBindedGateways(_ input: DescribeGroupBindedGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupBindedGatewaysResponse {
        try await self.client.execute(action: "DescribeGroupBindedGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某个API分组已绑定的网关部署组信息列表
    @inlinable
    public func describeGroupBindedGateways(groupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupBindedGatewaysResponse> {
        self.describeGroupBindedGateways(.init(groupId: groupId, offset: offset, limit: limit, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某个API分组已绑定的网关部署组信息列表
    @inlinable
    public func describeGroupBindedGateways(groupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupBindedGatewaysResponse {
        try await self.describeGroupBindedGateways(.init(groupId: groupId, offset: offset, limit: limit, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某个API分组已绑定的网关部署组信息列表
    @inlinable
    public func describeGroupBindedGatewaysPaginated(_ input: DescribeGroupBindedGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [GatewayDeployGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeGroupBindedGateways, logger: logger, on: eventLoop)
    }

    /// 查询某个API分组已绑定的网关部署组信息列表
    @inlinable @discardableResult
    public func describeGroupBindedGatewaysPaginated(_ input: DescribeGroupBindedGatewaysRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGroupBindedGatewaysResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGroupBindedGateways, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询某个API分组已绑定的网关部署组信息列表
    ///
    /// - Returns: `AsyncSequence`s of `GatewayDeployGroup` and `DescribeGroupBindedGatewaysResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGroupBindedGatewaysPaginator(_ input: DescribeGroupBindedGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGroupBindedGatewaysRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGroupBindedGateways, logger: logger, on: eventLoop)
    }
}
