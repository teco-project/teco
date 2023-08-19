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

extension Gpm {
    /// CreateRule请求参数结构体
    public struct CreateRuleRequest: TCRequest {
        /// 规则名称，[a-zA-Z0-9-\.]* 长度128
        public let ruleName: String

        /// 规则脚本，长度65535
        public let ruleScript: String

        /// 规则描述，最长1024
        public let ruleDesc: String?

        /// 标签，key-value结构的数组，最多关联50组标签
        public let tags: [StringKV]?

        public init(ruleName: String, ruleScript: String, ruleDesc: String? = nil, tags: [StringKV]? = nil) {
            self.ruleName = ruleName
            self.ruleScript = ruleScript
            self.ruleDesc = ruleDesc
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
            case ruleScript = "RuleScript"
            case ruleDesc = "RuleDesc"
            case tags = "Tags"
        }
    }

    /// CreateRule返回参数结构体
    public struct CreateRuleResponse: TCResponse {
        /// 规则信息
        public let ruleInfo: RuleInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleInfo = "RuleInfo"
            case requestId = "RequestId"
        }
    }

    /// 创建规则
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func createRule(_ input: CreateRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleResponse> {
        fatalError("CreateRule is no longer available.")
    }

    /// 创建规则
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func createRule(_ input: CreateRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleResponse {
        fatalError("CreateRule is no longer available.")
    }

    /// 创建规则
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func createRule(ruleName: String, ruleScript: String, ruleDesc: String? = nil, tags: [StringKV]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleResponse> {
        fatalError("CreateRule is no longer available.")
    }

    /// 创建规则
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func createRule(ruleName: String, ruleScript: String, ruleDesc: String? = nil, tags: [StringKV]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleResponse {
        fatalError("CreateRule is no longer available.")
    }
}
