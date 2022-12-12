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

extension Ecm {
    /// ResetRoutes请求参数结构体
    public struct ResetRoutesRequest: TCRequestModel {
        /// 路由表实例ID，例如：rtb-azd4dt1c。
        public let routeTableId: String
        
        /// 路由表名称，最大长度不能超过60个字节。
        public let routeTableName: String
        
        /// 路由策略。
        public let routes: [Route]
        
        public init (routeTableId: String, routeTableName: String, routes: [Route]) {
            self.routeTableId = routeTableId
            self.routeTableName = routeTableName
            self.routes = routes
        }
        
        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routeTableName = "RouteTableName"
            case routes = "Routes"
        }
    }
    
    /// ResetRoutes返回参数结构体
    public struct ResetRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 重置路由表名称和路由策略
    ///
    /// 对某个路由表名称和所有路由策略（Route）进行重新设置
    @inlinable
    public func resetRoutes(_ input: ResetRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ResetRoutesResponse > {
        self.client.execute(action: "ResetRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 重置路由表名称和路由策略
    ///
    /// 对某个路由表名称和所有路由策略（Route）进行重新设置
    @inlinable
    public func resetRoutes(_ input: ResetRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetRoutesResponse {
        try await self.client.execute(action: "ResetRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
