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

extension Vpc {
    /// DescribeNatGatewayDirectConnectGatewayRoute请求参数结构体
    public struct DescribeNatGatewayDirectConnectGatewayRouteRequest: TCRequestModel {
        /// nat的唯一标识
        public let natGatewayId: String

        /// vpc的唯一标识
        public let vpcId: String

        /// 0到200之间
        public let limit: Int64?

        /// 大于0
        public let offset: Int64?

        public init(natGatewayId: String, vpcId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.natGatewayId = natGatewayId
            self.vpcId = vpcId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayId = "NatGatewayId"
            case vpcId = "VpcId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeNatGatewayDirectConnectGatewayRoute返回参数结构体
    public struct DescribeNatGatewayDirectConnectGatewayRouteResponse: TCResponseModel {
        /// 路由数据
        public let natDirectConnectGatewayRouteSet: [NatDirectConnectGatewayRoute]

        /// 路由总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case natDirectConnectGatewayRouteSet = "NatDirectConnectGatewayRouteSet"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询专线绑定NAT路由
    ///
    /// 查询专线绑定NAT的路由
    @inlinable
    public func describeNatGatewayDirectConnectGatewayRoute(_ input: DescribeNatGatewayDirectConnectGatewayRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatGatewayDirectConnectGatewayRouteResponse> {
        self.client.execute(action: "DescribeNatGatewayDirectConnectGatewayRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专线绑定NAT路由
    ///
    /// 查询专线绑定NAT的路由
    @inlinable
    public func describeNatGatewayDirectConnectGatewayRoute(_ input: DescribeNatGatewayDirectConnectGatewayRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatGatewayDirectConnectGatewayRouteResponse {
        try await self.client.execute(action: "DescribeNatGatewayDirectConnectGatewayRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专线绑定NAT路由
    ///
    /// 查询专线绑定NAT的路由
    @inlinable
    public func describeNatGatewayDirectConnectGatewayRoute(natGatewayId: String, vpcId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatGatewayDirectConnectGatewayRouteResponse> {
        self.describeNatGatewayDirectConnectGatewayRoute(DescribeNatGatewayDirectConnectGatewayRouteRequest(natGatewayId: natGatewayId, vpcId: vpcId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专线绑定NAT路由
    ///
    /// 查询专线绑定NAT的路由
    @inlinable
    public func describeNatGatewayDirectConnectGatewayRoute(natGatewayId: String, vpcId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatGatewayDirectConnectGatewayRouteResponse {
        try await self.describeNatGatewayDirectConnectGatewayRoute(DescribeNatGatewayDirectConnectGatewayRouteRequest(natGatewayId: natGatewayId, vpcId: vpcId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
