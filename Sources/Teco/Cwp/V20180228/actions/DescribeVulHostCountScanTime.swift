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

extension Cwp {
    /// DescribeVulHostCountScanTime请求参数结构体
    public struct DescribeVulHostCountScanTimeRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeVulHostCountScanTime返回参数结构体
    public struct DescribeVulHostCountScanTimeResponse: TCResponseModel {
        /// 总漏洞数
        public let totalVulCount: UInt64

        /// 漏洞影响主机数
        public let vulHostCount: UInt64

        /// 扫描时间
        public let scanTime: String

        /// 是否第一次检测
        public let ifFirstScan: Bool

        /// 运行中的任务号, 没有任务则为0
        public let taskId: UInt64

        /// 最后一次修复漏洞的时间
        public let lastFixTime: String

        /// 是否有支持自动修复的漏洞事件
        public let hadAutoFixVul: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalVulCount = "TotalVulCount"
            case vulHostCount = "VulHostCount"
            case scanTime = "ScanTime"
            case ifFirstScan = "IfFirstScan"
            case taskId = "TaskId"
            case lastFixTime = "LastFixTime"
            case hadAutoFixVul = "hadAutoFixVul"
            case requestId = "RequestId"
        }
    }

    /// 获取待处理漏洞数+影响主机数
    @inlinable
    public func describeVulHostCountScanTime(_ input: DescribeVulHostCountScanTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulHostCountScanTimeResponse> {
        self.client.execute(action: "DescribeVulHostCountScanTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取待处理漏洞数+影响主机数
    @inlinable
    public func describeVulHostCountScanTime(_ input: DescribeVulHostCountScanTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulHostCountScanTimeResponse {
        try await self.client.execute(action: "DescribeVulHostCountScanTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取待处理漏洞数+影响主机数
    @inlinable
    public func describeVulHostCountScanTime(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulHostCountScanTimeResponse> {
        self.describeVulHostCountScanTime(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取待处理漏洞数+影响主机数
    @inlinable
    public func describeVulHostCountScanTime(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulHostCountScanTimeResponse {
        try await self.describeVulHostCountScanTime(.init(), region: region, logger: logger, on: eventLoop)
    }
}
