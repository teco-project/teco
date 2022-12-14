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
    /// DeleteRouteTable请求参数结构体
    public struct DeleteRouteTableRequest: TCRequestModel {
        /// 路由表实例ID，例如：rtb-azd4dt1c。
        public let routeTableId: String

        public init(routeTableId: String) {
            self.routeTableId = routeTableId
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
        }
    }

    /// DeleteRouteTable返回参数结构体
    public struct DeleteRouteTableResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除路由表
    @inlinable
    public func deleteRouteTable(_ input: DeleteRouteTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRouteTableResponse > {
        self.client.execute(action: "DeleteRouteTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除路由表
    @inlinable
    public func deleteRouteTable(_ input: DeleteRouteTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRouteTableResponse {
        try await self.client.execute(action: "DeleteRouteTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除路由表
    @inlinable
    public func deleteRouteTable(routeTableId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRouteTableResponse > {
        self.deleteRouteTable(DeleteRouteTableRequest(routeTableId: routeTableId), logger: logger, on: eventLoop)
    }

    /// 删除路由表
    @inlinable
    public func deleteRouteTable(routeTableId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRouteTableResponse {
        try await self.deleteRouteTable(DeleteRouteTableRequest(routeTableId: routeTableId), logger: logger, on: eventLoop)
    }
}
