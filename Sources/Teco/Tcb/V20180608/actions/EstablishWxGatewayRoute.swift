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

import Logging
import NIOCore
import TecoCore

extension Tcb {
    /// EstablishWxGatewayRoute请求参数结构体
    public struct EstablishWxGatewayRouteRequest: TCRequestModel {
        /// 网关id
        public let gatewayId: String

        /// 服务名称
        public let gatewayRouteName: String

        /// 服务地址
        public let gatewayRouteAddr: String

        /// 协议类型 http/https
        public let gatewayRouteProtocol: String

        /// 服务描述
        public let gatewayRouteDesc: String?

        public init(gatewayId: String, gatewayRouteName: String, gatewayRouteAddr: String, gatewayRouteProtocol: String, gatewayRouteDesc: String? = nil) {
            self.gatewayId = gatewayId
            self.gatewayRouteName = gatewayRouteName
            self.gatewayRouteAddr = gatewayRouteAddr
            self.gatewayRouteProtocol = gatewayRouteProtocol
            self.gatewayRouteDesc = gatewayRouteDesc
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case gatewayRouteName = "GatewayRouteName"
            case gatewayRouteAddr = "GatewayRouteAddr"
            case gatewayRouteProtocol = "GatewayRouteProtocol"
            case gatewayRouteDesc = "GatewayRouteDesc"
        }
    }

    /// EstablishWxGatewayRoute返回参数结构体
    public struct EstablishWxGatewayRouteResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建或修改安全网关路由
    @inlinable @discardableResult
    public func establishWxGatewayRoute(_ input: EstablishWxGatewayRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EstablishWxGatewayRouteResponse> {
        self.client.execute(action: "EstablishWxGatewayRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建或修改安全网关路由
    @inlinable @discardableResult
    public func establishWxGatewayRoute(_ input: EstablishWxGatewayRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EstablishWxGatewayRouteResponse {
        try await self.client.execute(action: "EstablishWxGatewayRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建或修改安全网关路由
    @inlinable @discardableResult
    public func establishWxGatewayRoute(gatewayId: String, gatewayRouteName: String, gatewayRouteAddr: String, gatewayRouteProtocol: String, gatewayRouteDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EstablishWxGatewayRouteResponse> {
        self.establishWxGatewayRoute(.init(gatewayId: gatewayId, gatewayRouteName: gatewayRouteName, gatewayRouteAddr: gatewayRouteAddr, gatewayRouteProtocol: gatewayRouteProtocol, gatewayRouteDesc: gatewayRouteDesc), region: region, logger: logger, on: eventLoop)
    }

    /// 创建或修改安全网关路由
    @inlinable @discardableResult
    public func establishWxGatewayRoute(gatewayId: String, gatewayRouteName: String, gatewayRouteAddr: String, gatewayRouteProtocol: String, gatewayRouteDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EstablishWxGatewayRouteResponse {
        try await self.establishWxGatewayRoute(.init(gatewayId: gatewayId, gatewayRouteName: gatewayRouteName, gatewayRouteAddr: gatewayRouteAddr, gatewayRouteProtocol: gatewayRouteProtocol, gatewayRouteDesc: gatewayRouteDesc), region: region, logger: logger, on: eventLoop)
    }
}
