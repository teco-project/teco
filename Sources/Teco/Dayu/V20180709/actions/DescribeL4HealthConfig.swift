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

extension Dayu {
    /// DescribeL4HealthConfig请求参数结构体
    public struct DescribeL4HealthConfigRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 规则ID数组，当导出所有规则的健康检查配置则不填或填空数组；
        public let ruleIdList: [String]?

        public init(business: String, id: String, ruleIdList: [String]? = nil) {
            self.business = business
            self.id = id
            self.ruleIdList = ruleIdList
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ruleIdList = "RuleIdList"
        }
    }

    /// DescribeL4HealthConfig返回参数结构体
    public struct DescribeL4HealthConfigResponse: TCResponse {
        /// 四层健康检查配置数组
        public let healthConfig: [L4HealthConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case healthConfig = "HealthConfig"
            case requestId = "RequestId"
        }
    }

    /// 导出四层健康检查配置
    @inlinable
    public func describeL4HealthConfig(_ input: DescribeL4HealthConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL4HealthConfigResponse> {
        self.client.execute(action: "DescribeL4HealthConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出四层健康检查配置
    @inlinable
    public func describeL4HealthConfig(_ input: DescribeL4HealthConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL4HealthConfigResponse {
        try await self.client.execute(action: "DescribeL4HealthConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出四层健康检查配置
    @inlinable
    public func describeL4HealthConfig(business: String, id: String, ruleIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL4HealthConfigResponse> {
        self.describeL4HealthConfig(.init(business: business, id: id, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 导出四层健康检查配置
    @inlinable
    public func describeL4HealthConfig(business: String, id: String, ruleIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL4HealthConfigResponse {
        try await self.describeL4HealthConfig(.init(business: business, id: id, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }
}
