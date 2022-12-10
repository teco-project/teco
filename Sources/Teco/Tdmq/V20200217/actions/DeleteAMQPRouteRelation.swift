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

extension Tdmq {
    /// 删除Amqp路由关系
    @inlinable
    public func deleteAMQPRouteRelation(_ input: DeleteAMQPRouteRelationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAMQPRouteRelationResponse > {
        self.client.execute(action: "DeleteAMQPRouteRelation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除Amqp路由关系
    @inlinable
    public func deleteAMQPRouteRelation(_ input: DeleteAMQPRouteRelationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAMQPRouteRelationResponse {
        try await self.client.execute(action: "DeleteAMQPRouteRelation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteAMQPRouteRelation请求参数结构体
    public struct DeleteAMQPRouteRelationRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// Vhost名称
        public let vHostId: String
        
        /// 路由关系ID
        public let routeRelationId: String
        
        public init (clusterId: String, vHostId: String, routeRelationId: String) {
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.routeRelationId = routeRelationId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case routeRelationId = "RouteRelationId"
        }
    }
    
    /// DeleteAMQPRouteRelation返回参数结构体
    public struct DeleteAMQPRouteRelationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
