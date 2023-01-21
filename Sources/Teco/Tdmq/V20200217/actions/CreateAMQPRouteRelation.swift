//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tdmq {
    /// CreateAMQPRouteRelation请求参数结构体
    public struct CreateAMQPRouteRelationRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 交换机所在的vhost
        public let vHostId: String

        /// 源Exchange名称
        public let sourceExchange: String

        /// 目标类型:Queue|Exchange
        public let destType: String

        /// 目标值
        public let destValue: String

        /// 交换机说明，最大128个字符
        public let remark: String?

        /// 绑定key,缺省值为default
        public let routingKey: String?

        public init(clusterId: String, vHostId: String, sourceExchange: String, destType: String, destValue: String, remark: String? = nil, routingKey: String? = nil) {
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.sourceExchange = sourceExchange
            self.destType = destType
            self.destValue = destValue
            self.remark = remark
            self.routingKey = routingKey
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case sourceExchange = "SourceExchange"
            case destType = "DestType"
            case destValue = "DestValue"
            case remark = "Remark"
            case routingKey = "RoutingKey"
        }
    }

    /// CreateAMQPRouteRelation返回参数结构体
    public struct CreateAMQPRouteRelationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建AMQP路由关系
    @inlinable @discardableResult
    public func createAMQPRouteRelation(_ input: CreateAMQPRouteRelationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAMQPRouteRelationResponse> {
        self.client.execute(action: "CreateAMQPRouteRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建AMQP路由关系
    @inlinable @discardableResult
    public func createAMQPRouteRelation(_ input: CreateAMQPRouteRelationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAMQPRouteRelationResponse {
        try await self.client.execute(action: "CreateAMQPRouteRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建AMQP路由关系
    @inlinable @discardableResult
    public func createAMQPRouteRelation(clusterId: String, vHostId: String, sourceExchange: String, destType: String, destValue: String, remark: String? = nil, routingKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAMQPRouteRelationResponse> {
        self.createAMQPRouteRelation(CreateAMQPRouteRelationRequest(clusterId: clusterId, vHostId: vHostId, sourceExchange: sourceExchange, destType: destType, destValue: destValue, remark: remark, routingKey: routingKey), region: region, logger: logger, on: eventLoop)
    }

    /// 创建AMQP路由关系
    @inlinable @discardableResult
    public func createAMQPRouteRelation(clusterId: String, vHostId: String, sourceExchange: String, destType: String, destValue: String, remark: String? = nil, routingKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAMQPRouteRelationResponse {
        try await self.createAMQPRouteRelation(CreateAMQPRouteRelationRequest(clusterId: clusterId, vHostId: vHostId, sourceExchange: sourceExchange, destType: destType, destValue: destValue, remark: remark, routingKey: routingKey), region: region, logger: logger, on: eventLoop)
    }
}
