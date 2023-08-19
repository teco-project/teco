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
    /// DescribeVulImageSummary请求参数结构体
    public struct DescribeVulImageSummaryRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeVulImageSummary返回参数结构体
    public struct DescribeVulImageSummaryResponse: TCResponse {
        /// 受严重或高危漏洞影响的镜像数
        public let seriousVulImageCount: Int64

        /// 已扫描的镜像数
        public let scannedImageCount: Int64

        /// 漏洞总数量
        public let vulTotalCount: Int64

        /// 系统漏洞数
        public let sysTemVulCount: Int64

        /// web应用漏洞数
        public let webVulCount: Int64

        /// 已授权镜像数
        public let allAuthorizedImageCount: Int64

        /// 应急漏洞数
        public let emergencyVulCount: Int64

        /// 支持扫描的漏洞总数量
        public let supportVulTotalCount: Int64

        /// 漏洞库更新时间
        public let vulLibraryUpdateTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case seriousVulImageCount = "SeriousVulImageCount"
            case scannedImageCount = "ScannedImageCount"
            case vulTotalCount = "VulTotalCount"
            case sysTemVulCount = "SysTemVulCount"
            case webVulCount = "WebVulCount"
            case allAuthorizedImageCount = "AllAuthorizedImageCount"
            case emergencyVulCount = "EmergencyVulCount"
            case supportVulTotalCount = "SupportVulTotalCount"
            case vulLibraryUpdateTime = "VulLibraryUpdateTime"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞镜像统计
    @inlinable
    public func describeVulImageSummary(_ input: DescribeVulImageSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulImageSummaryResponse> {
        self.client.execute(action: "DescribeVulImageSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞镜像统计
    @inlinable
    public func describeVulImageSummary(_ input: DescribeVulImageSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulImageSummaryResponse {
        try await self.client.execute(action: "DescribeVulImageSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞镜像统计
    @inlinable
    public func describeVulImageSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulImageSummaryResponse> {
        self.describeVulImageSummary(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞镜像统计
    @inlinable
    public func describeVulImageSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulImageSummaryResponse {
        try await self.describeVulImageSummary(.init(), region: region, logger: logger, on: eventLoop)
    }
}
