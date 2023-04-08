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

extension Cwp {
    /// DescribeBaselineItemRiskTop请求参数结构体
    public struct DescribeBaselineItemRiskTopRequest: TCRequestModel {
        /// 策略ID
        public let policyId: Int64?

        public init(policyId: Int64? = nil) {
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    /// DescribeBaselineItemRiskTop返回参数结构体
    public struct DescribeBaselineItemRiskTopResponse: TCResponseModel {
        /// 结果数组
        public let riskItemTop5: [BaselineRiskItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case riskItemTop5 = "RiskItemTop5"
            case requestId = "RequestId"
        }
    }

    /// 获取基线检测项TOP5
    @inlinable
    public func describeBaselineItemRiskTop(_ input: DescribeBaselineItemRiskTopRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemRiskTopResponse> {
        self.client.execute(action: "DescribeBaselineItemRiskTop", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项TOP5
    @inlinable
    public func describeBaselineItemRiskTop(_ input: DescribeBaselineItemRiskTopRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemRiskTopResponse {
        try await self.client.execute(action: "DescribeBaselineItemRiskTop", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基线检测项TOP5
    @inlinable
    public func describeBaselineItemRiskTop(policyId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineItemRiskTopResponse> {
        self.describeBaselineItemRiskTop(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线检测项TOP5
    @inlinable
    public func describeBaselineItemRiskTop(policyId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineItemRiskTopResponse {
        try await self.describeBaselineItemRiskTop(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }
}