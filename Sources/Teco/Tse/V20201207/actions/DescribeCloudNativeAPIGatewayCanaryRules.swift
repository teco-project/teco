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

extension Tse {
    /// DescribeCloudNativeAPIGatewayCanaryRules请求参数结构体
    public struct DescribeCloudNativeAPIGatewayCanaryRulesRequest: TCPaginatedRequest {
        /// 网关ID
        public let gatewayId: String

        /// 服务 ID
        public let serviceId: String

        /// 列表数量
        public let limit: Int64?

        /// 列表offset
        public let offset: Int64?

        public init(gatewayId: String, serviceId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.gatewayId = gatewayId
            self.serviceId = serviceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case serviceId = "ServiceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCloudNativeAPIGatewayCanaryRulesResponse) -> DescribeCloudNativeAPIGatewayCanaryRulesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(gatewayId: self.gatewayId, serviceId: self.serviceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeCloudNativeAPIGatewayCanaryRules返回参数结构体
    public struct DescribeCloudNativeAPIGatewayCanaryRulesResponse: TCPaginatedResponse {
        /// 灰度规则列表
        public let result: CloudAPIGatewayCanaryRuleList

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CloudNativeAPIGatewayCanaryRule`` list from the paginated response.
        public func getItems() -> [CloudNativeAPIGatewayCanaryRule] {
            self.result.canaryRuleList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询云原生网关灰度规则列表
    @inlinable
    public func describeCloudNativeAPIGatewayCanaryRules(_ input: DescribeCloudNativeAPIGatewayCanaryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayCanaryRulesResponse> {
        self.client.execute(action: "DescribeCloudNativeAPIGatewayCanaryRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关灰度规则列表
    @inlinable
    public func describeCloudNativeAPIGatewayCanaryRules(_ input: DescribeCloudNativeAPIGatewayCanaryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayCanaryRulesResponse {
        try await self.client.execute(action: "DescribeCloudNativeAPIGatewayCanaryRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云原生网关灰度规则列表
    @inlinable
    public func describeCloudNativeAPIGatewayCanaryRules(gatewayId: String, serviceId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudNativeAPIGatewayCanaryRulesResponse> {
        self.describeCloudNativeAPIGatewayCanaryRules(.init(gatewayId: gatewayId, serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关灰度规则列表
    @inlinable
    public func describeCloudNativeAPIGatewayCanaryRules(gatewayId: String, serviceId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudNativeAPIGatewayCanaryRulesResponse {
        try await self.describeCloudNativeAPIGatewayCanaryRules(.init(gatewayId: gatewayId, serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关灰度规则列表
    @inlinable
    public func describeCloudNativeAPIGatewayCanaryRulesPaginated(_ input: DescribeCloudNativeAPIGatewayCanaryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CloudNativeAPIGatewayCanaryRule])> {
        self.client.paginate(input: input, region: region, command: self.describeCloudNativeAPIGatewayCanaryRules, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关灰度规则列表
    @inlinable @discardableResult
    public func describeCloudNativeAPIGatewayCanaryRulesPaginated(_ input: DescribeCloudNativeAPIGatewayCanaryRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCloudNativeAPIGatewayCanaryRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCloudNativeAPIGatewayCanaryRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云原生网关灰度规则列表
    ///
    /// - Returns: `AsyncSequence`s of ``CloudNativeAPIGatewayCanaryRule`` and ``DescribeCloudNativeAPIGatewayCanaryRulesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCloudNativeAPIGatewayCanaryRulesPaginator(_ input: DescribeCloudNativeAPIGatewayCanaryRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCloudNativeAPIGatewayCanaryRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCloudNativeAPIGatewayCanaryRules, logger: logger, on: eventLoop)
    }
}
