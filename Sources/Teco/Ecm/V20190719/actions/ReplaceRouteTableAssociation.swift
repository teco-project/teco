//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ecm {
    /// 替换路由表绑定关系
    ///
    /// 修改子网关联的路由表，一个子网只能关联一个路由表。
    @inlinable
    public func replaceRouteTableAssociation(_ input: ReplaceRouteTableAssociationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ReplaceRouteTableAssociationResponse > {
        self.client.execute(action: "ReplaceRouteTableAssociation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 替换路由表绑定关系
    ///
    /// 修改子网关联的路由表，一个子网只能关联一个路由表。
    @inlinable
    public func replaceRouteTableAssociation(_ input: ReplaceRouteTableAssociationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceRouteTableAssociationResponse {
        try await self.client.execute(action: "ReplaceRouteTableAssociation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ReplaceRouteTableAssociation请求参数结构体
    public struct ReplaceRouteTableAssociationRequest: TCRequestModel {
        /// 子网实例ID，例如：subnet-3x5lf5q0。可通过DescribeSubnets接口查询。
        public let subnetId: String
        
        /// 路由表实例ID，例如：rtb-azd4dt1c。
        public let routeTableId: String
        
        /// ECM 地域
        public let ecmRegion: String
        
        public init (subnetId: String, routeTableId: String, ecmRegion: String) {
            self.subnetId = subnetId
            self.routeTableId = routeTableId
            self.ecmRegion = ecmRegion
        }
        
        enum CodingKeys: String, CodingKey {
            case subnetId = "SubnetId"
            case routeTableId = "RouteTableId"
            case ecmRegion = "EcmRegion"
        }
    }
    
    /// ReplaceRouteTableAssociation返回参数结构体
    public struct ReplaceRouteTableAssociationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}