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

extension Tcb {
    /// TurnOffStandaloneGateway请求参数结构体
    public struct TurnOffStandaloneGatewayRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 网关名称
        public let gatewayName: String

        /// 服务名称列表
        public let serviceNameList: [String]

        public init(envId: String, gatewayName: String, serviceNameList: [String]) {
            self.envId = envId
            self.gatewayName = gatewayName
            self.serviceNameList = serviceNameList
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case gatewayName = "GatewayName"
            case serviceNameList = "ServiceNameList"
        }
    }

    /// TurnOffStandaloneGateway返回参数结构体
    public struct TurnOffStandaloneGatewayResponse: TCResponseModel {
        /// 关闭独立网关状态
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 关闭小租户网关
    ///
    /// 本接口（TurnOffStandaloneGateway）用于关闭小租户网关。
    @inlinable
    public func turnOffStandaloneGateway(_ input: TurnOffStandaloneGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TurnOffStandaloneGatewayResponse> {
        self.client.execute(action: "TurnOffStandaloneGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭小租户网关
    ///
    /// 本接口（TurnOffStandaloneGateway）用于关闭小租户网关。
    @inlinable
    public func turnOffStandaloneGateway(_ input: TurnOffStandaloneGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TurnOffStandaloneGatewayResponse {
        try await self.client.execute(action: "TurnOffStandaloneGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭小租户网关
    ///
    /// 本接口（TurnOffStandaloneGateway）用于关闭小租户网关。
    @inlinable
    public func turnOffStandaloneGateway(envId: String, gatewayName: String, serviceNameList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TurnOffStandaloneGatewayResponse> {
        self.turnOffStandaloneGateway(.init(envId: envId, gatewayName: gatewayName, serviceNameList: serviceNameList), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭小租户网关
    ///
    /// 本接口（TurnOffStandaloneGateway）用于关闭小租户网关。
    @inlinable
    public func turnOffStandaloneGateway(envId: String, gatewayName: String, serviceNameList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TurnOffStandaloneGatewayResponse {
        try await self.turnOffStandaloneGateway(.init(envId: envId, gatewayName: gatewayName, serviceNameList: serviceNameList), region: region, logger: logger, on: eventLoop)
    }
}
