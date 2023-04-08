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
    /// DescribeVulLevelSummary请求参数结构体
    public struct DescribeVulLevelSummaryRequest: TCRequestModel {
        /// 漏洞分类: SYSTEM:系统漏洞 WEB:web应用漏洞 EMERGENCY:应急漏洞
        public let categoryType: String

        public init(categoryType: String) {
            self.categoryType = categoryType
        }

        enum CodingKeys: String, CodingKey {
            case categoryType = "CategoryType"
        }
    }

    /// DescribeVulLevelSummary返回参数结构体
    public struct DescribeVulLevelSummaryResponse: TCResponseModel {
        /// 高危漏洞数
        public let highLevelVulCount: Int64

        /// 中危漏洞数
        public let mediumLevelVulCount: Int64

        /// 低危漏洞数
        public let lowLevelVulCount: Int64

        /// 严重漏洞数
        public let criticalLevelVulCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case highLevelVulCount = "HighLevelVulCount"
            case mediumLevelVulCount = "MediumLevelVulCount"
            case lowLevelVulCount = "LowLevelVulCount"
            case criticalLevelVulCount = "CriticalLevelVulCount"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞各威胁等级统计数
    @inlinable
    public func describeVulLevelSummary(_ input: DescribeVulLevelSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulLevelSummaryResponse> {
        self.client.execute(action: "DescribeVulLevelSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞各威胁等级统计数
    @inlinable
    public func describeVulLevelSummary(_ input: DescribeVulLevelSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulLevelSummaryResponse {
        try await self.client.execute(action: "DescribeVulLevelSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞各威胁等级统计数
    @inlinable
    public func describeVulLevelSummary(categoryType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulLevelSummaryResponse> {
        self.describeVulLevelSummary(.init(categoryType: categoryType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞各威胁等级统计数
    @inlinable
    public func describeVulLevelSummary(categoryType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulLevelSummaryResponse {
        try await self.describeVulLevelSummary(.init(categoryType: categoryType), region: region, logger: logger, on: eventLoop)
    }
}
