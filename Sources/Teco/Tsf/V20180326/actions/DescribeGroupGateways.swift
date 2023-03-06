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
    /// DescribeGroupGateways请求参数结构体
    public struct DescribeGroupGatewaysRequest: TCPaginatedRequest {
        /// 网关部署组ID
        public let gatewayDeployGroupId: String

        /// 翻页查询偏移量
        public let offset: Int64

        /// 翻页查询每页记录数
        public let limit: Int64

        /// 搜索关键字
        public let searchWord: String?

        public init(gatewayDeployGroupId: String, offset: Int64, limit: Int64, searchWord: String? = nil) {
            self.gatewayDeployGroupId = gatewayDeployGroupId
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
        }

        enum CodingKeys: String, CodingKey {
            case gatewayDeployGroupId = "GatewayDeployGroupId"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeGroupGatewaysResponse) -> DescribeGroupGatewaysRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGroupGatewaysRequest(gatewayDeployGroupId: self.gatewayDeployGroupId, offset: self.offset + .init(response.getItems().count), limit: self.limit, searchWord: self.searchWord)
        }
    }

    /// DescribeGroupGateways返回参数结构体
    public struct DescribeGroupGatewaysResponse: TCPaginatedResponse {
        /// API分组信息
        public let result: TsfPageApiGroupInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApiGroupInfo] {
            self.result.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询某个网关绑定的API 分组信息列表
    @inlinable
    public func describeGroupGateways(_ input: DescribeGroupGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupGatewaysResponse> {
        self.client.execute(action: "DescribeGroupGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某个网关绑定的API 分组信息列表
    @inlinable
    public func describeGroupGateways(_ input: DescribeGroupGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupGatewaysResponse {
        try await self.client.execute(action: "DescribeGroupGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某个网关绑定的API 分组信息列表
    @inlinable
    public func describeGroupGateways(gatewayDeployGroupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupGatewaysResponse> {
        let input = DescribeGroupGatewaysRequest(gatewayDeployGroupId: gatewayDeployGroupId, offset: offset, limit: limit, searchWord: searchWord)
        return self.client.execute(action: "DescribeGroupGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某个网关绑定的API 分组信息列表
    @inlinable
    public func describeGroupGateways(gatewayDeployGroupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupGatewaysResponse {
        let input = DescribeGroupGatewaysRequest(gatewayDeployGroupId: gatewayDeployGroupId, offset: offset, limit: limit, searchWord: searchWord)
        return try await self.client.execute(action: "DescribeGroupGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某个网关绑定的API 分组信息列表
    @inlinable
    public func describeGroupGatewaysPaginated(_ input: DescribeGroupGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ApiGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeGroupGateways, logger: logger, on: eventLoop)
    }

    /// 查询某个网关绑定的API 分组信息列表
    @inlinable @discardableResult
    public func describeGroupGatewaysPaginated(_ input: DescribeGroupGatewaysRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGroupGatewaysResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGroupGateways, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询某个网关绑定的API 分组信息列表
    @inlinable
    public func describeGroupGatewaysPaginator(_ input: DescribeGroupGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeGroupGatewaysRequest, DescribeGroupGatewaysResponse>.ResultSequence, responses: TCClient.Paginator<DescribeGroupGatewaysRequest, DescribeGroupGatewaysResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGroupGateways, logger: logger, on: eventLoop)
    }
}
