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

extension Cwp {
    /// CheckBashRuleParams请求参数结构体
    public struct CheckBashRuleParamsRequest: TCRequestModel {
        /// 校验内容 Name或Rule ，两个都要校验时逗号分割
        public let checkField: String

        /// 在事件列表中新增白名时需要提交事件ID
        public let eventId: UInt64?

        /// 填入的规则名称
        public let name: String?

        /// 用户填入的正则表达式："正则表达式" 需与 "提交EventId对应的命令内容" 相匹配
        public let rule: String?

        /// 编辑时传的规则id
        public let id: UInt64?

        public init(checkField: String, eventId: UInt64? = nil, name: String? = nil, rule: String? = nil, id: UInt64? = nil) {
            self.checkField = checkField
            self.eventId = eventId
            self.name = name
            self.rule = rule
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case checkField = "CheckField"
            case eventId = "EventId"
            case name = "Name"
            case rule = "Rule"
            case id = "Id"
        }
    }

    /// CheckBashRuleParams返回参数结构体
    public struct CheckBashRuleParamsResponse: TCResponseModel {
        /// 0=校验通过  1=规则名称校验不通过 2=正则表达式校验不通过
        public let errCode: UInt64

        /// 校验信息
        public let errMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMsg = "ErrMsg"
            case requestId = "RequestId"
        }
    }

    /// 校验高危命新增用户规则参数
    ///
    /// 校验高危命令用户规则新增和编辑时的参数。
    @inlinable
    public func checkBashRuleParams(_ input: CheckBashRuleParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckBashRuleParamsResponse> {
        self.client.execute(action: "CheckBashRuleParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 校验高危命新增用户规则参数
    ///
    /// 校验高危命令用户规则新增和编辑时的参数。
    @inlinable
    public func checkBashRuleParams(_ input: CheckBashRuleParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckBashRuleParamsResponse {
        try await self.client.execute(action: "CheckBashRuleParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 校验高危命新增用户规则参数
    ///
    /// 校验高危命令用户规则新增和编辑时的参数。
    @inlinable
    public func checkBashRuleParams(checkField: String, eventId: UInt64? = nil, name: String? = nil, rule: String? = nil, id: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckBashRuleParamsResponse> {
        self.checkBashRuleParams(CheckBashRuleParamsRequest(checkField: checkField, eventId: eventId, name: name, rule: rule, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 校验高危命新增用户规则参数
    ///
    /// 校验高危命令用户规则新增和编辑时的参数。
    @inlinable
    public func checkBashRuleParams(checkField: String, eventId: UInt64? = nil, name: String? = nil, rule: String? = nil, id: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckBashRuleParamsResponse {
        try await self.checkBashRuleParams(CheckBashRuleParamsRequest(checkField: checkField, eventId: eventId, name: name, rule: rule, id: id), region: region, logger: logger, on: eventLoop)
    }
}
