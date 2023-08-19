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

extension Dlc {
    /// ModifyGovernEventRule请求参数结构体
    public struct ModifyGovernEventRuleRequest: TCRequest {
        public init() {
        }
    }

    /// ModifyGovernEventRule返回参数结构体
    public struct ModifyGovernEventRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据治理事件阈值
    @inlinable @discardableResult
    public func modifyGovernEventRule(_ input: ModifyGovernEventRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGovernEventRuleResponse> {
        self.client.execute(action: "ModifyGovernEventRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据治理事件阈值
    @inlinable @discardableResult
    public func modifyGovernEventRule(_ input: ModifyGovernEventRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGovernEventRuleResponse {
        try await self.client.execute(action: "ModifyGovernEventRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据治理事件阈值
    @inlinable @discardableResult
    public func modifyGovernEventRule(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGovernEventRuleResponse> {
        self.modifyGovernEventRule(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 修改数据治理事件阈值
    @inlinable @discardableResult
    public func modifyGovernEventRule(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGovernEventRuleResponse {
        try await self.modifyGovernEventRule(.init(), region: region, logger: logger, on: eventLoop)
    }
}
