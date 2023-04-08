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

extension Teo {
    /// ModifyDDoSPolicyHost请求参数结构体
    public struct ModifyDDoSPolicyHostRequest: TCRequestModel {
        /// 站点id
        public let zoneId: String

        /// 二级域名
        public let host: String

        /// 加速开关 on-开启加速；off-关闭加速（AccelerateType：on，SecurityType：on，安全加速，未开防护增强；AccelerateType：off，SecurityType：on，安全加速，开启防护增强；AccelerateType：on，SecurityType：off，内容加速，未开防护增强）
        public let accelerateType: String

        /// 策略id
        public let policyId: Int64

        /// 安全开关 on-开启安全；off-关闭安全（AccelerateType：on，SecurityType：on，安全加速，未开防护增强；AccelerateType：off，SecurityType：on，安全加速，开启防护增强；AccelerateType：on，SecurityType：off，内容加速，未开防护增强）
        public let securityType: String?

        public init(zoneId: String, host: String, accelerateType: String, policyId: Int64, securityType: String? = nil) {
            self.zoneId = zoneId
            self.host = host
            self.accelerateType = accelerateType
            self.policyId = policyId
            self.securityType = securityType
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case host = "Host"
            case accelerateType = "AccelerateType"
            case policyId = "PolicyId"
            case securityType = "SecurityType"
        }
    }

    /// ModifyDDoSPolicyHost返回参数结构体
    public struct ModifyDDoSPolicyHostResponse: TCResponseModel {
        /// 修改成功的host
        public let host: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case host = "Host"
            case requestId = "RequestId"
        }
    }

    /// 域名DDoS高可用开关
    @inlinable
    public func modifyDDoSPolicyHost(_ input: ModifyDDoSPolicyHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSPolicyHostResponse> {
        self.client.execute(action: "ModifyDDoSPolicyHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 域名DDoS高可用开关
    @inlinable
    public func modifyDDoSPolicyHost(_ input: ModifyDDoSPolicyHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSPolicyHostResponse {
        try await self.client.execute(action: "ModifyDDoSPolicyHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 域名DDoS高可用开关
    @inlinable
    public func modifyDDoSPolicyHost(zoneId: String, host: String, accelerateType: String, policyId: Int64, securityType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSPolicyHostResponse> {
        self.modifyDDoSPolicyHost(.init(zoneId: zoneId, host: host, accelerateType: accelerateType, policyId: policyId, securityType: securityType), region: region, logger: logger, on: eventLoop)
    }

    /// 域名DDoS高可用开关
    @inlinable
    public func modifyDDoSPolicyHost(zoneId: String, host: String, accelerateType: String, policyId: Int64, securityType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSPolicyHostResponse {
        try await self.modifyDDoSPolicyHost(.init(zoneId: zoneId, host: host, accelerateType: accelerateType, policyId: policyId, securityType: securityType), region: region, logger: logger, on: eventLoop)
    }
}
