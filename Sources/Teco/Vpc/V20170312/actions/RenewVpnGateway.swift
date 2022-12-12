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

extension Vpc {
    /// RenewVpnGateway请求参数结构体
    public struct RenewVpnGatewayRequest: TCRequestModel {
        /// VPN网关实例ID。
        public let vpnGatewayId: String
        
        /// 预付费计费模式。
        public let instanceChargePrepaid: InstanceChargePrepaid
        
        public init (vpnGatewayId: String, instanceChargePrepaid: InstanceChargePrepaid) {
            self.vpnGatewayId = vpnGatewayId
            self.instanceChargePrepaid = instanceChargePrepaid
        }
        
        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case instanceChargePrepaid = "InstanceChargePrepaid"
        }
    }
    
    /// RenewVpnGateway返回参数结构体
    public struct RenewVpnGatewayResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 续费VPN网关
    ///
    /// 本接口（RenewVpnGateway）用于预付费（包年包月）VPN网关续费。目前只支持IPSEC网关。
    @inlinable
    public func renewVpnGateway(_ input: RenewVpnGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RenewVpnGatewayResponse > {
        self.client.execute(action: "RenewVpnGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 续费VPN网关
    ///
    /// 本接口（RenewVpnGateway）用于预付费（包年包月）VPN网关续费。目前只支持IPSEC网关。
    @inlinable
    public func renewVpnGateway(_ input: RenewVpnGatewayRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewVpnGatewayResponse {
        try await self.client.execute(action: "RenewVpnGateway", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
