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

extension Tcb {
    /// DescribeWxGateways请求参数结构体
    public struct DescribeWxGatewaysRequest: TCPaginatedRequest {
        /// 环境ID
        public let envId: String

        /// 服务名称，精确匹配
        public let gatewayName: String?

        /// 分页参数
        public let limit: Int64?

        /// 分页参数
        public let offset: Int64?

        public init(envId: String, gatewayName: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.envId = envId
            self.gatewayName = gatewayName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case gatewayName = "GatewayName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWxGatewaysResponse) -> DescribeWxGatewaysRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWxGatewaysRequest(envId: self.envId, gatewayName: self.gatewayName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeWxGateways返回参数结构体
    public struct DescribeWxGatewaysResponse: TCPaginatedResponse {
        /// 返回的服务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gateways: [GatewayItem]?

        /// 网关总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case gateways = "Gateways"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``GatewayItem`` list from the paginated response.
        public func getItems() -> [GatewayItem] {
            self.gateways ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看安全网关
    @inlinable
    public func describeWxGateways(_ input: DescribeWxGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWxGatewaysResponse> {
        self.client.execute(action: "DescribeWxGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看安全网关
    @inlinable
    public func describeWxGateways(_ input: DescribeWxGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWxGatewaysResponse {
        try await self.client.execute(action: "DescribeWxGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看安全网关
    @inlinable
    public func describeWxGateways(envId: String, gatewayName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWxGatewaysResponse> {
        self.describeWxGateways(.init(envId: envId, gatewayName: gatewayName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查看安全网关
    @inlinable
    public func describeWxGateways(envId: String, gatewayName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWxGatewaysResponse {
        try await self.describeWxGateways(.init(envId: envId, gatewayName: gatewayName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查看安全网关
    @inlinable
    public func describeWxGatewaysPaginated(_ input: DescribeWxGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [GatewayItem])> {
        self.client.paginate(input: input, region: region, command: self.describeWxGateways, logger: logger, on: eventLoop)
    }

    /// 查看安全网关
    @inlinable @discardableResult
    public func describeWxGatewaysPaginated(_ input: DescribeWxGatewaysRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWxGatewaysResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWxGateways, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看安全网关
    ///
    /// - Returns: `AsyncSequence`s of `GatewayItem` and `DescribeWxGatewaysResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWxGatewaysPaginator(_ input: DescribeWxGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWxGatewaysRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWxGateways, logger: logger, on: eventLoop)
    }
}
