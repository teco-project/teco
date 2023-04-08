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

extension Teo {
    /// DescribeSecurityPortraitRules请求参数结构体
    public struct DescribeSecurityPortraitRulesRequest: TCRequestModel {
        /// 一级域名
        public let zoneId: String

        /// 子域名/应用名
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

    /// DescribeSecurityPortraitRules返回参数结构体
    public struct DescribeSecurityPortraitRulesResponse: TCResponseModel {
        /// 本次返回的规则数
        public let count: Int64

        /// Bot用户画像规则
        public let rules: [PortraitManagedRuleDetail]

        /// 总规则数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case rules = "Rules"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询Bot用户画像规则
    @inlinable
    public func describeSecurityPortraitRules(_ input: DescribeSecurityPortraitRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityPortraitRulesResponse> {
        self.client.execute(action: "DescribeSecurityPortraitRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Bot用户画像规则
    @inlinable
    public func describeSecurityPortraitRules(_ input: DescribeSecurityPortraitRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPortraitRulesResponse {
        try await self.client.execute(action: "DescribeSecurityPortraitRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Bot用户画像规则
    @inlinable
    public func describeSecurityPortraitRules(zoneId: String, entity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityPortraitRulesResponse> {
        self.describeSecurityPortraitRules(.init(zoneId: zoneId, entity: entity), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Bot用户画像规则
    @inlinable
    public func describeSecurityPortraitRules(zoneId: String, entity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPortraitRulesResponse {
        try await self.describeSecurityPortraitRules(.init(zoneId: zoneId, entity: entity), region: region, logger: logger, on: eventLoop)
    }
}
