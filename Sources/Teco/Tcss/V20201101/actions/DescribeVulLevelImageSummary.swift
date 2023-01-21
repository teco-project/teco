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

extension Tcss {
    /// DescribeVulLevelImageSummary请求参数结构体
    public struct DescribeVulLevelImageSummaryRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeVulLevelImageSummary返回参数结构体
    public struct DescribeVulLevelImageSummaryResponse: TCResponseModel {
        /// 高危漏洞最新本地镜像占比
        public let highLevelVulLocalImagePercent: Float

        /// 中危漏洞最新本地镜像占比
        public let mediumLevelVulLocalImagePercent: Float

        /// 低危漏洞最新本地镜像占比
        public let lowLevelVulLocalImagePercent: Float

        /// 严重漏洞最新本地镜像占比
        public let criticalLevelVulLocalImagePercent: Float

        /// 影响的最新版本本地镜像数
        public let localNewestImageCount: Int64

        /// 影响的最新版本仓库镜像数
        public let registryNewestImageCount: Int64

        /// 高危漏洞最新仓库镜像占比
        public let highLevelVulRegistryImagePercent: Float

        /// 中危漏洞最新仓库镜像占比
        public let mediumLevelVulRegistryImagePercent: Float

        /// 低危漏洞最新仓库镜像占比
        public let lowLevelVulRegistryImagePercent: Float

        /// 严重漏洞最新仓库镜像占比
        public let criticalLevelVulRegistryImagePercent: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case highLevelVulLocalImagePercent = "HighLevelVulLocalImagePercent"
            case mediumLevelVulLocalImagePercent = "MediumLevelVulLocalImagePercent"
            case lowLevelVulLocalImagePercent = "LowLevelVulLocalImagePercent"
            case criticalLevelVulLocalImagePercent = "CriticalLevelVulLocalImagePercent"
            case localNewestImageCount = "LocalNewestImageCount"
            case registryNewestImageCount = "RegistryNewestImageCount"
            case highLevelVulRegistryImagePercent = "HighLevelVulRegistryImagePercent"
            case mediumLevelVulRegistryImagePercent = "MediumLevelVulRegistryImagePercent"
            case lowLevelVulRegistryImagePercent = "LowLevelVulRegistryImagePercent"
            case criticalLevelVulRegistryImagePercent = "CriticalLevelVulRegistryImagePercent"
            case requestId = "RequestId"
        }
    }

    /// 查询应急漏洞各威胁等级统计镜像数
    @inlinable
    public func describeVulLevelImageSummary(_ input: DescribeVulLevelImageSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulLevelImageSummaryResponse> {
        self.client.execute(action: "DescribeVulLevelImageSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应急漏洞各威胁等级统计镜像数
    @inlinable
    public func describeVulLevelImageSummary(_ input: DescribeVulLevelImageSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulLevelImageSummaryResponse {
        try await self.client.execute(action: "DescribeVulLevelImageSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应急漏洞各威胁等级统计镜像数
    @inlinable
    public func describeVulLevelImageSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulLevelImageSummaryResponse> {
        self.describeVulLevelImageSummary(DescribeVulLevelImageSummaryRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应急漏洞各威胁等级统计镜像数
    @inlinable
    public func describeVulLevelImageSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulLevelImageSummaryResponse {
        try await self.describeVulLevelImageSummary(DescribeVulLevelImageSummaryRequest(), region: region, logger: logger, on: eventLoop)
    }
}
