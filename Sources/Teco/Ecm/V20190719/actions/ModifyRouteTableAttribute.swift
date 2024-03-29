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

extension Ecm {
    /// ModifyRouteTableAttribute请求参数结构体
    public struct ModifyRouteTableAttributeRequest: TCRequest {
        /// 路由表实例ID，例如：rtb-azd4dt1c
        public let routeTableId: String

        /// 路由表名称
        public let routeTableName: String

        public init(routeTableId: String, routeTableName: String) {
            self.routeTableId = routeTableId
            self.routeTableName = routeTableName
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routeTableName = "RouteTableName"
        }
    }

    /// ModifyRouteTableAttribute返回参数结构体
    public struct ModifyRouteTableAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改路由表属性
    @inlinable @discardableResult
    public func modifyRouteTableAttribute(_ input: ModifyRouteTableAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRouteTableAttributeResponse> {
        self.client.execute(action: "ModifyRouteTableAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改路由表属性
    @inlinable @discardableResult
    public func modifyRouteTableAttribute(_ input: ModifyRouteTableAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRouteTableAttributeResponse {
        try await self.client.execute(action: "ModifyRouteTableAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改路由表属性
    @inlinable @discardableResult
    public func modifyRouteTableAttribute(routeTableId: String, routeTableName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRouteTableAttributeResponse> {
        self.modifyRouteTableAttribute(.init(routeTableId: routeTableId, routeTableName: routeTableName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改路由表属性
    @inlinable @discardableResult
    public func modifyRouteTableAttribute(routeTableId: String, routeTableName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRouteTableAttributeResponse {
        try await self.modifyRouteTableAttribute(.init(routeTableId: routeTableId, routeTableName: routeTableName), region: region, logger: logger, on: eventLoop)
    }
}
