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

extension Teo {
    /// DescribeDDoSPolicy请求参数结构体
    public struct DescribeDDoSPolicyRequest: TCRequestModel {
        /// 策略组id
        public let policyId: Int64

        /// 一级域名zone
        public let zoneId: String

        public init(policyId: Int64, zoneId: String) {
            self.policyId = policyId
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case zoneId = "ZoneId"
        }
    }

    /// DescribeDDoSPolicy返回参数结构体
    public struct DescribeDDoSPolicyResponse: TCResponseModel {
        /// DDoS防护配置
        public let ddosRule: DdosRule

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ddosRule = "DdosRule"
            case requestId = "RequestId"
        }
    }

    /// 查询DDoS防护配置详情
    @inlinable
    public func describeDDoSPolicy(_ input: DescribeDDoSPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSPolicyResponse> {
        self.client.execute(action: "DescribeDDoSPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DDoS防护配置详情
    @inlinable
    public func describeDDoSPolicy(_ input: DescribeDDoSPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSPolicyResponse {
        try await self.client.execute(action: "DescribeDDoSPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DDoS防护配置详情
    @inlinable
    public func describeDDoSPolicy(policyId: Int64, zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSPolicyResponse> {
        self.describeDDoSPolicy(DescribeDDoSPolicyRequest(policyId: policyId, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DDoS防护配置详情
    @inlinable
    public func describeDDoSPolicy(policyId: Int64, zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSPolicyResponse {
        try await self.describeDDoSPolicy(DescribeDDoSPolicyRequest(policyId: policyId, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
