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
    /// WithdrawNotifyRoutes请求参数结构体
    public struct WithdrawNotifyRoutesRequest: TCRequestModel {
        /// 路由表唯一ID。
        public let routeTableId: String

        /// 路由策略唯一ID。
        public let routeItemIds: [String]

        public init(routeTableId: String, routeItemIds: [String]) {
            self.routeTableId = routeTableId
            self.routeItemIds = routeItemIds
        }

        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routeItemIds = "RouteItemIds"
        }
    }

    /// WithdrawNotifyRoutes返回参数结构体
    public struct WithdrawNotifyRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 从云联网撤销路由
    ///
    /// 路由表列表页操作增加“从云联网撤销”，用于撤销已发布到云联网的路由。
    @inlinable
    public func withdrawNotifyRoutes(_ input: WithdrawNotifyRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < WithdrawNotifyRoutesResponse > {
        self.client.execute(action: "WithdrawNotifyRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 从云联网撤销路由
    ///
    /// 路由表列表页操作增加“从云联网撤销”，用于撤销已发布到云联网的路由。
    @inlinable
    public func withdrawNotifyRoutes(_ input: WithdrawNotifyRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> WithdrawNotifyRoutesResponse {
        try await self.client.execute(action: "WithdrawNotifyRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 从云联网撤销路由
    ///
    /// 路由表列表页操作增加“从云联网撤销”，用于撤销已发布到云联网的路由。
    @inlinable
    public func withdrawNotifyRoutes(routeTableId: String, routeItemIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < WithdrawNotifyRoutesResponse > {
        self.withdrawNotifyRoutes(WithdrawNotifyRoutesRequest(routeTableId: routeTableId, routeItemIds: routeItemIds), logger: logger, on: eventLoop)
    }

    /// 从云联网撤销路由
    ///
    /// 路由表列表页操作增加“从云联网撤销”，用于撤销已发布到云联网的路由。
    @inlinable
    public func withdrawNotifyRoutes(routeTableId: String, routeItemIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> WithdrawNotifyRoutesResponse {
        try await self.withdrawNotifyRoutes(WithdrawNotifyRoutesRequest(routeTableId: routeTableId, routeItemIds: routeItemIds), logger: logger, on: eventLoop)
    }
}
