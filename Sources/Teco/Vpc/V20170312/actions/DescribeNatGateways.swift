//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Vpc {
    /// DescribeNatGateways请求参数结构体
    public struct DescribeNatGatewaysRequest: TCRequestModel {
        /// NAT网关统一 ID，形如：`nat-123xx454`。
        public let natGatewayIds: [String]?

        /// 过滤条件，参数不支持同时指定NatGatewayIds和Filters。
        /// <li>nat-gateway-id - String - （过滤条件）协议端口模板实例ID，形如：`nat-123xx454`。</li>
        /// <li>vpc-id - String - （过滤条件）私有网络 唯一ID，形如：`vpc-123xx454`。</li>
        /// <li>nat-gateway-name - String - （过滤条件）协议端口模板实例ID，形如：`test_nat`。</li>
        /// <li>tag-key - String - （过滤条件）标签键，形如：`test-key`。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(natGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.natGatewayIds = natGatewayIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayIds = "NatGatewayIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeNatGateways返回参数结构体
    public struct DescribeNatGatewaysResponse: TCResponseModel {
        /// NAT网关对象数组。
        public let natGatewaySet: [NatGateway]

        /// 符合条件的NAT网关对象个数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case natGatewaySet = "NatGatewaySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询NAT网关
    ///
    /// 本接口（DescribeNatGateways）用于查询 NAT 网关。
    @inlinable
    public func describeNatGateways(_ input: DescribeNatGatewaysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNatGatewaysResponse > {
        self.client.execute(action: "DescribeNatGateways", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询NAT网关
    ///
    /// 本接口（DescribeNatGateways）用于查询 NAT 网关。
    @inlinable
    public func describeNatGateways(_ input: DescribeNatGatewaysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatGatewaysResponse {
        try await self.client.execute(action: "DescribeNatGateways", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询NAT网关
    ///
    /// 本接口（DescribeNatGateways）用于查询 NAT 网关。
    @inlinable
    public func describeNatGateways(natGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNatGatewaysResponse > {
        self.describeNatGateways(DescribeNatGatewaysRequest(natGatewayIds: natGatewayIds, filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询NAT网关
    ///
    /// 本接口（DescribeNatGateways）用于查询 NAT 网关。
    @inlinable
    public func describeNatGateways(natGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatGatewaysResponse {
        try await self.describeNatGateways(DescribeNatGatewaysRequest(natGatewayIds: natGatewayIds, filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
