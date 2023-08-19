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

extension Monitor {
    /// ModifyAlarmPolicyStatus请求参数结构体
    public struct ModifyAlarmPolicyStatusRequest: TCRequest {
        /// 模块名，固定值 monitor
        public let module: String

        /// 告警策略 ID
        public let policyId: String

        /// 启停状态 0=停用 1=启用
        public let enable: Int64

        public init(module: String, policyId: String, enable: Int64) {
            self.module = module
            self.policyId = policyId
            self.enable = enable
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyId = "PolicyId"
            case enable = "Enable"
        }
    }

    /// ModifyAlarmPolicyStatus返回参数结构体
    public struct ModifyAlarmPolicyStatusResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启停告警策略
    @inlinable @discardableResult
    public func modifyAlarmPolicyStatus(_ input: ModifyAlarmPolicyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAlarmPolicyStatusResponse> {
        self.client.execute(action: "ModifyAlarmPolicyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启停告警策略
    @inlinable @discardableResult
    public func modifyAlarmPolicyStatus(_ input: ModifyAlarmPolicyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmPolicyStatusResponse {
        try await self.client.execute(action: "ModifyAlarmPolicyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启停告警策略
    @inlinable @discardableResult
    public func modifyAlarmPolicyStatus(module: String, policyId: String, enable: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAlarmPolicyStatusResponse> {
        self.modifyAlarmPolicyStatus(.init(module: module, policyId: policyId, enable: enable), region: region, logger: logger, on: eventLoop)
    }

    /// 启停告警策略
    @inlinable @discardableResult
    public func modifyAlarmPolicyStatus(module: String, policyId: String, enable: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmPolicyStatusResponse {
        try await self.modifyAlarmPolicyStatus(.init(module: module, policyId: policyId, enable: enable), region: region, logger: logger, on: eventLoop)
    }
}
