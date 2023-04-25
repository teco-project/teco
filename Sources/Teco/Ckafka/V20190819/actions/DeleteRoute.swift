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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Ckafka {
    /// DeleteRoute请求参数结构体
    public struct DeleteRouteRequest: TCRequestModel {
        /// 实例唯一id
        public let instanceId: String

        /// 路由id
        public let routeId: Int64

        /// 调用方appId
        public let callerAppid: Int64?

        /// 删除路由时间
        public let deleteRouteTime: String?

        public init(instanceId: String, routeId: Int64, callerAppid: Int64? = nil, deleteRouteTime: String? = nil) {
            self.instanceId = instanceId
            self.routeId = routeId
            self.callerAppid = callerAppid
            self.deleteRouteTime = deleteRouteTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case routeId = "RouteId"
            case callerAppid = "CallerAppid"
            case deleteRouteTime = "DeleteRouteTime"
        }
    }

    /// DeleteRoute返回参数结构体
    public struct DeleteRouteResponse: TCResponseModel {
        /// 返回结果
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除路由
    @inlinable
    public func deleteRoute(_ input: DeleteRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRouteResponse> {
        self.client.execute(action: "DeleteRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除路由
    @inlinable
    public func deleteRoute(_ input: DeleteRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRouteResponse {
        try await self.client.execute(action: "DeleteRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除路由
    @inlinable
    public func deleteRoute(instanceId: String, routeId: Int64, callerAppid: Int64? = nil, deleteRouteTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRouteResponse> {
        self.deleteRoute(.init(instanceId: instanceId, routeId: routeId, callerAppid: callerAppid, deleteRouteTime: deleteRouteTime), region: region, logger: logger, on: eventLoop)
    }

    /// 删除路由
    @inlinable
    public func deleteRoute(instanceId: String, routeId: Int64, callerAppid: Int64? = nil, deleteRouteTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRouteResponse {
        try await self.deleteRoute(.init(instanceId: instanceId, routeId: routeId, callerAppid: callerAppid, deleteRouteTime: deleteRouteTime), region: region, logger: logger, on: eventLoop)
    }
}
