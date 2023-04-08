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

import TecoCore

extension Antiddos {
    /// DescribeNewL7RulesErrHealth请求参数结构体
    public struct DescribeNewL7RulesErrHealthRequest: TCRequestModel {
        /// 大禹子产品代号(bgpip表示高防IP)
        public let business: String

        /// 规则Id列表
        public let ruleIdList: [String]?

        public init(business: String, ruleIdList: [String]? = nil) {
            self.business = business
            self.ruleIdList = ruleIdList
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case ruleIdList = "RuleIdList"
        }
    }

    /// DescribeNewL7RulesErrHealth返回参数结构体
    public struct DescribeNewL7RulesErrHealthResponse: TCResponseModel {
        /// 异常规则列表，返回值说明: Key值为规则ID，Value值为异常IP及错误信息，多个IP用","分割
        public let errHealths: [KeyValue]

        /// 异常规则的总数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errHealths = "ErrHealths"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取L7转发规则健康检查异常结果列表
    @inlinable
    public func describeNewL7RulesErrHealth(_ input: DescribeNewL7RulesErrHealthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNewL7RulesErrHealthResponse> {
        self.client.execute(action: "DescribeNewL7RulesErrHealth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取L7转发规则健康检查异常结果列表
    @inlinable
    public func describeNewL7RulesErrHealth(_ input: DescribeNewL7RulesErrHealthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNewL7RulesErrHealthResponse {
        try await self.client.execute(action: "DescribeNewL7RulesErrHealth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取L7转发规则健康检查异常结果列表
    @inlinable
    public func describeNewL7RulesErrHealth(business: String, ruleIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNewL7RulesErrHealthResponse> {
        self.describeNewL7RulesErrHealth(.init(business: business, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取L7转发规则健康检查异常结果列表
    @inlinable
    public func describeNewL7RulesErrHealth(business: String, ruleIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNewL7RulesErrHealthResponse {
        try await self.describeNewL7RulesErrHealth(.init(business: business, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }
}
