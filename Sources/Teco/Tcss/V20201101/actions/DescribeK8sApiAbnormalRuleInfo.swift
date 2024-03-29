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
    /// DescribeK8sApiAbnormalRuleInfo请求参数结构体
    public struct DescribeK8sApiAbnormalRuleInfoRequest: TCRequest {
        /// 规则ID
        public let ruleID: String

        public init(ruleID: String) {
            self.ruleID = ruleID
        }

        enum CodingKeys: String, CodingKey {
            case ruleID = "RuleID"
        }
    }

    /// DescribeK8sApiAbnormalRuleInfo返回参数结构体
    public struct DescribeK8sApiAbnormalRuleInfoResponse: TCResponse {
        /// 规则详情
        public let info: K8sApiAbnormalRuleInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case info = "Info"
            case requestId = "RequestId"
        }
    }

    /// 查询k8sapi异常请求规则详情
    @inlinable
    public func describeK8sApiAbnormalRuleInfo(_ input: DescribeK8sApiAbnormalRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeK8sApiAbnormalRuleInfoResponse> {
        self.client.execute(action: "DescribeK8sApiAbnormalRuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询k8sapi异常请求规则详情
    @inlinable
    public func describeK8sApiAbnormalRuleInfo(_ input: DescribeK8sApiAbnormalRuleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalRuleInfoResponse {
        try await self.client.execute(action: "DescribeK8sApiAbnormalRuleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询k8sapi异常请求规则详情
    @inlinable
    public func describeK8sApiAbnormalRuleInfo(ruleID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeK8sApiAbnormalRuleInfoResponse> {
        self.describeK8sApiAbnormalRuleInfo(.init(ruleID: ruleID), region: region, logger: logger, on: eventLoop)
    }

    /// 查询k8sapi异常请求规则详情
    @inlinable
    public func describeK8sApiAbnormalRuleInfo(ruleID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalRuleInfoResponse {
        try await self.describeK8sApiAbnormalRuleInfo(.init(ruleID: ruleID), region: region, logger: logger, on: eventLoop)
    }
}
