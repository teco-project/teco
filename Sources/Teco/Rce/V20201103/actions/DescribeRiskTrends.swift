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

extension Rce {
    /// DescribeRiskTrends请求参数结构体
    public struct DescribeRiskTrendsRequest: TCRequestModel {
        /// 业务入参
        public let businessSecurityData: InputFrontRisk

        public init(businessSecurityData: InputFrontRisk) {
            self.businessSecurityData = businessSecurityData
        }

        enum CodingKeys: String, CodingKey {
            case businessSecurityData = "BusinessSecurityData"
        }
    }

    /// DescribeRiskTrends返回参数结构体
    public struct DescribeRiskTrendsResponse: TCResponseModel {
        /// 业务出参
        public let data: OutputFrontRiskData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 风险趋势统计
    ///
    /// 以图表形式展示三种请求状态的趋势变化
    @inlinable
    public func describeRiskTrends(_ input: DescribeRiskTrendsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskTrendsResponse> {
        self.client.execute(action: "DescribeRiskTrends", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 风险趋势统计
    ///
    /// 以图表形式展示三种请求状态的趋势变化
    @inlinable
    public func describeRiskTrends(_ input: DescribeRiskTrendsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskTrendsResponse {
        try await self.client.execute(action: "DescribeRiskTrends", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 风险趋势统计
    ///
    /// 以图表形式展示三种请求状态的趋势变化
    @inlinable
    public func describeRiskTrends(businessSecurityData: InputFrontRisk, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskTrendsResponse> {
        self.describeRiskTrends(.init(businessSecurityData: businessSecurityData), region: region, logger: logger, on: eventLoop)
    }

    /// 风险趋势统计
    ///
    /// 以图表形式展示三种请求状态的趋势变化
    @inlinable
    public func describeRiskTrends(businessSecurityData: InputFrontRisk, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskTrendsResponse {
        try await self.describeRiskTrends(.init(businessSecurityData: businessSecurityData), region: region, logger: logger, on: eventLoop)
    }
}
