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
    /// 创建路由策略
    ///
    /// 本接口(CreateRoutes)用于创建路由策略。
    /// * 向指定路由表批量新增路由策略。
    @inlinable
    public func createRoutes(_ input: CreateRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRoutesResponse > {
        self.client.execute(action: "CreateRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建路由策略
    ///
    /// 本接口(CreateRoutes)用于创建路由策略。
    /// * 向指定路由表批量新增路由策略。
    @inlinable
    public func createRoutes(_ input: CreateRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoutesResponse {
        try await self.client.execute(action: "CreateRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateRoutes请求参数结构体
    public struct CreateRoutesRequest: TCRequestModel {
        /// 路由表实例ID。
        public let routeTableId: String
        
        /// 路由策略对象。
        public let routes: [Route]
        
        public init (routeTableId: String, routes: [Route]) {
            self.routeTableId = routeTableId
            self.routes = routes
        }
        
        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routes = "Routes"
        }
    }
    
    /// CreateRoutes返回参数结构体
    public struct CreateRoutesResponse: TCResponseModel {
        /// 新增的实例个数。
        public let totalCount: UInt64
        
        /// 路由表对象。
        public let routeTableSet: [RouteTable]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case routeTableSet = "RouteTableSet"
            case requestId = "RequestId"
        }
    }
}
