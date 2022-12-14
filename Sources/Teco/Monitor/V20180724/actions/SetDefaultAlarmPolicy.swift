//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Monitor {
    /// SetDefaultAlarmPolicy请求参数结构体
    public struct SetDefaultAlarmPolicyRequest: TCRequestModel {
        /// 模块名，固定值 monitor
        public let module: String

        /// 告警策略 ID
        public let policyId: String

        public init(module: String, policyId: String) {
            self.module = module
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyId = "PolicyId"
        }
    }

    /// SetDefaultAlarmPolicy返回参数结构体
    public struct SetDefaultAlarmPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设为默认告警策略
    ///
    /// 设置一个策略为该告警策略类型、该项目的默认告警策略。
    /// 同一项目下相同的告警策略类型，就会被设置为非默认。
    @inlinable
    public func setDefaultAlarmPolicy(_ input: SetDefaultAlarmPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SetDefaultAlarmPolicyResponse > {
        self.client.execute(action: "SetDefaultAlarmPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设为默认告警策略
    ///
    /// 设置一个策略为该告警策略类型、该项目的默认告警策略。
    /// 同一项目下相同的告警策略类型，就会被设置为非默认。
    @inlinable
    public func setDefaultAlarmPolicy(_ input: SetDefaultAlarmPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetDefaultAlarmPolicyResponse {
        try await self.client.execute(action: "SetDefaultAlarmPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设为默认告警策略
    ///
    /// 设置一个策略为该告警策略类型、该项目的默认告警策略。
    /// 同一项目下相同的告警策略类型，就会被设置为非默认。
    @inlinable
    public func setDefaultAlarmPolicy(module: String, policyId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SetDefaultAlarmPolicyResponse > {
        self.setDefaultAlarmPolicy(SetDefaultAlarmPolicyRequest(module: module, policyId: policyId), logger: logger, on: eventLoop)
    }

    /// 设为默认告警策略
    ///
    /// 设置一个策略为该告警策略类型、该项目的默认告警策略。
    /// 同一项目下相同的告警策略类型，就会被设置为非默认。
    @inlinable
    public func setDefaultAlarmPolicy(module: String, policyId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetDefaultAlarmPolicyResponse {
        try await self.setDefaultAlarmPolicy(SetDefaultAlarmPolicyRequest(module: module, policyId: policyId), logger: logger, on: eventLoop)
    }
}
