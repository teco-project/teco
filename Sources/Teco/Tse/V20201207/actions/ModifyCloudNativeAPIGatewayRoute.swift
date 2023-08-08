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

extension Tse {
    /// ModifyCloudNativeAPIGatewayRoute请求参数结构体
    public struct ModifyCloudNativeAPIGatewayRouteRequest: TCRequestModel {
        /// 网关ID
        public let gatewayId: String

        /// 所属服务的ID
        public let serviceID: String

        /// 路由的ID，实例级别唯一
        public let routeID: String

        /// 路由的名字，实例级别唯一，可以不提供
        public let routeName: String?

        /// 路由的方法，其中方法可选值：
        /// - GET
        /// - POST
        /// - DELETE
        /// - PUT
        /// - OPTIONS
        /// - PATCH
        /// - HEAD
        /// - ANY
        /// - TRACE
        /// - COPY
        /// - MOVE
        /// - PROPFIND
        /// - PROPPATCH
        /// - MKCOL
        /// - LOCK
        /// - UNLOCK
        public let methods: [String]?

        /// 路由的域名
        public let hosts: [String]?

        /// 路由的路径
        public let paths: [String]?

        /// 路由的协议，可选
        /// - https
        /// - http
        public let protocols: [String]?

        /// 转发到后端时是否保留Host
        public let preserveHost: Bool?

        /// https重定向状态码
        public let httpsRedirectStatusCode: Int64?

        /// 转发到后端时是否StripPath
        public let stripPath: Bool?

        /// 是否开启强制HTTPS
        public let forceHttps: Bool?

        /// 四层匹配的目的端口
        public let destinationPorts: [UInt64]?

        /// 路由的Headers
        public let headers: [KVMapping]?

        public init(gatewayId: String, serviceID: String, routeID: String, routeName: String? = nil, methods: [String]? = nil, hosts: [String]? = nil, paths: [String]? = nil, protocols: [String]? = nil, preserveHost: Bool? = nil, httpsRedirectStatusCode: Int64? = nil, stripPath: Bool? = nil, forceHttps: Bool? = nil, destinationPorts: [UInt64]? = nil, headers: [KVMapping]? = nil) {
            self.gatewayId = gatewayId
            self.serviceID = serviceID
            self.routeID = routeID
            self.routeName = routeName
            self.methods = methods
            self.hosts = hosts
            self.paths = paths
            self.protocols = protocols
            self.preserveHost = preserveHost
            self.httpsRedirectStatusCode = httpsRedirectStatusCode
            self.stripPath = stripPath
            self.forceHttps = forceHttps
            self.destinationPorts = destinationPorts
            self.headers = headers
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case serviceID = "ServiceID"
            case routeID = "RouteID"
            case routeName = "RouteName"
            case methods = "Methods"
            case hosts = "Hosts"
            case paths = "Paths"
            case protocols = "Protocols"
            case preserveHost = "PreserveHost"
            case httpsRedirectStatusCode = "HttpsRedirectStatusCode"
            case stripPath = "StripPath"
            case forceHttps = "ForceHttps"
            case destinationPorts = "DestinationPorts"
            case headers = "Headers"
        }
    }

    /// ModifyCloudNativeAPIGatewayRoute返回参数结构体
    public struct ModifyCloudNativeAPIGatewayRouteResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云原生网关路由
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayRoute(_ input: ModifyCloudNativeAPIGatewayRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCloudNativeAPIGatewayRouteResponse> {
        self.client.execute(action: "ModifyCloudNativeAPIGatewayRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云原生网关路由
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayRoute(_ input: ModifyCloudNativeAPIGatewayRouteRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCloudNativeAPIGatewayRouteResponse {
        try await self.client.execute(action: "ModifyCloudNativeAPIGatewayRoute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云原生网关路由
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayRoute(gatewayId: String, serviceID: String, routeID: String, routeName: String? = nil, methods: [String]? = nil, hosts: [String]? = nil, paths: [String]? = nil, protocols: [String]? = nil, preserveHost: Bool? = nil, httpsRedirectStatusCode: Int64? = nil, stripPath: Bool? = nil, forceHttps: Bool? = nil, destinationPorts: [UInt64]? = nil, headers: [KVMapping]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCloudNativeAPIGatewayRouteResponse> {
        self.modifyCloudNativeAPIGatewayRoute(.init(gatewayId: gatewayId, serviceID: serviceID, routeID: routeID, routeName: routeName, methods: methods, hosts: hosts, paths: paths, protocols: protocols, preserveHost: preserveHost, httpsRedirectStatusCode: httpsRedirectStatusCode, stripPath: stripPath, forceHttps: forceHttps, destinationPorts: destinationPorts, headers: headers), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云原生网关路由
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayRoute(gatewayId: String, serviceID: String, routeID: String, routeName: String? = nil, methods: [String]? = nil, hosts: [String]? = nil, paths: [String]? = nil, protocols: [String]? = nil, preserveHost: Bool? = nil, httpsRedirectStatusCode: Int64? = nil, stripPath: Bool? = nil, forceHttps: Bool? = nil, destinationPorts: [UInt64]? = nil, headers: [KVMapping]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCloudNativeAPIGatewayRouteResponse {
        try await self.modifyCloudNativeAPIGatewayRoute(.init(gatewayId: gatewayId, serviceID: serviceID, routeID: routeID, routeName: routeName, methods: methods, hosts: hosts, paths: paths, protocols: protocols, preserveHost: preserveHost, httpsRedirectStatusCode: httpsRedirectStatusCode, stripPath: stripPath, forceHttps: forceHttps, destinationPorts: destinationPorts, headers: headers), region: region, logger: logger, on: eventLoop)
    }
}
