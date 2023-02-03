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

extension Yunjing {
    /// EditBashRule请求参数结构体
    public struct EditBashRuleRequest: TCRequestModel {
        /// 规则名称
        public let name: String

        /// 危险等级(1: 高危 2:中危 3: 低危)
        public let level: UInt64

        /// 正则表达式
        public let rule: String

        /// 规则ID(新增时不填)
        public let id: UInt64?

        /// 客户端ID(IsGlobal为1时，Uuid或Hostip必填一个)
        public let uuid: String?

        /// 主机IP(IsGlobal为1时，Uuid或Hostip必填一个)
        public let hostip: String?

        /// 是否全局规则(默认否)
        public let isGlobal: UInt64?

        public init(name: String, level: UInt64, rule: String, id: UInt64? = nil, uuid: String? = nil, hostip: String? = nil, isGlobal: UInt64? = nil) {
            self.name = name
            self.level = level
            self.rule = rule
            self.id = id
            self.uuid = uuid
            self.hostip = hostip
            self.isGlobal = isGlobal
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case level = "Level"
            case rule = "Rule"
            case id = "Id"
            case uuid = "Uuid"
            case hostip = "Hostip"
            case isGlobal = "IsGlobal"
        }
    }

    /// EditBashRule返回参数结构体
    public struct EditBashRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增或修改高危命令规则
    @inlinable @discardableResult
    public func editBashRule(_ input: EditBashRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditBashRuleResponse> {
        self.client.execute(action: "EditBashRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增或修改高危命令规则
    @inlinable @discardableResult
    public func editBashRule(_ input: EditBashRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditBashRuleResponse {
        try await self.client.execute(action: "EditBashRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增或修改高危命令规则
    @inlinable @discardableResult
    public func editBashRule(name: String, level: UInt64, rule: String, id: UInt64? = nil, uuid: String? = nil, hostip: String? = nil, isGlobal: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditBashRuleResponse> {
        let input = EditBashRuleRequest(name: name, level: level, rule: rule, id: id, uuid: uuid, hostip: hostip, isGlobal: isGlobal)
        return self.client.execute(action: "EditBashRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增或修改高危命令规则
    @inlinable @discardableResult
    public func editBashRule(name: String, level: UInt64, rule: String, id: UInt64? = nil, uuid: String? = nil, hostip: String? = nil, isGlobal: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditBashRuleResponse {
        let input = EditBashRuleRequest(name: name, level: level, rule: rule, id: id, uuid: uuid, hostip: hostip, isGlobal: isGlobal)
        return try await self.client.execute(action: "EditBashRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
