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

extension Tke {
    /// CreateClusterRouteTable请求参数结构体
    public struct CreateClusterRouteTableRequest: TCRequest {
        /// 路由表名称
        public let routeTableName: String

        /// 路由表CIDR
        public let routeTableCidrBlock: String

        /// 路由表绑定的VPC
        public let vpcId: String

        /// 是否忽略CIDR冲突
        public let ignoreClusterCidrConflict: Int64?

        public init(routeTableName: String, routeTableCidrBlock: String, vpcId: String, ignoreClusterCidrConflict: Int64? = nil) {
            self.routeTableName = routeTableName
            self.routeTableCidrBlock = routeTableCidrBlock
            self.vpcId = vpcId
            self.ignoreClusterCidrConflict = ignoreClusterCidrConflict
        }

        enum CodingKeys: String, CodingKey {
            case routeTableName = "RouteTableName"
            case routeTableCidrBlock = "RouteTableCidrBlock"
            case vpcId = "VpcId"
            case ignoreClusterCidrConflict = "IgnoreClusterCidrConflict"
        }
    }

    /// CreateClusterRouteTable返回参数结构体
    public struct CreateClusterRouteTableResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建集群路由表
    @inlinable @discardableResult
    public func createClusterRouteTable(_ input: CreateClusterRouteTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterRouteTableResponse> {
        self.client.execute(action: "CreateClusterRouteTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建集群路由表
    @inlinable @discardableResult
    public func createClusterRouteTable(_ input: CreateClusterRouteTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterRouteTableResponse {
        try await self.client.execute(action: "CreateClusterRouteTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建集群路由表
    @inlinable @discardableResult
    public func createClusterRouteTable(routeTableName: String, routeTableCidrBlock: String, vpcId: String, ignoreClusterCidrConflict: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterRouteTableResponse> {
        self.createClusterRouteTable(.init(routeTableName: routeTableName, routeTableCidrBlock: routeTableCidrBlock, vpcId: vpcId, ignoreClusterCidrConflict: ignoreClusterCidrConflict), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集群路由表
    @inlinable @discardableResult
    public func createClusterRouteTable(routeTableName: String, routeTableCidrBlock: String, vpcId: String, ignoreClusterCidrConflict: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterRouteTableResponse {
        try await self.createClusterRouteTable(.init(routeTableName: routeTableName, routeTableCidrBlock: routeTableCidrBlock, vpcId: vpcId, ignoreClusterCidrConflict: ignoreClusterCidrConflict), region: region, logger: logger, on: eventLoop)
    }
}
