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
    /// DeleteCCLevelPolicy请求参数结构体
    public struct DeleteCCLevelPolicyRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 配置策略的IP
        public let ip: String

        /// 域名
        public let domain: String

        /// 协议，可取值http
        public let `protocol`: String

        public init(instanceId: String, ip: String, domain: String, protocol: String) {
            self.instanceId = instanceId
            self.ip = ip
            self.domain = domain
            self.`protocol` = `protocol`
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ip = "Ip"
            case domain = "Domain"
            case `protocol` = "Protocol"
        }
    }

    /// DeleteCCLevelPolicy返回参数结构体
    public struct DeleteCCLevelPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除CC分级策略
    @inlinable @discardableResult
    public func deleteCCLevelPolicy(_ input: DeleteCCLevelPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCCLevelPolicyResponse> {
        self.client.execute(action: "DeleteCCLevelPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除CC分级策略
    @inlinable @discardableResult
    public func deleteCCLevelPolicy(_ input: DeleteCCLevelPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCCLevelPolicyResponse {
        try await self.client.execute(action: "DeleteCCLevelPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除CC分级策略
    @inlinable @discardableResult
    public func deleteCCLevelPolicy(instanceId: String, ip: String, domain: String, protocol: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCCLevelPolicyResponse> {
        self.deleteCCLevelPolicy(DeleteCCLevelPolicyRequest(instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }

    /// 删除CC分级策略
    @inlinable @discardableResult
    public func deleteCCLevelPolicy(instanceId: String, ip: String, domain: String, protocol: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCCLevelPolicyResponse {
        try await self.deleteCCLevelPolicy(DeleteCCLevelPolicyRequest(instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }
}
