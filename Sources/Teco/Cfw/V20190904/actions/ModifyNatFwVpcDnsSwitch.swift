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

extension Cfw {
    /// ModifyNatFwVpcDnsSwitch请求参数结构体
    public struct ModifyNatFwVpcDnsSwitchRequest: TCRequest {
        /// nat 防火墙 id
        public let natFwInsId: String

        /// DNS 开关切换列表
        public let dnsVpcSwitchLst: [DnsVpcSwitch]

        public init(natFwInsId: String, dnsVpcSwitchLst: [DnsVpcSwitch]) {
            self.natFwInsId = natFwInsId
            self.dnsVpcSwitchLst = dnsVpcSwitchLst
        }

        enum CodingKeys: String, CodingKey {
            case natFwInsId = "NatFwInsId"
            case dnsVpcSwitchLst = "DnsVpcSwitchLst"
        }
    }

    /// ModifyNatFwVpcDnsSwitch返回参数结构体
    public struct ModifyNatFwVpcDnsSwitchResponse: TCResponse {
        /// 修改成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case returnMsg = "ReturnMsg"
            case requestId = "RequestId"
        }
    }

    /// nat 防火墙VPC DNS 开关切换
    @inlinable
    public func modifyNatFwVpcDnsSwitch(_ input: ModifyNatFwVpcDnsSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatFwVpcDnsSwitchResponse> {
        self.client.execute(action: "ModifyNatFwVpcDnsSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// nat 防火墙VPC DNS 开关切换
    @inlinable
    public func modifyNatFwVpcDnsSwitch(_ input: ModifyNatFwVpcDnsSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatFwVpcDnsSwitchResponse {
        try await self.client.execute(action: "ModifyNatFwVpcDnsSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// nat 防火墙VPC DNS 开关切换
    @inlinable
    public func modifyNatFwVpcDnsSwitch(natFwInsId: String, dnsVpcSwitchLst: [DnsVpcSwitch], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatFwVpcDnsSwitchResponse> {
        self.modifyNatFwVpcDnsSwitch(.init(natFwInsId: natFwInsId, dnsVpcSwitchLst: dnsVpcSwitchLst), region: region, logger: logger, on: eventLoop)
    }

    /// nat 防火墙VPC DNS 开关切换
    @inlinable
    public func modifyNatFwVpcDnsSwitch(natFwInsId: String, dnsVpcSwitchLst: [DnsVpcSwitch], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatFwVpcDnsSwitchResponse {
        try await self.modifyNatFwVpcDnsSwitch(.init(natFwInsId: natFwInsId, dnsVpcSwitchLst: dnsVpcSwitchLst), region: region, logger: logger, on: eventLoop)
    }
}
