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

extension Teo {
    /// DescribeRulesSetting请求参数结构体
    public struct DescribeRulesSettingRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeRulesSetting返回参数结构体
    public struct DescribeRulesSettingResponse: TCResponseModel {
        /// 规则引擎可应用匹配请求的设置列表及其详细建议配置信息。
        public let actions: [RulesSettingAction]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case actions = "Actions"
            case requestId = "RequestId"
        }
    }

    /// 查询规则引擎的设置参数
    ///
    /// 返回规则引擎可应用匹配请求的设置列表及其详细建议配置信息
    @inlinable
    public func describeRulesSetting(_ input: DescribeRulesSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesSettingResponse> {
        self.client.execute(action: "DescribeRulesSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则引擎的设置参数
    ///
    /// 返回规则引擎可应用匹配请求的设置列表及其详细建议配置信息
    @inlinable
    public func describeRulesSetting(_ input: DescribeRulesSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesSettingResponse {
        try await self.client.execute(action: "DescribeRulesSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询规则引擎的设置参数
    ///
    /// 返回规则引擎可应用匹配请求的设置列表及其详细建议配置信息
    @inlinable
    public func describeRulesSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesSettingResponse> {
        let input = DescribeRulesSettingRequest()
        return self.client.execute(action: "DescribeRulesSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则引擎的设置参数
    ///
    /// 返回规则引擎可应用匹配请求的设置列表及其详细建议配置信息
    @inlinable
    public func describeRulesSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesSettingResponse {
        let input = DescribeRulesSettingRequest()
        return try await self.client.execute(action: "DescribeRulesSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
