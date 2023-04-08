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

extension Tcss {
    /// CreateK8sApiAbnormalRuleInfo请求参数结构体
    public struct CreateK8sApiAbnormalRuleInfoRequest: TCRequestModel {
        /// 规则详情
        public let ruleInfo: K8sApiAbnormalRuleInfo

        /// 拷贝规则ID(适用于复制规则场景)
        public let copySrcRuleID: String?

        /// 事件ID(适用于事件加白场景)
        public let eventID: UInt64?

        public init(ruleInfo: K8sApiAbnormalRuleInfo, copySrcRuleID: String? = nil, eventID: UInt64? = nil) {
            self.ruleInfo = ruleInfo
            self.copySrcRuleID = copySrcRuleID
            self.eventID = eventID
        }

        enum CodingKeys: String, CodingKey {
            case ruleInfo = "RuleInfo"
            case copySrcRuleID = "CopySrcRuleID"
            case eventID = "EventID"
        }
    }

    /// CreateK8sApiAbnormalRuleInfo返回参数结构体
    public struct CreateK8sApiAbnormalRuleInfoResponse: TCResponseModel {
        /// 规则ID
        public let ruleID: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleID = "RuleID"
            case requestId = "RequestId"
        }
    }

    /// 创建k8sapi异常事件规则
    @inlinable
    public func createK8sApiAbnormalRuleInfo(_ input: CreateK8sApiAbnormalRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateK8sApiAbnormalRuleInfoResponse> {
        self.client.execute(action: "CreateK8sApiAbnormalRuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建k8sapi异常事件规则
    @inlinable
    public func createK8sApiAbnormalRuleInfo(_ input: CreateK8sApiAbnormalRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateK8sApiAbnormalRuleInfoResponse {
        try await self.client.execute(action: "CreateK8sApiAbnormalRuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建k8sapi异常事件规则
    @inlinable
    public func createK8sApiAbnormalRuleInfo(ruleInfo: K8sApiAbnormalRuleInfo, copySrcRuleID: String? = nil, eventID: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateK8sApiAbnormalRuleInfoResponse> {
        self.createK8sApiAbnormalRuleInfo(.init(ruleInfo: ruleInfo, copySrcRuleID: copySrcRuleID, eventID: eventID), region: region, logger: logger, on: eventLoop)
    }

    /// 创建k8sapi异常事件规则
    @inlinable
    public func createK8sApiAbnormalRuleInfo(ruleInfo: K8sApiAbnormalRuleInfo, copySrcRuleID: String? = nil, eventID: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateK8sApiAbnormalRuleInfoResponse {
        try await self.createK8sApiAbnormalRuleInfo(.init(ruleInfo: ruleInfo, copySrcRuleID: copySrcRuleID, eventID: eventID), region: region, logger: logger, on: eventLoop)
    }
}
