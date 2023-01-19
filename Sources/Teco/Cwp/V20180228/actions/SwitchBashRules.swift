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
    /// SwitchBashRules请求参数结构体
    public struct SwitchBashRulesRequest: TCRequestModel {
        /// 规则ID
        public let id: UInt64

        /// 是否禁用
        public let disabled: UInt64

        public init(id: UInt64, disabled: UInt64) {
            self.id = id
            self.disabled = disabled
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case disabled = "Disabled"
        }
    }

    /// SwitchBashRules返回参数结构体
    public struct SwitchBashRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 切换高危命令规则状态
    @inlinable
    public func switchBashRules(_ input: SwitchBashRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchBashRulesResponse> {
        self.client.execute(action: "SwitchBashRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 切换高危命令规则状态
    @inlinable
    public func switchBashRules(_ input: SwitchBashRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchBashRulesResponse {
        try await self.client.execute(action: "SwitchBashRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 切换高危命令规则状态
    @inlinable
    public func switchBashRules(id: UInt64, disabled: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchBashRulesResponse> {
        self.switchBashRules(SwitchBashRulesRequest(id: id, disabled: disabled), region: region, logger: logger, on: eventLoop)
    }

    /// 切换高危命令规则状态
    @inlinable
    public func switchBashRules(id: UInt64, disabled: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchBashRulesResponse {
        try await self.switchBashRules(SwitchBashRulesRequest(id: id, disabled: disabled), region: region, logger: logger, on: eventLoop)
    }
}
