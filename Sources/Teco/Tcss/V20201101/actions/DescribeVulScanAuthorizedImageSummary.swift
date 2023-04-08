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
    /// DescribeVulScanAuthorizedImageSummary请求参数结构体
    public struct DescribeVulScanAuthorizedImageSummaryRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeVulScanAuthorizedImageSummary返回参数结构体
    public struct DescribeVulScanAuthorizedImageSummaryResponse: TCResponseModel {
        /// 全部已授权的本地镜像数
        public let allAuthorizedImageCount: Int64

        /// 已授权未扫描的本地镜像数
        public let unScanAuthorizedImageCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case allAuthorizedImageCount = "AllAuthorizedImageCount"
            case unScanAuthorizedImageCount = "UnScanAuthorizedImageCount"
            case requestId = "RequestId"
        }
    }

    /// 统计漏洞扫描页已授权和未扫描镜像数
    @inlinable
    public func describeVulScanAuthorizedImageSummary(_ input: DescribeVulScanAuthorizedImageSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulScanAuthorizedImageSummaryResponse> {
        self.client.execute(action: "DescribeVulScanAuthorizedImageSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 统计漏洞扫描页已授权和未扫描镜像数
    @inlinable
    public func describeVulScanAuthorizedImageSummary(_ input: DescribeVulScanAuthorizedImageSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulScanAuthorizedImageSummaryResponse {
        try await self.client.execute(action: "DescribeVulScanAuthorizedImageSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 统计漏洞扫描页已授权和未扫描镜像数
    @inlinable
    public func describeVulScanAuthorizedImageSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulScanAuthorizedImageSummaryResponse> {
        self.describeVulScanAuthorizedImageSummary(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 统计漏洞扫描页已授权和未扫描镜像数
    @inlinable
    public func describeVulScanAuthorizedImageSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulScanAuthorizedImageSummaryResponse {
        try await self.describeVulScanAuthorizedImageSummary(.init(), region: region, logger: logger, on: eventLoop)
    }
}
