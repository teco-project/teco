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

extension Monitor {
    /// ModifyAlarmPolicyInfo请求参数结构体
    public struct ModifyAlarmPolicyInfoRequest: TCRequestModel {
        /// 模块名，这里填“monitor”
        public let module: String

        /// 告警策略 ID
        public let policyId: String

        /// 要修改的字段 NAME=策略名称 REMARK=策略备注
        public let key: String

        /// 修改后的值
        public let value: String

        public init(module: String, policyId: String, key: String, value: String) {
            self.module = module
            self.policyId = policyId
            self.key = key
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyId = "PolicyId"
            case key = "Key"
            case value = "Value"
        }
    }

    /// ModifyAlarmPolicyInfo返回参数结构体
    public struct ModifyAlarmPolicyInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改告警策略基本信息
    ///
    /// 告警2.0编辑告警策略基本信息，包括策略名、备注
    @inlinable
    public func modifyAlarmPolicyInfo(_ input: ModifyAlarmPolicyInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAlarmPolicyInfoResponse> {
        self.client.execute(action: "ModifyAlarmPolicyInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改告警策略基本信息
    ///
    /// 告警2.0编辑告警策略基本信息，包括策略名、备注
    @inlinable
    public func modifyAlarmPolicyInfo(_ input: ModifyAlarmPolicyInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmPolicyInfoResponse {
        try await self.client.execute(action: "ModifyAlarmPolicyInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改告警策略基本信息
    ///
    /// 告警2.0编辑告警策略基本信息，包括策略名、备注
    @inlinable
    public func modifyAlarmPolicyInfo(module: String, policyId: String, key: String, value: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAlarmPolicyInfoResponse> {
        self.modifyAlarmPolicyInfo(ModifyAlarmPolicyInfoRequest(module: module, policyId: policyId, key: key, value: value), region: region, logger: logger, on: eventLoop)
    }

    /// 修改告警策略基本信息
    ///
    /// 告警2.0编辑告警策略基本信息，包括策略名、备注
    @inlinable
    public func modifyAlarmPolicyInfo(module: String, policyId: String, key: String, value: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmPolicyInfoResponse {
        try await self.modifyAlarmPolicyInfo(ModifyAlarmPolicyInfoRequest(module: module, policyId: policyId, key: key, value: value), region: region, logger: logger, on: eventLoop)
    }
}
