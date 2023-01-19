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

extension Tcss {
    /// AddEditAccessControlRule请求参数结构体
    public struct AddEditAccessControlRuleRequest: TCRequestModel {
        /// 增加策略信息，策略id为空，编辑策略是id不能为空
        public let ruleInfo: AccessControlRuleInfo

        /// 仅在白名单时候使用
        public let eventId: String?

        public init(ruleInfo: AccessControlRuleInfo, eventId: String? = nil) {
            self.ruleInfo = ruleInfo
            self.eventId = eventId
        }

        enum CodingKeys: String, CodingKey {
            case ruleInfo = "RuleInfo"
            case eventId = "EventId"
        }
    }

    /// AddEditAccessControlRule返回参数结构体
    public struct AddEditAccessControlRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加编辑运行访问控制策略
    ///
    /// 添加编辑运行时访问控制策略
    @inlinable
    public func addEditAccessControlRule(_ input: AddEditAccessControlRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddEditAccessControlRuleResponse> {
        self.client.execute(action: "AddEditAccessControlRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加编辑运行访问控制策略
    ///
    /// 添加编辑运行时访问控制策略
    @inlinable
    public func addEditAccessControlRule(_ input: AddEditAccessControlRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEditAccessControlRuleResponse {
        try await self.client.execute(action: "AddEditAccessControlRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加编辑运行访问控制策略
    ///
    /// 添加编辑运行时访问控制策略
    @inlinable
    public func addEditAccessControlRule(ruleInfo: AccessControlRuleInfo, eventId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddEditAccessControlRuleResponse> {
        self.addEditAccessControlRule(AddEditAccessControlRuleRequest(ruleInfo: ruleInfo, eventId: eventId), region: region, logger: logger, on: eventLoop)
    }

    /// 添加编辑运行访问控制策略
    ///
    /// 添加编辑运行时访问控制策略
    @inlinable
    public func addEditAccessControlRule(ruleInfo: AccessControlRuleInfo, eventId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEditAccessControlRuleResponse {
        try await self.addEditAccessControlRule(AddEditAccessControlRuleRequest(ruleInfo: ruleInfo, eventId: eventId), region: region, logger: logger, on: eventLoop)
    }
}
