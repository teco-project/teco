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
    /// DescribeSecurityPolicy请求参数结构体
    public struct DescribeSecurityPolicyRequest: TCRequestModel {
        /// 一级域名
        public let zoneId: String

        /// 二级域名
        public let entity: String

        public init(zoneId: String, entity: String) {
            self.zoneId = zoneId
            self.entity = entity
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case entity = "Entity"
        }
    }

    /// DescribeSecurityPolicy返回参数结构体
    public struct DescribeSecurityPolicyResponse: TCResponseModel {
        /// 用户id
        public let appId: Int64

        /// 一级域名
        public let zoneId: String

        /// 二级域名
        public let entity: String

        /// 安全配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let config: SecurityConfig?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appId = "AppId"
            case zoneId = "ZoneId"
            case entity = "Entity"
            case config = "Config"
            case requestId = "RequestId"
        }
    }

    /// 查询安全防护配置详情
    @inlinable
    public func describeSecurityPolicy(_ input: DescribeSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityPolicyResponse> {
        self.client.execute(action: "DescribeSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全防护配置详情
    @inlinable
    public func describeSecurityPolicy(_ input: DescribeSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPolicyResponse {
        try await self.client.execute(action: "DescribeSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全防护配置详情
    @inlinable
    public func describeSecurityPolicy(zoneId: String, entity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityPolicyResponse> {
        self.describeSecurityPolicy(.init(zoneId: zoneId, entity: entity), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全防护配置详情
    @inlinable
    public func describeSecurityPolicy(zoneId: String, entity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPolicyResponse {
        try await self.describeSecurityPolicy(.init(zoneId: zoneId, entity: entity), region: region, logger: logger, on: eventLoop)
    }
}
