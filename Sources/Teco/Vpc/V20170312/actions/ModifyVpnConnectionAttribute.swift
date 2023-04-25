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

extension Vpc {
    /// ModifyVpnConnectionAttribute请求参数结构体
    public struct ModifyVpnConnectionAttributeRequest: TCRequestModel {
        /// VPN通道实例ID。形如：vpnx-f49l6u0z。
        public let vpnConnectionId: String

        /// VPN通道名称，可任意命名，但不得超过60个字符。
        public let vpnConnectionName: String?

        /// 预共享密钥。
        public let preShareKey: String?

        /// SPD策略组，例如：{"10.0.0.5/24":["172.123.10.5/16"]}，10.0.0.5/24是vpc内网段172.123.10.5/16是IDC网段。用户指定VPC内哪些网段可以和您IDC中哪些网段通信。
        public let securityPolicyDatabases: [SecurityPolicyDatabase]?

        /// IKE配置（Internet Key Exchange，因特网密钥交换），IKE具有一套自我保护机制，用户配置网络安全协议。
        public let ikeOptionsSpecification: IKEOptionsSpecification?

        /// IPSec配置，腾讯云提供IPSec安全会话设置。
        public let ipsecOptionsSpecification: IPSECOptionsSpecification?

        /// 是否启用通道健康检查
        public let enableHealthCheck: Bool?

        /// 本端通道探测ip
        public let healthCheckLocalIp: String?

        /// 对端通道探测ip
        public let healthCheckRemoteIp: String?

        /// 协商类型，默认为active（主动协商）。可选值：active（主动协商），passive（被动协商），flowTrigger（流量协商）
        public let negotiationType: String?

        /// DPD探测开关。默认为0，表示关闭DPD探测。可选值：0（关闭），1（开启）
        public let dpdEnable: Int64?

        /// DPD超时时间。即探测确认对端不存在需要的时间。dpdEnable为1（开启）时有效。默认30，单位为秒
        public let dpdTimeout: String?

        /// DPD超时后的动作。默认为clear。dpdEnable为1（开启）时有效。可取值为clear（断开）和restart（重试）
        public let dpdAction: String?

        public init(vpnConnectionId: String, vpnConnectionName: String? = nil, preShareKey: String? = nil, securityPolicyDatabases: [SecurityPolicyDatabase]? = nil, ikeOptionsSpecification: IKEOptionsSpecification? = nil, ipsecOptionsSpecification: IPSECOptionsSpecification? = nil, enableHealthCheck: Bool? = nil, healthCheckLocalIp: String? = nil, healthCheckRemoteIp: String? = nil, negotiationType: String? = nil, dpdEnable: Int64? = nil, dpdTimeout: String? = nil, dpdAction: String? = nil) {
            self.vpnConnectionId = vpnConnectionId
            self.vpnConnectionName = vpnConnectionName
            self.preShareKey = preShareKey
            self.securityPolicyDatabases = securityPolicyDatabases
            self.ikeOptionsSpecification = ikeOptionsSpecification
            self.ipsecOptionsSpecification = ipsecOptionsSpecification
            self.enableHealthCheck = enableHealthCheck
            self.healthCheckLocalIp = healthCheckLocalIp
            self.healthCheckRemoteIp = healthCheckRemoteIp
            self.negotiationType = negotiationType
            self.dpdEnable = dpdEnable
            self.dpdTimeout = dpdTimeout
            self.dpdAction = dpdAction
        }

        enum CodingKeys: String, CodingKey {
            case vpnConnectionId = "VpnConnectionId"
            case vpnConnectionName = "VpnConnectionName"
            case preShareKey = "PreShareKey"
            case securityPolicyDatabases = "SecurityPolicyDatabases"
            case ikeOptionsSpecification = "IKEOptionsSpecification"
            case ipsecOptionsSpecification = "IPSECOptionsSpecification"
            case enableHealthCheck = "EnableHealthCheck"
            case healthCheckLocalIp = "HealthCheckLocalIp"
            case healthCheckRemoteIp = "HealthCheckRemoteIp"
            case negotiationType = "NegotiationType"
            case dpdEnable = "DpdEnable"
            case dpdTimeout = "DpdTimeout"
            case dpdAction = "DpdAction"
        }
    }

