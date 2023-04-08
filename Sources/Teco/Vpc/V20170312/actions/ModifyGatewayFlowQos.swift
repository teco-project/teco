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

extension Vpc {
    /// ModifyGatewayFlowQos请求参数结构体
    public struct ModifyGatewayFlowQosRequest: TCRequestModel {
        /// 网关实例ID，目前我们支持的网关实例类型有，
        /// 专线网关实例ID，形如，`dcg-ltjahce6`；
        /// Nat网关实例ID，形如，`nat-ltjahce6`；
        /// VPN网关实例ID，形如，`vpn-ltjahce6`。
        public let gatewayId: String

        /// 流控带宽值。取值大于0，表示限流到指定的Mbps；取值等于0，表示完全限流；取值为-1，不限流。
        public let bandwidth: Int64

        /// 限流的云服务器内网IP。
        public let ipAddresses: [String]

        public init(gatewayId: String, bandwidth: Int64, ipAddresses: [String]) {
            self.gatewayId = gatewayId
            self.bandwidth = bandwidth
            self.ipAddresses = ipAddresses
        }

        enum CodingKeys: String, CodingKey {
            case gatewayId = "GatewayId"
            case bandwidth = "Bandwidth"
            case ipAddresses = "IpAddresses"
        }
    }

    /// ModifyGatewayFlowQos返回参数结构体
    public struct ModifyGatewayFlowQosResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 调整网关流控带宽
    ///
    /// 本接口（ModifyGatewayFlowQos）用于调整网关流控带宽。
    @inlinable @discardableResult
    public func modifyGatewayFlowQos(_ input: ModifyGatewayFlowQosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGatewayFlowQosResponse> {
        self.client.execute(action: "ModifyGatewayFlowQos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整网关流控带宽
    ///
    /// 本接口（ModifyGatewayFlowQos）用于调整网关流控带宽。
    @inlinable @discardableResult
    public func modifyGatewayFlowQos(_ input: ModifyGatewayFlowQosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGatewayFlowQosResponse {
        try await self.client.execute(action: "ModifyGatewayFlowQos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整网关流控带宽
    ///
    /// 本接口（ModifyGatewayFlowQos）用于调整网关流控带宽。
    @inlinable @discardableResult
    public func modifyGatewayFlowQos(gatewayId: String, bandwidth: Int64, ipAddresses: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGatewayFlowQosResponse> {
        self.modifyGatewayFlowQos(.init(gatewayId: gatewayId, bandwidth: bandwidth, ipAddresses: ipAddresses), region: region, logger: logger, on: eventLoop)
    }

    /// 调整网关流控带宽
    ///
    /// 本接口（ModifyGatewayFlowQos）用于调整网关流控带宽。
    @inlinable @discardableResult
    public func modifyGatewayFlowQos(gatewayId: String, bandwidth: Int64, ipAddresses: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGatewayFlowQosResponse {
        try await self.modifyGatewayFlowQos(.init(gatewayId: gatewayId, bandwidth: bandwidth, ipAddresses: ipAddresses), region: region, logger: logger, on: eventLoop)
    }
}
