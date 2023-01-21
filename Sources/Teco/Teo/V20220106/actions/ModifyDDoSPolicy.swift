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

extension Teo {
    /// ModifyDDoSPolicy请求参数结构体
    public struct ModifyDDoSPolicyRequest: TCRequestModel {
        /// 策略id。
        public let policyId: Int64

        /// 站点id。
        public let zoneId: String

        /// DDoS防护配置详情。
        public let ddosRule: DdosRule?

        public init(policyId: Int64, zoneId: String, ddosRule: DdosRule? = nil) {
            self.policyId = policyId
            self.zoneId = zoneId
            self.ddosRule = ddosRule
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case zoneId = "ZoneId"
            case ddosRule = "DdosRule"
        }
    }

    /// ModifyDDoSPolicy返回参数结构体
    public struct ModifyDDoSPolicyResponse: TCResponseModel {
        /// 策略id。
        public let policyId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case requestId = "RequestId"
        }
    }

    /// 修改DDoS防护分区配置
    @inlinable
    public func modifyDDoSPolicy(_ input: ModifyDDoSPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSPolicyResponse> {
        self.client.execute(action: "ModifyDDoSPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改DDoS防护分区配置
    @inlinable
    public func modifyDDoSPolicy(_ input: ModifyDDoSPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSPolicyResponse {
        try await self.client.execute(action: "ModifyDDoSPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改DDoS防护分区配置
    @inlinable
    public func modifyDDoSPolicy(policyId: Int64, zoneId: String, ddosRule: DdosRule? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSPolicyResponse> {
        self.modifyDDoSPolicy(ModifyDDoSPolicyRequest(policyId: policyId, zoneId: zoneId, ddosRule: ddosRule), region: region, logger: logger, on: eventLoop)
    }

    /// 修改DDoS防护分区配置
    @inlinable
    public func modifyDDoSPolicy(policyId: Int64, zoneId: String, ddosRule: DdosRule? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSPolicyResponse {
        try await self.modifyDDoSPolicy(ModifyDDoSPolicyRequest(policyId: policyId, zoneId: zoneId, ddosRule: ddosRule), region: region, logger: logger, on: eventLoop)
    }
}
