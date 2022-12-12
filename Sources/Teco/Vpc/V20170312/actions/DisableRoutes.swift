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
    /// DisableRoutes请求参数结构体
    public struct DisableRoutesRequest: TCRequestModel {
        /// 路由表唯一ID。
        public let routeTableId: String
        
        /// 路由策略ID。不能和RouteItemIds同时使用，但至少输入一个。该参数取值可通过查询路由列表（[DescribeRouteTables](https://cloud.tencent.com/document/product/215/15763)）获取。
        public let routeIds: [UInt64]?
        
        /// 路由策略唯一ID。不能和RouteIds同时使用，但至少输入一个。该参数取值可通过查询路由列表（[DescribeRouteTables](https://cloud.tencent.com/document/product/215/15763)）获取。
        public let routeItemIds: [String]?
        
        public init (routeTableId: String, routeIds: [UInt64]? = nil, routeItemIds: [String]? = nil) {
            self.routeTableId = routeTableId
            self.routeIds = routeIds
            self.routeItemIds = routeItemIds
        }
        
        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routeIds = "RouteIds"
            case routeItemIds = "RouteItemIds"
        }
    }
    
    /// DisableRoutes返回参数结构体
    public struct DisableRoutesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 禁用子网路由
    ///
    /// 本接口（DisableRoutes）用于禁用已启用的子网路由
    @inlinable
    public func disableRoutes(_ input: DisableRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableRoutesResponse > {
        self.client.execute(action: "DisableRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 禁用子网路由
    ///
    /// 本接口（DisableRoutes）用于禁用已启用的子网路由
    @inlinable
    public func disableRoutes(_ input: DisableRoutesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableRoutesResponse {
        try await self.client.execute(action: "DisableRoutes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
