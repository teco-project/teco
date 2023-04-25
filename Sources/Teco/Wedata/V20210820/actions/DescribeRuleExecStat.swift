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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Wedata {
    /// DescribeRuleExecStat请求参数结构体
    public struct DescribeRuleExecStatRequest: TCRequestModel {
        /// ProjectId 值
        public let projectId: String

        /// 开始时间，时间戳到秒
        public let beginDate: String

        /// 结束时间，时间戳到秒
        public let endDate: String

        public init(projectId: String, beginDate: String, endDate: String) {
            self.projectId = projectId
            self.beginDate = beginDate
            self.endDate = endDate
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case beginDate = "BeginDate"
            case endDate = "EndDate"
        }
    }

    /// DescribeRuleExecStat返回参数结构体
    public struct DescribeRuleExecStatResponse: TCResponseModel {
        /// 结果
        public let data: RuleExecStat

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 数据质量规则运行情况接口
    ///
    /// 数据质量概览页面规则运行情况接口
    @inlinable
    public func describeRuleExecStat(_ input: DescribeRuleExecStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecStatResponse> {
        self.client.execute(action: "DescribeRuleExecStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数据质量规则运行情况接口
    ///
    /// 数据质量概览页面规则运行情况接口
    @inlinable
    public func describeRuleExecStat(_ input: DescribeRuleExecStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecStatResponse {
        try await self.client.execute(action: "DescribeRuleExecStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数据质量规则运行情况接口
    ///
    /// 数据质量概览页面规则运行情况接口
    @inlinable
    public func describeRuleExecStat(projectId: String, beginDate: String, endDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecStatResponse> {
        self.describeRuleExecStat(.init(projectId: projectId, beginDate: beginDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }

    /// 数据质量规则运行情况接口
    ///
    /// 数据质量概览页面规则运行情况接口
    @inlinable
    public func describeRuleExecStat(projectId: String, beginDate: String, endDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecStatResponse {
        try await self.describeRuleExecStat(.init(projectId: projectId, beginDate: beginDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }
}
