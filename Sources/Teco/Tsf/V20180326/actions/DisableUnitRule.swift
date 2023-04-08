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

extension Tsf {
    /// DisableUnitRule请求参数结构体
    public struct DisableUnitRuleRequest: TCRequestModel {
        /// 规则ID
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DisableUnitRule返回参数结构体
    public struct DisableUnitRuleResponse: TCResponseModel {
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

    /// 禁用单元化规则
    @inlinable
    public func disableUnitRule(_ input: DisableUnitRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableUnitRuleResponse> {
        self.client.execute(action: "DisableUnitRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用单元化规则
    @inlinable
    public func disableUnitRule(_ input: DisableUnitRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableUnitRuleResponse {
        try await self.client.execute(action: "DisableUnitRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用单元化规则
    @inlinable
    public func disableUnitRule(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableUnitRuleResponse> {
        self.disableUnitRule(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用单元化规则
    @inlinable
    public func disableUnitRule(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableUnitRuleResponse {
        try await self.disableUnitRule(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
