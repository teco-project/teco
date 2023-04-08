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
    /// DescribeNewestVul请求参数结构体
    public struct DescribeNewestVulRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeNewestVul返回参数结构体
    public struct DescribeNewestVulResponse: TCResponseModel {
        /// 漏洞PocID
        public let pocID: String

        /// 漏洞名称
        public let vulName: String

        /// 披露时间
        public let submitTime: String

        /// 应急漏洞风险情况：NOT_SCAN：未扫描，SCANNING：扫描中，SCANNED：已扫描
        public let status: String

        /// 漏洞CVEID
        public let cveid: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pocID = "PocID"
            case vulName = "VulName"
            case submitTime = "SubmitTime"
            case status = "Status"
            case cveid = "CVEID"
            case requestId = "RequestId"
        }
    }

    /// 查询最新披露漏洞列表
    @inlinable
    public func describeNewestVul(_ input: DescribeNewestVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNewestVulResponse> {
        self.client.execute(action: "DescribeNewestVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询最新披露漏洞列表
    @inlinable
    public func describeNewestVul(_ input: DescribeNewestVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNewestVulResponse {
        try await self.client.execute(action: "DescribeNewestVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询最新披露漏洞列表
    @inlinable
    public func describeNewestVul(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNewestVulResponse> {
        self.describeNewestVul(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询最新披露漏洞列表
    @inlinable
    public func describeNewestVul(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNewestVulResponse {
        try await self.describeNewestVul(.init(), region: region, logger: logger, on: eventLoop)
    }
}
