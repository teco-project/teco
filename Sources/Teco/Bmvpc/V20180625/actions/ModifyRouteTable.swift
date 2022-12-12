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

extension Bmvpc {
    /// ModifyRouteTable请求参数结构体
    public struct ModifyRouteTableRequest: TCRequestModel {
        /// 路由表ID
        public let routeTableId: String
        
        /// 路由表名称
        public let routeTableName: String?
        
        public init (routeTableId: String, routeTableName: String? = nil) {
            self.routeTableId = routeTableId
            self.routeTableName = routeTableName
        }
        
        enum CodingKeys: String, CodingKey {
            case routeTableId = "RouteTableId"
            case routeTableName = "RouteTableName"
        }
    }
    
    /// ModifyRouteTable返回参数结构体
    public struct ModifyRouteTableResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改路由表
    @inlinable
    public func modifyRouteTable(_ input: ModifyRouteTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRouteTableResponse > {
        self.client.execute(action: "ModifyRouteTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改路由表
    @inlinable
    public func modifyRouteTable(_ input: ModifyRouteTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRouteTableResponse {
        try await self.client.execute(action: "ModifyRouteTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
