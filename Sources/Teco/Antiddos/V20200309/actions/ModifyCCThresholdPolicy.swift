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

extension Antiddos {
    /// ModifyCCThresholdPolicy请求参数结构体
    public struct ModifyCCThresholdPolicyRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// IP地址
        public let ip: String

        /// 域名
        public let domain: String

        /// 协议，可取值HTTP，HTTPS
        public let `protocol`: String

        /// 清洗阈值，-1表示开启“默认”模式
        public let threshold: Int64

        public init(instanceId: String, ip: String, domain: String, protocol: String, threshold: Int64) {
            self.instanceId = instanceId
            self.ip = ip
            self.domain = domain
            self.`protocol` = `protocol`
            self.threshold = threshold
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ip = "Ip"
            case domain = "Domain"
            case `protocol` = "Protocol"
            case threshold = "Threshold"
        }
    }

    /// ModifyCCThresholdPolicy返回参数结构体
    public struct ModifyCCThresholdPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改CC清洗阈值
    @inlinable @discardableResult
    public func modifyCCThresholdPolicy(_ input: ModifyCCThresholdPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCThresholdPolicyResponse> {
        self.client.execute(action: "ModifyCCThresholdPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CC清洗阈值
    @inlinable @discardableResult
    public func modifyCCThresholdPolicy(_ input: ModifyCCThresholdPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCThresholdPolicyResponse {
        try await self.client.execute(action: "ModifyCCThresholdPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CC清洗阈值
    @inlinable @discardableResult
    public func modifyCCThresholdPolicy(instanceId: String, ip: String, domain: String, protocol: String, threshold: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCThresholdPolicyResponse> {
        self.modifyCCThresholdPolicy(ModifyCCThresholdPolicyRequest(instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`, threshold: threshold), region: region, logger: logger, on: eventLoop)
    }

    /// 修改CC清洗阈值
    @inlinable @discardableResult
    public func modifyCCThresholdPolicy(instanceId: String, ip: String, domain: String, protocol: String, threshold: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCThresholdPolicyResponse {
        try await self.modifyCCThresholdPolicy(ModifyCCThresholdPolicyRequest(instanceId: instanceId, ip: ip, domain: domain, protocol: `protocol`, threshold: threshold), region: region, logger: logger, on: eventLoop)
    }
}
