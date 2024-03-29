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

extension Yunjing {
    /// DescribeVulInfo请求参数结构体
    public struct DescribeVulInfoRequest: TCRequest {
        /// 漏洞种类ID。
        public let vulId: UInt64

        public init(vulId: UInt64) {
            self.vulId = vulId
        }

        enum CodingKeys: String, CodingKey {
            case vulId = "VulId"
        }
    }

    /// DescribeVulInfo返回参数结构体
    public struct DescribeVulInfoResponse: TCResponse {
        /// 漏洞种类ID。
        public let vulId: UInt64

        /// 漏洞名称。
        public let vulName: String

        /// 漏洞等级。
        public let vulLevel: String

        /// 漏洞类型。
        public let vulType: String

        /// 漏洞描述。
        public let description: String

        /// 修复方案。
        public let repairPlan: String

        /// 漏洞CVE。
        public let cveId: String

        /// 参考链接。
        public let reference: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vulId = "VulId"
            case vulName = "VulName"
            case vulLevel = "VulLevel"
            case vulType = "VulType"
            case description = "Description"
            case repairPlan = "RepairPlan"
            case cveId = "CveId"
            case reference = "Reference"
            case requestId = "RequestId"
        }
    }

    /// 获取漏洞详情
    ///
    /// 本接口 (DescribeVulInfo) 用于获取漏洞详情。
    @inlinable
    public func describeVulInfo(_ input: DescribeVulInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulInfoResponse> {
        self.client.execute(action: "DescribeVulInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取漏洞详情
    ///
    /// 本接口 (DescribeVulInfo) 用于获取漏洞详情。
    @inlinable
    public func describeVulInfo(_ input: DescribeVulInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulInfoResponse {
        try await self.client.execute(action: "DescribeVulInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取漏洞详情
    ///
    /// 本接口 (DescribeVulInfo) 用于获取漏洞详情。
    @inlinable
    public func describeVulInfo(vulId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulInfoResponse> {
        self.describeVulInfo(.init(vulId: vulId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取漏洞详情
    ///
    /// 本接口 (DescribeVulInfo) 用于获取漏洞详情。
    @inlinable
    public func describeVulInfo(vulId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulInfoResponse {
        try await self.describeVulInfo(.init(vulId: vulId), region: region, logger: logger, on: eventLoop)
    }
}