    /// ModifyVpnConnectionAttribute返回参数结构体
    public struct ModifyVpnConnectionAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改VPN通道
    ///
    /// 本接口（ModifyVpnConnectionAttribute）用于修改VPN通道。
    @inlinable @discardableResult
    public func modifyVpnConnectionAttribute(_ input: ModifyVpnConnectionAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpnConnectionAttributeResponse> {
        self.client.execute(action: "ModifyVpnConnectionAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改VPN通道
    ///
    /// 本接口（ModifyVpnConnectionAttribute）用于修改VPN通道。
    @inlinable @discardableResult
    public func modifyVpnConnectionAttribute(_ input: ModifyVpnConnectionAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnConnectionAttributeResponse {
        try await self.client.execute(action: "ModifyVpnConnectionAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改VPN通道
    ///
    /// 本接口（ModifyVpnConnectionAttribute）用于修改VPN通道。
    @inlinable @discardableResult
    public func modifyVpnConnectionAttribute(vpnConnectionId: String, vpnConnectionName: String? = nil, preShareKey: String? = nil, securityPolicyDatabases: [SecurityPolicyDatabase]? = nil, ikeOptionsSpecification: IKEOptionsSpecification? = nil, ipsecOptionsSpecification: IPSECOptionsSpecification? = nil, enableHealthCheck: Bool? = nil, healthCheckLocalIp: String? = nil, healthCheckRemoteIp: String? = nil, negotiationType: String? = nil, dpdEnable: Int64? = nil, dpdTimeout: String? = nil, dpdAction: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpnConnectionAttributeResponse> {
        self.modifyVpnConnectionAttribute(.init(vpnConnectionId: vpnConnectionId, vpnConnectionName: vpnConnectionName, preShareKey: preShareKey, securityPolicyDatabases: securityPolicyDatabases, ikeOptionsSpecification: ikeOptionsSpecification, ipsecOptionsSpecification: ipsecOptionsSpecification, enableHealthCheck: enableHealthCheck, healthCheckLocalIp: healthCheckLocalIp, healthCheckRemoteIp: healthCheckRemoteIp, negotiationType: negotiationType, dpdEnable: dpdEnable, dpdTimeout: dpdTimeout, dpdAction: dpdAction), region: region, logger: logger, on: eventLoop)
    }

    /// 修改VPN通道
    ///
    /// 本接口（ModifyVpnConnectionAttribute）用于修改VPN通道。
    @inlinable @discardableResult
    public func modifyVpnConnectionAttribute(vpnConnectionId: String, vpnConnectionName: String? = nil, preShareKey: String? = nil, securityPolicyDatabases: [SecurityPolicyDatabase]? = nil, ikeOptionsSpecification: IKEOptionsSpecification? = nil, ipsecOptionsSpecification: IPSECOptionsSpecification? = nil, enableHealthCheck: Bool? = nil, healthCheckLocalIp: String? = nil, healthCheckRemoteIp: String? = nil, negotiationType: String? = nil, dpdEnable: Int64? = nil, dpdTimeout: String? = nil, dpdAction: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnConnectionAttributeResponse {
        try await self.modifyVpnConnectionAttribute(.init(vpnConnectionId: vpnConnectionId, vpnConnectionName: vpnConnectionName, preShareKey: preShareKey, securityPolicyDatabases: securityPolicyDatabases, ikeOptionsSpecification: ikeOptionsSpecification, ipsecOptionsSpecification: ipsecOptionsSpecification, enableHealthCheck: enableHealthCheck, healthCheckLocalIp: healthCheckLocalIp, healthCheckRemoteIp: healthCheckRemoteIp, negotiationType: negotiationType, dpdEnable: dpdEnable, dpdTimeout: dpdTimeout, dpdAction: dpdAction), region: region, logger: logger, on: eventLoop)
    }
}
