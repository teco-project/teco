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

extension Chdfs {
    /// DescribeAccessRules请求参数结构体
    public struct DescribeAccessRulesRequest: TCRequest {
        /// 权限组ID
        public let accessGroupId: String

        public init(accessGroupId: String) {
            self.accessGroupId = accessGroupId
        }

        enum CodingKeys: String, CodingKey {
            case accessGroupId = "AccessGroupId"
        }
    }

    /// DescribeAccessRules返回参数结构体
    public struct DescribeAccessRulesResponse: TCResponse {
        /// 权限规则列表
        public let accessRules: [AccessRule]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessRules = "AccessRules"
            case requestId = "RequestId"
        }
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @inlinable
    public func describeAccessRules(_ input: DescribeAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessRulesResponse> {
        self.client.execute(action: "DescribeAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @inlinable
    public func describeAccessRules(_ input: DescribeAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessRulesResponse {
        try await self.client.execute(action: "DescribeAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @inlinable
    public func describeAccessRules(accessGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessRulesResponse> {
        self.describeAccessRules(.init(accessGroupId: accessGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @inlinable
    public func describeAccessRules(accessGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessRulesResponse {
        try await self.describeAccessRules(.init(accessGroupId: accessGroupId), region: region, logger: logger, on: eventLoop)
    }
}
