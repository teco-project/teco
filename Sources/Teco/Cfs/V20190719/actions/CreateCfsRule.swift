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

extension Cfs {
    /// CreateCfsRule请求参数结构体
    public struct CreateCfsRuleRequest: TCRequest {
        /// 权限组 ID
        public let pGroupId: String

        /// 可以填写单个 IP 或者单个网段，例如 10.1.10.11 或者 10.10.1.0/24。默认来访地址为*表示允许所有。同时需要注意，此处需填写 CVM 的内网 IP。
        public let authClientIp: String

        /// 规则优先级，参数范围1-100。 其中 1 为最高，100为最低
        public let priority: Int64

        /// 读写权限, 值为 RO、RW；其中 RO 为只读，RW 为读写，不填默认为只读
        public let rwPermission: String?

        /// 用户权限，值为 all_squash、no_all_squash、root_squash、no_root_squash。其中all_squash为所有访问用户都会被映射为匿名用户或用户组；no_all_squash为访问用户会先与本机用户匹配，匹配失败后再映射为匿名用户或用户组；root_squash为将来访的root用户映射为匿名用户或用户组；no_root_squash为来访的root用户保持root帐号权限。不填默认为root_squash。
        public let userPermission: String?

        public init(pGroupId: String, authClientIp: String, priority: Int64, rwPermission: String? = nil, userPermission: String? = nil) {
            self.pGroupId = pGroupId
            self.authClientIp = authClientIp
            self.priority = priority
            self.rwPermission = rwPermission
            self.userPermission = userPermission
        }

        enum CodingKeys: String, CodingKey {
            case pGroupId = "PGroupId"
            case authClientIp = "AuthClientIp"
            case priority = "Priority"
            case rwPermission = "RWPermission"
            case userPermission = "UserPermission"
        }
    }

    /// CreateCfsRule返回参数结构体
    public struct CreateCfsRuleResponse: TCResponse {
        /// 规则 ID
        public let ruleId: String

        /// 权限组 ID
        public let pGroupId: String

        /// 客户端 IP
        public let authClientIp: String

        /// 读写权限
        public let rwPermission: String

        /// 用户权限
        public let userPermission: String

        /// 优先级
        public let priority: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case pGroupId = "PGroupId"
            case authClientIp = "AuthClientIp"
            case rwPermission = "RWPermission"
            case userPermission = "UserPermission"
            case priority = "Priority"
            case requestId = "RequestId"
        }
    }

    /// 创建权限组规则
    ///
    /// 本接口（CreateCfsRule）用于创建权限组规则。
    @inlinable
    public func createCfsRule(_ input: CreateCfsRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCfsRuleResponse> {
        self.client.execute(action: "CreateCfsRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建权限组规则
    ///
    /// 本接口（CreateCfsRule）用于创建权限组规则。
    @inlinable
    public func createCfsRule(_ input: CreateCfsRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCfsRuleResponse {
        try await self.client.execute(action: "CreateCfsRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建权限组规则
    ///
    /// 本接口（CreateCfsRule）用于创建权限组规则。
    @inlinable
    public func createCfsRule(pGroupId: String, authClientIp: String, priority: Int64, rwPermission: String? = nil, userPermission: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCfsRuleResponse> {
        self.createCfsRule(.init(pGroupId: pGroupId, authClientIp: authClientIp, priority: priority, rwPermission: rwPermission, userPermission: userPermission), region: region, logger: logger, on: eventLoop)
    }

    /// 创建权限组规则
    ///
    /// 本接口（CreateCfsRule）用于创建权限组规则。
    @inlinable
    public func createCfsRule(pGroupId: String, authClientIp: String, priority: Int64, rwPermission: String? = nil, userPermission: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCfsRuleResponse {
        try await self.createCfsRule(.init(pGroupId: pGroupId, authClientIp: authClientIp, priority: priority, rwPermission: rwPermission, userPermission: userPermission), region: region, logger: logger, on: eventLoop)
    }
}
