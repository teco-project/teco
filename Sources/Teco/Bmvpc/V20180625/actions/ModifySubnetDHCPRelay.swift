//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Bmvpc {
    /// ModifySubnetDHCPRelay请求参数结构体
    public struct ModifySubnetDHCPRelayRequest: TCRequestModel {
        /// 私有网络ID
        public let vpcId: String

        /// 子网ID
        public let subnetId: String

        /// 是否开启DHCP Relay
        public let enableDHCP: Bool

        /// DHCP服务器IP
        public let serverIps: [String]?

        /// 预留IP个数
        public let reservedIpCount: UInt64?

        public init(vpcId: String, subnetId: String, enableDHCP: Bool, serverIps: [String]? = nil, reservedIpCount: UInt64? = nil) {
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.enableDHCP = enableDHCP
            self.serverIps = serverIps
            self.reservedIpCount = reservedIpCount
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case enableDHCP = "EnableDHCP"
            case serverIps = "ServerIps"
            case reservedIpCount = "ReservedIpCount"
        }
    }

    /// ModifySubnetDHCPRelay返回参数结构体
    public struct ModifySubnetDHCPRelayResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改子网DHCP Relay属性
    @inlinable @discardableResult
    public func modifySubnetDHCPRelay(_ input: ModifySubnetDHCPRelayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubnetDHCPRelayResponse> {
        self.client.execute(action: "ModifySubnetDHCPRelay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改子网DHCP Relay属性
    @inlinable @discardableResult
    public func modifySubnetDHCPRelay(_ input: ModifySubnetDHCPRelayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubnetDHCPRelayResponse {
        try await self.client.execute(action: "ModifySubnetDHCPRelay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改子网DHCP Relay属性
    @inlinable @discardableResult
    public func modifySubnetDHCPRelay(vpcId: String, subnetId: String, enableDHCP: Bool, serverIps: [String]? = nil, reservedIpCount: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubnetDHCPRelayResponse> {
        self.modifySubnetDHCPRelay(ModifySubnetDHCPRelayRequest(vpcId: vpcId, subnetId: subnetId, enableDHCP: enableDHCP, serverIps: serverIps, reservedIpCount: reservedIpCount), region: region, logger: logger, on: eventLoop)
    }

    /// 修改子网DHCP Relay属性
    @inlinable @discardableResult
    public func modifySubnetDHCPRelay(vpcId: String, subnetId: String, enableDHCP: Bool, serverIps: [String]? = nil, reservedIpCount: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubnetDHCPRelayResponse {
        try await self.modifySubnetDHCPRelay(ModifySubnetDHCPRelayRequest(vpcId: vpcId, subnetId: subnetId, enableDHCP: enableDHCP, serverIps: serverIps, reservedIpCount: reservedIpCount), region: region, logger: logger, on: eventLoop)
    }
}
