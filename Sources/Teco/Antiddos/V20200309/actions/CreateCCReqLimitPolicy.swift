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

extension Antiddos {
    /// CreateCCReqLimitPolicy请求参数结构体
    public struct CreateCCReqLimitPolicyRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// IP值
        public let ip: String

        /// 协议，可取值HTTP，HTTPS
        public let `protocol`: String

        /// 域名
        public let domain: String

        /// 策略项
        public let policy: CCReqLimitPolicyRecord

        /// 是否为兜底频控
        public let isGlobal: Int64?

        public init(instanceId: String, ip: String, protocol: String, domain: String, policy: CCReqLimitPolicyRecord, isGlobal: Int64? = nil) {
            self.instanceId = instanceId
            self.ip = ip
            self.protocol = `protocol`
            self.domain = domain
            self.policy = policy
            self.isGlobal = isGlobal
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ip = "Ip"
            case `protocol` = "Protocol"
            case domain = "Domain"
            case policy = "Policy"
            case isGlobal = "IsGlobal"
        }
    }

    /// CreateCCReqLimitPolicy返回参数结构体
    public struct CreateCCReqLimitPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增CC频率限制策略
    @inlinable @discardableResult
    public func createCCReqLimitPolicy(_ input: CreateCCReqLimitPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCCReqLimitPolicyResponse> {
        self.client.execute(action: "CreateCCReqLimitPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增CC频率限制策略
    @inlinable @discardableResult
    public func createCCReqLimitPolicy(_ input: CreateCCReqLimitPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCCReqLimitPolicyResponse {
        try await self.client.execute(action: "CreateCCReqLimitPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增CC频率限制策略
    @inlinable @discardableResult
    public func createCCReqLimitPolicy(instanceId: String, ip: String, protocol: String, domain: String, policy: CCReqLimitPolicyRecord, isGlobal: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCCReqLimitPolicyResponse> {
        self.createCCReqLimitPolicy(.init(instanceId: instanceId, ip: ip, protocol: `protocol`, domain: domain, policy: policy, isGlobal: isGlobal), region: region, logger: logger, on: eventLoop)
    }

    /// 新增CC频率限制策略
    @inlinable @discardableResult
    public func createCCReqLimitPolicy(instanceId: String, ip: String, protocol: String, domain: String, policy: CCReqLimitPolicyRecord, isGlobal: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCCReqLimitPolicyResponse {
        try await self.createCCReqLimitPolicy(.init(instanceId: instanceId, ip: ip, protocol: `protocol`, domain: domain, policy: policy, isGlobal: isGlobal), region: region, logger: logger, on: eventLoop)
    }
}
