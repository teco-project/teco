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

extension Antiddos {
    /// ModifyCCPrecisionPolicy请求参数结构体
    public struct ModifyCCPrecisionPolicyRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 策略Id
        public let policyId: String

        /// 策略方式。可取值：alg、drop。alg指返回验证码方式验证，drop表示该访问丢弃。
        public let policyAction: String

        /// 策略记录
        public let policyList: [CCPrecisionPlyRecord]

        public init(instanceId: String, policyId: String, policyAction: String, policyList: [CCPrecisionPlyRecord]) {
            self.instanceId = instanceId
            self.policyId = policyId
            self.policyAction = policyAction
            self.policyList = policyList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case policyId = "PolicyId"
            case policyAction = "PolicyAction"
            case policyList = "PolicyList"
        }
    }

    /// ModifyCCPrecisionPolicy返回参数结构体
    public struct ModifyCCPrecisionPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改CC精准防护策略
    @inlinable @discardableResult
    public func modifyCCPrecisionPolicy(_ input: ModifyCCPrecisionPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCPrecisionPolicyResponse> {
        self.client.execute(action: "ModifyCCPrecisionPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CC精准防护策略
    @inlinable @discardableResult
    public func modifyCCPrecisionPolicy(_ input: ModifyCCPrecisionPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCPrecisionPolicyResponse {
        try await self.client.execute(action: "ModifyCCPrecisionPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CC精准防护策略
    @inlinable @discardableResult
    public func modifyCCPrecisionPolicy(instanceId: String, policyId: String, policyAction: String, policyList: [CCPrecisionPlyRecord], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCPrecisionPolicyResponse> {
        self.modifyCCPrecisionPolicy(.init(instanceId: instanceId, policyId: policyId, policyAction: policyAction, policyList: policyList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改CC精准防护策略
    @inlinable @discardableResult
    public func modifyCCPrecisionPolicy(instanceId: String, policyId: String, policyAction: String, policyList: [CCPrecisionPlyRecord], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCPrecisionPolicyResponse {
        try await self.modifyCCPrecisionPolicy(.init(instanceId: instanceId, policyId: policyId, policyAction: policyAction, policyList: policyList), region: region, logger: logger, on: eventLoop)
    }
}
