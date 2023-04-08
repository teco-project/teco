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

extension Cws {
    /// DescribeVulsNumber请求参数结构体
    public struct DescribeVulsNumberRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeVulsNumber返回参数结构体
    public struct DescribeVulsNumberResponse: TCResponseModel {
        /// 受影响的网站总数。
        public let impactSiteNumber: UInt64

        /// 已验证的网站总数。
        public let siteNumber: UInt64

        /// 高风险漏洞总数。
        public let vulsHighNumber: UInt64

        /// 中风险漏洞总数。
        public let vulsMiddleNumber: UInt64

        /// 低高风险漏洞总数。
        public let vulsLowNumber: UInt64

        /// 风险提示总数。
        public let vulsNoticeNumber: UInt64

        /// 扫描页面总数。
        public let pageCount: UInt64

        /// 已验证的网站列表。
        public let sites: [MonitorMiniSite]

        /// 受影响的网站列表。
        public let impactSites: [MonitorMiniSite]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case impactSiteNumber = "ImpactSiteNumber"
            case siteNumber = "SiteNumber"
            case vulsHighNumber = "VulsHighNumber"
            case vulsMiddleNumber = "VulsMiddleNumber"
            case vulsLowNumber = "VulsLowNumber"
            case vulsNoticeNumber = "VulsNoticeNumber"
            case pageCount = "PageCount"
            case sites = "Sites"
            case impactSites = "ImpactSites"
            case requestId = "RequestId"
        }
    }

    /// 查看当前漏洞总计数量
    ///
    /// 本接口 (DescribeVulsNumber) 用于查询用户网站的漏洞总计数量。
    @inlinable
    public func describeVulsNumber(_ input: DescribeVulsNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulsNumberResponse> {
        self.client.execute(action: "DescribeVulsNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看当前漏洞总计数量
    ///
    /// 本接口 (DescribeVulsNumber) 用于查询用户网站的漏洞总计数量。
    @inlinable
    public func describeVulsNumber(_ input: DescribeVulsNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulsNumberResponse {
        try await self.client.execute(action: "DescribeVulsNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看当前漏洞总计数量
    ///
    /// 本接口 (DescribeVulsNumber) 用于查询用户网站的漏洞总计数量。
    @inlinable
    public func describeVulsNumber(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulsNumberResponse> {
        self.describeVulsNumber(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查看当前漏洞总计数量
    ///
    /// 本接口 (DescribeVulsNumber) 用于查询用户网站的漏洞总计数量。
    @inlinable
    public func describeVulsNumber(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulsNumberResponse {
        try await self.describeVulsNumber(.init(), region: region, logger: logger, on: eventLoop)
    }
}
