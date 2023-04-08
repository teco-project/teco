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

import TecoCore

extension Bmvpc {
    /// ModifyVpnConnectionAttribute请求参数结构体
    public struct ModifyVpnConnectionAttributeRequest: TCRequestModel {
        /// VPN通道实例ID。形如：bmvpnx-f49l6u0z。
        public let vpnConnectionId: String

        /// VPC实例ID
        public let vpcId: String

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

        public init(vpnConnectionId: String, vpcId: String, vpnConnectionName: String? = nil, preShareKey: String? = nil, securityPolicyDatabases: [SecurityPolicyDatabase]? = nil, ikeOptionsSpecification: IKEOptionsSpecification? = nil, ipsecOptionsSpecification: IPSECOptionsSpecification? = nil) {
            self.vpnConnectionId = vpnConnectionId
            self.vpcId = vpcId
            self.vpnConnectionName = vpnConnectionName
            self.preShareKey = preShareKey
            self.securityPolicyDatabases = securityPolicyDatabases
            self.ikeOptionsSpecification = ikeOptionsSpecification
            self.ipsecOptionsSpecification = ipsecOptionsSpecification
        }

        enum CodingKeys: String, CodingKey {
            case vpnConnectionId = "VpnConnectionId"
            case vpcId = "VpcId"
            case vpnConnectionName = "VpnConnectionName"
            case preShareKey = "PreShareKey"
            case securityPolicyDatabases = "SecurityPolicyDatabases"
            case ikeOptionsSpecification = "IKEOptionsSpecification"
            case ipsecOptionsSpecification = "IPSECOptionsSpecification"
        }
    }

    /// ModifyVpnConnectionAttribute返回参数结构体
    public struct ModifyVpnConnectionAttributeResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改VPN通道
    ///
    /// 本接口（ModifyVpnConnectionAttribute）用于修改VPN通道。
    @inlinable
    public func modifyVpnConnectionAttribute(_ input: ModifyVpnConnectionAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpnConnectionAttributeResponse> {
        self.client.execute(action: "ModifyVpnConnectionAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改VPN通道
    ///
    /// 本接口（ModifyVpnConnectionAttribute）用于修改VPN通道。
    @inlinable
    public func modifyVpnConnectionAttribute(_ input: ModifyVpnConnectionAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnConnectionAttributeResponse {
        try await self.client.execute(action: "ModifyVpnConnectionAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改VPN通道
    ///
    /// 本接口（ModifyVpnConnectionAttribute）用于修改VPN通道。
    @inlinable
    public func modifyVpnConnectionAttribute(vpnConnectionId: String, vpcId: String, vpnConnectionName: String? = nil, preShareKey: String? = nil, securityPolicyDatabases: [SecurityPolicyDatabase]? = nil, ikeOptionsSpecification: IKEOptionsSpecification? = nil, ipsecOptionsSpecification: IPSECOptionsSpecification? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpnConnectionAttributeResponse> {
        self.modifyVpnConnectionAttribute(.init(vpnConnectionId: vpnConnectionId, vpcId: vpcId, vpnConnectionName: vpnConnectionName, preShareKey: preShareKey, securityPolicyDatabases: securityPolicyDatabases, ikeOptionsSpecification: ikeOptionsSpecification, ipsecOptionsSpecification: ipsecOptionsSpecification), region: region, logger: logger, on: eventLoop)
    }

    /// 修改VPN通道
    ///
    /// 本接口（ModifyVpnConnectionAttribute）用于修改VPN通道。
    @inlinable
    public func modifyVpnConnectionAttribute(vpnConnectionId: String, vpcId: String, vpnConnectionName: String? = nil, preShareKey: String? = nil, securityPolicyDatabases: [SecurityPolicyDatabase]? = nil, ikeOptionsSpecification: IKEOptionsSpecification? = nil, ipsecOptionsSpecification: IPSECOptionsSpecification? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpnConnectionAttributeResponse {
        try await self.modifyVpnConnectionAttribute(.init(vpnConnectionId: vpnConnectionId, vpcId: vpcId, vpnConnectionName: vpnConnectionName, preShareKey: preShareKey, securityPolicyDatabases: securityPolicyDatabases, ikeOptionsSpecification: ikeOptionsSpecification, ipsecOptionsSpecification: ipsecOptionsSpecification), region: region, logger: logger, on: eventLoop)
    }
}
