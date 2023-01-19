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

extension Gpm {
    /// DeleteRule请求参数结构体
    public struct DeleteRuleRequest: TCRequestModel {
        /// 规则code
        public let ruleCode: String

        public init(ruleCode: String) {
            self.ruleCode = ruleCode
        }

        enum CodingKeys: String, CodingKey {
            case ruleCode = "RuleCode"
        }
    }

    /// DeleteRule返回参数结构体
    public struct DeleteRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除规则
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 删除规则
    @inlinable
    public func deleteRule(_ input: DeleteRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleResponse> {
        self.client.execute(action: "DeleteRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除规则
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 删除规则
    @inlinable
    public func deleteRule(_ input: DeleteRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        try await self.client.execute(action: "DeleteRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除规则
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 删除规则
    @inlinable
    public func deleteRule(ruleCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleResponse> {
        self.deleteRule(DeleteRuleRequest(ruleCode: ruleCode), region: region, logger: logger, on: eventLoop)
    }

    /// 删除规则
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 删除规则
    @inlinable
    public func deleteRule(ruleCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        try await self.deleteRule(DeleteRuleRequest(ruleCode: ruleCode), region: region, logger: logger, on: eventLoop)
    }
}
