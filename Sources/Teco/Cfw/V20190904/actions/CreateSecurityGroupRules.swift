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

extension Cfw {
    /// CreateSecurityGroupRules请求参数结构体
    public struct CreateSecurityGroupRulesRequest: TCRequest {
        /// 添加的企业安全组规则数据
        public let data: [SecurityGroupListData]

        /// 方向，0：出站，1：入站，默认1
        public let direction: UInt64

        /// 0：后插，1：前插，2：中插，默认0
        public let type: UInt64?

        /// 添加后是否启用规则，0：不启用，1：启用，默认1
        public let enable: UInt64?

        public init(data: [SecurityGroupListData], direction: UInt64, type: UInt64? = nil, enable: UInt64? = nil) {
            self.data = data
            self.direction = direction
            self.type = type
            self.enable = enable
        }

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case direction = "Direction"
            case type = "Type"
            case enable = "Enable"
        }
    }

    /// CreateSecurityGroupRules返回参数结构体
    public struct CreateSecurityGroupRulesResponse: TCResponse {
        /// 状态值，0：添加成功，非0：添加失败
        public let status: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 创建企业安全组规则
    @inlinable
    public func createSecurityGroupRules(_ input: CreateSecurityGroupRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityGroupRulesResponse> {
        self.client.execute(action: "CreateSecurityGroupRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建企业安全组规则
    @inlinable
    public func createSecurityGroupRules(_ input: CreateSecurityGroupRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityGroupRulesResponse {
        try await self.client.execute(action: "CreateSecurityGroupRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建企业安全组规则
    @inlinable
    public func createSecurityGroupRules(data: [SecurityGroupListData], direction: UInt64, type: UInt64? = nil, enable: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityGroupRulesResponse> {
        self.createSecurityGroupRules(.init(data: data, direction: direction, type: type, enable: enable), region: region, logger: logger, on: eventLoop)
    }

    /// 创建企业安全组规则
    @inlinable
    public func createSecurityGroupRules(data: [SecurityGroupListData], direction: UInt64, type: UInt64? = nil, enable: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityGroupRulesResponse {
        try await self.createSecurityGroupRules(.init(data: data, direction: direction, type: type, enable: enable), region: region, logger: logger, on: eventLoop)
    }
}
