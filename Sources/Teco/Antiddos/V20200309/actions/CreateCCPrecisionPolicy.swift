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
    /// CreateCCPrecisionPolicy请求参数结构体
    public struct CreateCCPrecisionPolicyRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// IP值
        public let ip: String

        /// 协议， 可取值HTTP，HTTPS
        public let `protocol`: String

        /// 域名
        public let domain: String

        /// 策略方式，可取值alg表示验证码，drop表示丢弃
        public let policyAction: String

        /// 策略记录
        public let policyList: [CCPrecisionPlyRecord]

        public init(instanceId: String, ip: String, protocol: String, domain: String, policyAction: String, policyList: [CCPrecisionPlyRecord]) {
            self.instanceId = instanceId
            self.ip = ip
            self.`protocol` = `protocol`
            self.domain = domain
            self.policyAction = policyAction
            self.policyList = policyList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ip = "Ip"
            case `protocol` = "Protocol"
            case domain = "Domain"
            case policyAction = "PolicyAction"
            case policyList = "PolicyList"
        }
    }

    /// CreateCCPrecisionPolicy返回参数结构体
    public struct CreateCCPrecisionPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增CC精准防护策略
    @inlinable @discardableResult
    public func createCCPrecisionPolicy(_ input: CreateCCPrecisionPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCCPrecisionPolicyResponse> {
        self.client.execute(action: "CreateCCPrecisionPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增CC精准防护策略
    @inlinable @discardableResult
    public func createCCPrecisionPolicy(_ input: CreateCCPrecisionPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCCPrecisionPolicyResponse {
        try await self.client.execute(action: "CreateCCPrecisionPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增CC精准防护策略
    @inlinable @discardableResult
    public func createCCPrecisionPolicy(instanceId: String, ip: String, protocol: String, domain: String, policyAction: String, policyList: [CCPrecisionPlyRecord], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCCPrecisionPolicyResponse> {
        self.createCCPrecisionPolicy(CreateCCPrecisionPolicyRequest(instanceId: instanceId, ip: ip, protocol: `protocol`, domain: domain, policyAction: policyAction, policyList: policyList), region: region, logger: logger, on: eventLoop)
    }

    /// 新增CC精准防护策略
    @inlinable @discardableResult
    public func createCCPrecisionPolicy(instanceId: String, ip: String, protocol: String, domain: String, policyAction: String, policyList: [CCPrecisionPlyRecord], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCCPrecisionPolicyResponse {
        try await self.createCCPrecisionPolicy(CreateCCPrecisionPolicyRequest(instanceId: instanceId, ip: ip, protocol: `protocol`, domain: domain, policyAction: policyAction, policyList: policyList), region: region, logger: logger, on: eventLoop)
    }
}
