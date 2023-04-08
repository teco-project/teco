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
    /// DescribeBaselineDetectOverview请求参数结构体
    public struct DescribeBaselineDetectOverviewRequest: TCRequestModel {
        /// 策略Id
        public let policyId: Int64?

        public init(policyId: Int64? = nil) {
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    /// DescribeBaselineDetectOverview返回参数结构体
    public struct DescribeBaselineDetectOverviewResponse: TCResponseModel {
        /// 检测服务器数
        public let hostCount: Int64

        /// 检测项
        public let itemCount: Int64

        /// 检测策略项
        public let policyCount: Int64

        /// 通过率*100%
        public let passRate: Int64

        /// 最近一次检测通过个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let latestPassCount: Int64?

        /// 最近一次检测未通过个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let latestNotPassCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hostCount = "HostCount"
            case itemCount = "ItemCount"
            case policyCount = "PolicyCount"
            case passRate = "PassRate"
            case latestPassCount = "LatestPassCount"
            case latestNotPassCount = "LatestNotPassCount"
            case requestId = "RequestId"
        }
    }

    /// 获取基线检测概览
    @inlinable
    public func describeBaselineDetectOverview(_ input: DescribeBaselineDetectOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineDetectOverviewResponse> {
        self.client.execute(action: "DescribeBaselineDetectOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取基线检测概览
    @inlinable
    public func describeBaselineDetectOverview(_ input: DescribeBaselineDetectOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineDetectOverviewResponse {
        try await self.client.execute(action: "DescribeBaselineDetectOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取基线检测概览
    @inlinable
    public func describeBaselineDetectOverview(policyId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineDetectOverviewResponse> {
        self.describeBaselineDetectOverview(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取基线检测概览
    @inlinable
    public func describeBaselineDetectOverview(policyId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineDetectOverviewResponse {
        try await self.describeBaselineDetectOverview(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }
}
