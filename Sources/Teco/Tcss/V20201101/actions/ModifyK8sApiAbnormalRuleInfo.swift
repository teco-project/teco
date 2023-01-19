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
    /// ModifyK8sApiAbnormalRuleInfo请求参数结构体
    public struct ModifyK8sApiAbnormalRuleInfoRequest: TCRequestModel {
        /// 规则详情
        public let ruleInfo: K8sApiAbnormalRuleInfo

        public init(ruleInfo: K8sApiAbnormalRuleInfo) {
            self.ruleInfo = ruleInfo
        }

        enum CodingKeys: String, CodingKey {
            case ruleInfo = "RuleInfo"
        }
    }

    /// ModifyK8sApiAbnormalRuleInfo返回参数结构体
    public struct ModifyK8sApiAbnormalRuleInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改k8sapi异常规则信息
    @inlinable
    public func modifyK8sApiAbnormalRuleInfo(_ input: ModifyK8sApiAbnormalRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyK8sApiAbnormalRuleInfoResponse> {
        self.client.execute(action: "ModifyK8sApiAbnormalRuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改k8sapi异常规则信息
    @inlinable
    public func modifyK8sApiAbnormalRuleInfo(_ input: ModifyK8sApiAbnormalRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyK8sApiAbnormalRuleInfoResponse {
        try await self.client.execute(action: "ModifyK8sApiAbnormalRuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改k8sapi异常规则信息
    @inlinable
    public func modifyK8sApiAbnormalRuleInfo(ruleInfo: K8sApiAbnormalRuleInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyK8sApiAbnormalRuleInfoResponse> {
        self.modifyK8sApiAbnormalRuleInfo(ModifyK8sApiAbnormalRuleInfoRequest(ruleInfo: ruleInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 修改k8sapi异常规则信息
    @inlinable
    public func modifyK8sApiAbnormalRuleInfo(ruleInfo: K8sApiAbnormalRuleInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyK8sApiAbnormalRuleInfoResponse {
        try await self.modifyK8sApiAbnormalRuleInfo(ModifyK8sApiAbnormalRuleInfoRequest(ruleInfo: ruleInfo), region: region, logger: logger, on: eventLoop)
    }
}
