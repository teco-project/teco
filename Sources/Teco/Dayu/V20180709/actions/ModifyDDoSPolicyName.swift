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

extension Dayu {
    /// ModifyDDoSPolicyName请求参数结构体
    public struct ModifyDDoSPolicyNameRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 策略ID
        public let policyId: String

        /// 策略名称
        public let name: String

        public init(business: String, policyId: String, name: String) {
            self.business = business
            self.policyId = policyId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case policyId = "PolicyId"
            case name = "Name"
        }
    }

    /// ModifyDDoSPolicyName返回参数结构体
    public struct ModifyDDoSPolicyNameResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 修改DDoS高级策略名称
    @inlinable
    public func modifyDDoSPolicyName(_ input: ModifyDDoSPolicyNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSPolicyNameResponse> {
        self.client.execute(action: "ModifyDDoSPolicyName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改DDoS高级策略名称
    @inlinable
    public func modifyDDoSPolicyName(_ input: ModifyDDoSPolicyNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSPolicyNameResponse {
        try await self.client.execute(action: "ModifyDDoSPolicyName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改DDoS高级策略名称
    @inlinable
    public func modifyDDoSPolicyName(business: String, policyId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSPolicyNameResponse> {
        let input = ModifyDDoSPolicyNameRequest(business: business, policyId: policyId, name: name)
        return self.client.execute(action: "ModifyDDoSPolicyName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改DDoS高级策略名称
    @inlinable
    public func modifyDDoSPolicyName(business: String, policyId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSPolicyNameResponse {
        let input = ModifyDDoSPolicyNameRequest(business: business, policyId: policyId, name: name)
        return try await self.client.execute(action: "ModifyDDoSPolicyName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
