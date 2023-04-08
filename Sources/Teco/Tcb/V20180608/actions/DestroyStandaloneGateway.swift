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

extension Tcb {
    /// DestroyStandaloneGateway请求参数结构体
    public struct DestroyStandaloneGatewayRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 网名名称
        public let gatewayName: String

        /// 是否强制释放
        public let isForce: Bool

        public init(envId: String, gatewayName: String, isForce: Bool) {
            self.envId = envId
            self.gatewayName = gatewayName
            self.isForce = isForce
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case gatewayName = "GatewayName"
            case isForce = "IsForce"
        }
    }

    /// DestroyStandaloneGateway返回参数结构体
    public struct DestroyStandaloneGatewayResponse: TCResponseModel {
        /// 删除独立网关状态
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 销毁小租户网关
    ///
    /// 本接口（DestroyStandaloneGateway）用于销毁小租户网关。
    @inlinable
    public func destroyStandaloneGateway(_ input: DestroyStandaloneGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyStandaloneGatewayResponse> {
        self.client.execute(action: "DestroyStandaloneGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁小租户网关
    ///
    /// 本接口（DestroyStandaloneGateway）用于销毁小租户网关。
    @inlinable
    public func destroyStandaloneGateway(_ input: DestroyStandaloneGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyStandaloneGatewayResponse {
        try await self.client.execute(action: "DestroyStandaloneGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁小租户网关
    ///
    /// 本接口（DestroyStandaloneGateway）用于销毁小租户网关。
    @inlinable
    public func destroyStandaloneGateway(envId: String, gatewayName: String, isForce: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyStandaloneGatewayResponse> {
        self.destroyStandaloneGateway(.init(envId: envId, gatewayName: gatewayName, isForce: isForce), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁小租户网关
    ///
    /// 本接口（DestroyStandaloneGateway）用于销毁小租户网关。
    @inlinable
    public func destroyStandaloneGateway(envId: String, gatewayName: String, isForce: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyStandaloneGatewayResponse {
        try await self.destroyStandaloneGateway(.init(envId: envId, gatewayName: gatewayName, isForce: isForce), region: region, logger: logger, on: eventLoop)
    }
}
