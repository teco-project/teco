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
    /// DeleteK8sApiAbnormalRule请求参数结构体
    public struct DeleteK8sApiAbnormalRuleRequest: TCRequestModel {
        /// 规则ID集合
        public let ruleIDSet: [String]

        public init(ruleIDSet: [String]) {
            self.ruleIDSet = ruleIDSet
        }

        enum CodingKeys: String, CodingKey {
            case ruleIDSet = "RuleIDSet"
        }
    }

    /// DeleteK8sApiAbnormalRule返回参数结构体
    public struct DeleteK8sApiAbnormalRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除k8sapi异常事件规则
    @inlinable
    public func deleteK8sApiAbnormalRule(_ input: DeleteK8sApiAbnormalRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteK8sApiAbnormalRuleResponse> {
        self.client.execute(action: "DeleteK8sApiAbnormalRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除k8sapi异常事件规则
    @inlinable
    public func deleteK8sApiAbnormalRule(_ input: DeleteK8sApiAbnormalRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteK8sApiAbnormalRuleResponse {
        try await self.client.execute(action: "DeleteK8sApiAbnormalRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除k8sapi异常事件规则
    @inlinable
    public func deleteK8sApiAbnormalRule(ruleIDSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteK8sApiAbnormalRuleResponse> {
        self.deleteK8sApiAbnormalRule(DeleteK8sApiAbnormalRuleRequest(ruleIDSet: ruleIDSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除k8sapi异常事件规则
    @inlinable
    public func deleteK8sApiAbnormalRule(ruleIDSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteK8sApiAbnormalRuleResponse {
        try await self.deleteK8sApiAbnormalRule(DeleteK8sApiAbnormalRuleRequest(ruleIDSet: ruleIDSet), region: region, logger: logger, on: eventLoop)
    }
}
