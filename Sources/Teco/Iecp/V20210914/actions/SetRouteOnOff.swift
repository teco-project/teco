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

extension Iecp {
    /// SetRouteOnOff请求参数结构体
    public struct SetRouteOnOffRequest: TCRequestModel {
        /// 无
        public let routeID: Int64

        /// on 或 off
        public let status: String

        public init(routeID: Int64, status: String) {
            self.routeID = routeID
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case routeID = "RouteID"
            case status = "Status"
        }
    }

    /// SetRouteOnOff返回参数结构体
    public struct SetRouteOnOffResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开关消息路由
    @inlinable
    public func setRouteOnOff(_ input: SetRouteOnOffRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SetRouteOnOffResponse > {
        self.client.execute(action: "SetRouteOnOff", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开关消息路由
    @inlinable
    public func setRouteOnOff(_ input: SetRouteOnOffRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetRouteOnOffResponse {
        try await self.client.execute(action: "SetRouteOnOff", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开关消息路由
    @inlinable
    public func setRouteOnOff(routeID: Int64, status: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SetRouteOnOffResponse > {
        self.setRouteOnOff(SetRouteOnOffRequest(routeID: routeID, status: status), logger: logger, on: eventLoop)
    }

    /// 开关消息路由
    @inlinable
    public func setRouteOnOff(routeID: Int64, status: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetRouteOnOffResponse {
        try await self.setRouteOnOff(SetRouteOnOffRequest(routeID: routeID, status: status), logger: logger, on: eventLoop)
    }
}
