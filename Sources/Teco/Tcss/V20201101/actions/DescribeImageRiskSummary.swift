//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeImageRiskSummary请求参数结构体
    public struct DescribeImageRiskSummaryRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeImageRiskSummary返回参数结构体
    public struct DescribeImageRiskSummaryResponse: TCResponseModel {
        /// 安全漏洞
        public let vulnerabilityCnt: [RunTimeRiskInfo]

        /// 木马病毒
        public let malwareVirusCnt: [RunTimeRiskInfo]

        /// 敏感信息
        public let riskCnt: [RunTimeRiskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vulnerabilityCnt = "VulnerabilityCnt"
            case malwareVirusCnt = "MalwareVirusCnt"
            case riskCnt = "RiskCnt"
            case requestId = "RequestId"
        }
    }

    /// 查询本地镜像风险概览
    @inlinable
    public func describeImageRiskSummary(_ input: DescribeImageRiskSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageRiskSummaryResponse > {
        self.client.execute(action: "DescribeImageRiskSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询本地镜像风险概览
    @inlinable
    public func describeImageRiskSummary(_ input: DescribeImageRiskSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRiskSummaryResponse {
        try await self.client.execute(action: "DescribeImageRiskSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询本地镜像风险概览
    @inlinable
    public func describeImageRiskSummary(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageRiskSummaryResponse > {
        self.describeImageRiskSummary(DescribeImageRiskSummaryRequest(), logger: logger, on: eventLoop)
    }

    /// 查询本地镜像风险概览
    @inlinable
    public func describeImageRiskSummary(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRiskSummaryResponse {
        try await self.describeImageRiskSummary(DescribeImageRiskSummaryRequest(), logger: logger, on: eventLoop)
    }
}
