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
    /// ModifyCloudNativeAPIGatewayService请求参数结构体
    public struct ModifyCloudNativeAPIGatewayServiceRequest: TCRequest {
        /// 网关ID
        public let gatewayId: String

        /// 服务名称
        public let name: String

        /// 请求协议：
        /// - https
        /// - http
        /// - tcp
        /// - udp
        public let `protocol`: String

        /// 请求路径
        public let path: String

        /// 超时时间，单位ms
        public let timeout: Int64

        /// 重试次数
        public let retries: Int64

        /// 服务类型:
        /// - Kubernetes
        /// - Registry
        /// - IPList
        /// - HostIP
        /// - Scf
        public let upstreamType: String

        /// 服务配置
        public let upstreamInfo: KongUpstreamInfo

        /// 服务ID
        public let id: String

        public init(gatewayId: String, name: String, protocol: String, path: String, timeout: Int64, retries: Int64, upstreamType: String, upstreamInfo: KongUpstreamInfo, id: String) {
            self.gatewayId = gatewayId
            self.name = name
            self.protocol = `protocol`
            self.path = path
            self.timeout = timeout
            self.retries = retries
            self.upstreamType = upstreamType
            self.upstreamInfo = upstreamInfo
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case name = "Name"
            case `protocol` = "Protocol"
            case path = "Path"
            case timeout = "Timeout"
            case retries = "Retries"
            case upstreamType = "UpstreamType"
            case upstreamInfo = "UpstreamInfo"
            case id = "ID"
        }
    }

    /// ModifyCloudNativeAPIGatewayService返回参数结构体
    public struct ModifyCloudNativeAPIGatewayServiceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云原生网关服务
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayService(_ input: ModifyCloudNativeAPIGatewayServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCloudNativeAPIGatewayServiceResponse> {
        self.client.execute(action: "ModifyCloudNativeAPIGatewayService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云原生网关服务
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayService(_ input: ModifyCloudNativeAPIGatewayServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCloudNativeAPIGatewayServiceResponse {
        try await self.client.execute(action: "ModifyCloudNativeAPIGatewayService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云原生网关服务
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayService(gatewayId: String, name: String, protocol: String, path: String, timeout: Int64, retries: Int64, upstreamType: String, upstreamInfo: KongUpstreamInfo, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCloudNativeAPIGatewayServiceResponse> {
        self.modifyCloudNativeAPIGatewayService(.init(gatewayId: gatewayId, name: name, protocol: `protocol`, path: path, timeout: timeout, retries: retries, upstreamType: upstreamType, upstreamInfo: upstreamInfo, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云原生网关服务
    @inlinable @discardableResult
    public func modifyCloudNativeAPIGatewayService(gatewayId: String, name: String, protocol: String, path: String, timeout: Int64, retries: Int64, upstreamType: String, upstreamInfo: KongUpstreamInfo, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCloudNativeAPIGatewayServiceResponse {
        try await self.modifyCloudNativeAPIGatewayService(.init(gatewayId: gatewayId, name: name, protocol: `protocol`, path: path, timeout: timeout, retries: retries, upstreamType: upstreamType, upstreamInfo: upstreamInfo, id: id), region: region, logger: logger, on: eventLoop)
    }
}
