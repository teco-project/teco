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

extension Rce {
    /// DescribeRiskAssessment请求参数结构体
    public struct DescribeRiskAssessmentRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeRiskAssessment返回参数结构体
    public struct DescribeRiskAssessmentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询风险评估结果
    ///
    /// 此接口用于查询风险评估结果
    @inlinable @discardableResult
    public func describeRiskAssessment(_ input: DescribeRiskAssessmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskAssessmentResponse> {
        self.client.execute(action: "DescribeRiskAssessment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询风险评估结果
    ///
    /// 此接口用于查询风险评估结果
    @inlinable @discardableResult
    public func describeRiskAssessment(_ input: DescribeRiskAssessmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskAssessmentResponse {
        try await self.client.execute(action: "DescribeRiskAssessment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询风险评估结果
    ///
    /// 此接口用于查询风险评估结果
    @inlinable @discardableResult
    public func describeRiskAssessment(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskAssessmentResponse> {
        self.describeRiskAssessment(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询风险评估结果
    ///
    /// 此接口用于查询风险评估结果
    @inlinable @discardableResult
    public func describeRiskAssessment(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskAssessmentResponse {
        try await self.describeRiskAssessment(.init(), region: region, logger: logger, on: eventLoop)
    }
}
