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

extension Dayu {
    /// ModifyResBindDDoSPolicy请求参数结构体
    public struct ModifyResBindDDoSPolicyRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 策略ID
        public let policyId: String

        /// 绑定或解绑，bind表示绑定策略，unbind表示解绑策略
        public let method: String

        public init(business: String, id: String, policyId: String, method: String) {
            self.business = business
            self.id = id
            self.policyId = policyId
            self.method = method
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case policyId = "PolicyId"
            case method = "Method"
        }
    }

    /// ModifyResBindDDoSPolicy返回参数结构体
    public struct ModifyResBindDDoSPolicyResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 资源绑定DDoS高级策略
    ///
    /// 资源实例绑定DDoS高级策略
    @inlinable
    public func modifyResBindDDoSPolicy(_ input: ModifyResBindDDoSPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResBindDDoSPolicyResponse> {
        self.client.execute(action: "ModifyResBindDDoSPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 资源绑定DDoS高级策略
    ///
    /// 资源实例绑定DDoS高级策略
    @inlinable
    public func modifyResBindDDoSPolicy(_ input: ModifyResBindDDoSPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResBindDDoSPolicyResponse {
        try await self.client.execute(action: "ModifyResBindDDoSPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 资源绑定DDoS高级策略
    ///
    /// 资源实例绑定DDoS高级策略
    @inlinable
    public func modifyResBindDDoSPolicy(business: String, id: String, policyId: String, method: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResBindDDoSPolicyResponse> {
        self.modifyResBindDDoSPolicy(.init(business: business, id: id, policyId: policyId, method: method), region: region, logger: logger, on: eventLoop)
    }

    /// 资源绑定DDoS高级策略
    ///
    /// 资源实例绑定DDoS高级策略
    @inlinable
    public func modifyResBindDDoSPolicy(business: String, id: String, policyId: String, method: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResBindDDoSPolicyResponse {
        try await self.modifyResBindDDoSPolicy(.init(business: business, id: id, policyId: policyId, method: method), region: region, logger: logger, on: eventLoop)
    }
}
