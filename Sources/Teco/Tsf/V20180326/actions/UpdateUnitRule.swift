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

extension Tsf {
    /// UpdateUnitRule请求参数结构体
    public struct UpdateUnitRuleRequest: TCRequestModel {
        /// 规则ID
        public let id: String

        /// 规则名称
        public let name: String

        /// 规则描述
        public let description: String?

        /// 规则项列表
        public let unitRuleItemList: [UnitRuleItem]?

        public init(id: String, name: String, description: String? = nil, unitRuleItemList: [UnitRuleItem]? = nil) {
            self.id = id
            self.name = name
            self.description = description
            self.unitRuleItemList = unitRuleItemList
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case description = "Description"
            case unitRuleItemList = "UnitRuleItemList"
        }
    }

    /// UpdateUnitRule返回参数结构体
    public struct UpdateUnitRuleResponse: TCResponseModel {
        /// 是否成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新单元化规则
    @inlinable
    public func updateUnitRule(_ input: UpdateUnitRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUnitRuleResponse> {
        self.client.execute(action: "UpdateUnitRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新单元化规则
    @inlinable
    public func updateUnitRule(_ input: UpdateUnitRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUnitRuleResponse {
        try await self.client.execute(action: "UpdateUnitRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新单元化规则
    @inlinable
    public func updateUnitRule(id: String, name: String, description: String? = nil, unitRuleItemList: [UnitRuleItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUnitRuleResponse> {
        self.updateUnitRule(UpdateUnitRuleRequest(id: id, name: name, description: description, unitRuleItemList: unitRuleItemList), region: region, logger: logger, on: eventLoop)
    }

    /// 更新单元化规则
    @inlinable
    public func updateUnitRule(id: String, name: String, description: String? = nil, unitRuleItemList: [UnitRuleItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUnitRuleResponse {
        try await self.updateUnitRule(UpdateUnitRuleRequest(id: id, name: name, description: description, unitRuleItemList: unitRuleItemList), region: region, logger: logger, on: eventLoop)
    }
}
