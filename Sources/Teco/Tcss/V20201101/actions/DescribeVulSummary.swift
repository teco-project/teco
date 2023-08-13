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
    /// DescribeVulSummary请求参数结构体
    public struct DescribeVulSummaryRequest: TCRequestModel {
        /// 过滤条件。
        /// - OnlyAffectedNewestImage- string- 是否必填：否 - 仅展示影响最新版本镜像的漏洞true,false
        /// - OnlyAffectedContainer-string- 是否必填：否 - 仅展示影响容器的漏洞,true,false
        /// - CategoryType- string - 是否必填：否 - 漏洞分类: SYSTEM:系统漏洞 WEB:web应用漏洞 ALL:全部漏洞
        public let filters: [RunTimeFilters]?

        public init(filters: [RunTimeFilters]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeVulSummary返回参数结构体
    public struct DescribeVulSummaryResponse: TCResponseModel {
        /// 漏洞总数量
        public let vulTotalCount: Int64

        /// 严重及高危漏洞数量
        public let seriousVulCount: Int64

        /// 重点关注漏洞数量
        public let suggestVulCount: Int64

        /// 有Poc或者Exp的漏洞数量
        public let pocExpLevelVulCount: Int64

        /// 有远程Exp的漏洞数量
        public let remoteExpLevelVulCount: Int64

        /// 受严重或高危漏洞影响的最新版本镜像数
        public let seriousVulNewestImageCount: Int64

        /// 系统漏洞重点关注数
        public let systemVulnerabilityFocusCount: Int64

        /// web漏洞重点关注数
        public let webVulnerabilityFocusCount: Int64

        /// 受影响本地镜像数
        public let seriousVulnerabilityLocalImageCount: Int64

        /// 受影响仓库镜像数
        public let seriousVulnerabilityRegistryImageCount: Int64

        /// 应急漏洞数量
        public let emergencyVulnerabilityCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vulTotalCount = "VulTotalCount"
            case seriousVulCount = "SeriousVulCount"
            case suggestVulCount = "SuggestVulCount"
            case pocExpLevelVulCount = "PocExpLevelVulCount"
            case remoteExpLevelVulCount = "RemoteExpLevelVulCount"
            case seriousVulNewestImageCount = "SeriousVulNewestImageCount"
            case systemVulnerabilityFocusCount = "SystemVulnerabilityFocusCount"
            case webVulnerabilityFocusCount = "WebVulnerabilityFocusCount"
            case seriousVulnerabilityLocalImageCount = "SeriousVulnerabilityLocalImageCount"
            case seriousVulnerabilityRegistryImageCount = "SeriousVulnerabilityRegistryImageCount"
            case emergencyVulnerabilityCount = "EmergencyVulnerabilityCount"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞风险统计概览
    @inlinable
    public func describeVulSummary(_ input: DescribeVulSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulSummaryResponse> {
        self.client.execute(action: "DescribeVulSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞风险统计概览
    @inlinable
    public func describeVulSummary(_ input: DescribeVulSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulSummaryResponse {
        try await self.client.execute(action: "DescribeVulSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞风险统计概览
    @inlinable
    public func describeVulSummary(filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulSummaryResponse> {
        self.describeVulSummary(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞风险统计概览
    @inlinable
    public func describeVulSummary(filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulSummaryResponse {
        try await self.describeVulSummary(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
