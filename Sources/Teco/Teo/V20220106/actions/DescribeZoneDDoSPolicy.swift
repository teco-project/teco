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
    /// DescribeZoneDDoSPolicy请求参数结构体
    public struct DescribeZoneDDoSPolicyRequest: TCRequestModel {
        /// 一级域名id
        public let zoneId: String?

        public init(zoneId: String? = nil) {
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
        }
    }

    /// DescribeZoneDDoSPolicy返回参数结构体
    public struct DescribeZoneDDoSPolicyResponse: TCResponseModel {
        /// 用户appid
        public let appId: Int64

        /// 防护分区
        public let shieldAreas: [ShieldArea]

        /// 所有子域名信息，包含安全加速/内容加速
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domains: [DDoSApplication]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appId = "AppId"
            case shieldAreas = "ShieldAreas"
            case domains = "Domains"
            case requestId = "RequestId"
        }
    }

    /// 查询所有DDoS防护分区
    @inlinable
    public func describeZoneDDoSPolicy(_ input: DescribeZoneDDoSPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneDDoSPolicyResponse> {
        self.client.execute(action: "DescribeZoneDDoSPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有DDoS防护分区
    @inlinable
    public func describeZoneDDoSPolicy(_ input: DescribeZoneDDoSPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneDDoSPolicyResponse {
        try await self.client.execute(action: "DescribeZoneDDoSPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有DDoS防护分区
    @inlinable
    public func describeZoneDDoSPolicy(zoneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneDDoSPolicyResponse> {
        self.describeZoneDDoSPolicy(DescribeZoneDDoSPolicyRequest(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询所有DDoS防护分区
    @inlinable
    public func describeZoneDDoSPolicy(zoneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneDDoSPolicyResponse {
        try await self.describeZoneDDoSPolicy(DescribeZoneDDoSPolicyRequest(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
