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
    /// DescribeVulScanInfo请求参数结构体
    public struct DescribeVulScanInfoRequest: TCRequestModel {
        /// 本地镜像漏洞扫描任务ID，无则返回最近一次的漏洞任务扫描
        public let localTaskID: Int64?

        /// 仓库镜像漏洞扫描任务ID，无则返回最近一次的漏洞任务扫描
        public let registryTaskID: Int64?

        public init(localTaskID: Int64? = nil, registryTaskID: Int64? = nil) {
            self.localTaskID = localTaskID
            self.registryTaskID = registryTaskID
        }

        enum CodingKeys: String, CodingKey {
            case localTaskID = "LocalTaskID"
            case registryTaskID = "RegistryTaskID"
        }
    }

    /// DescribeVulScanInfo返回参数结构体
    public struct DescribeVulScanInfoResponse: TCResponseModel {
        /// 本次扫描的本地镜像总数
        public let localImageScanCount: Int64

        /// 忽略的漏洞数量
        public let ignoreVulCount: Int64

        /// 漏洞扫描的开始时间
        public let scanStartTime: String

        /// 漏洞扫描的结束时间
        public let scanEndTime: String

        /// 发现风险镜像数量
        public let foundRiskImageCount: Int64

        /// 本地发现漏洞数量
        public let foundVulCount: Int64

        /// 扫描进度
        public let scanProgress: Float

        /// 本次扫描的仓库镜像总数
        public let registryImageScanCount: Int64

        /// 本地镜像最近一次的漏洞任务扫描ID
        public let localTaskID: Int64

        /// 扫描状态:NOT_SCAN:未扫描，SCANNING:扫描中,SCANNED:完成，CANCELED：扫描停止
        public let status: String

        /// 剩余时间，秒
        public let remainingTime: Float

        /// 仓库镜像最近一次的漏洞任务扫描ID
        public let registryTaskID: Int64

        /// 仓库发现漏洞数量
        public let registryFoundVulCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case localImageScanCount = "LocalImageScanCount"
            case ignoreVulCount = "IgnoreVulCount"
            case scanStartTime = "ScanStartTime"
            case scanEndTime = "ScanEndTime"
            case foundRiskImageCount = "FoundRiskImageCount"
            case foundVulCount = "FoundVulCount"
            case scanProgress = "ScanProgress"
            case registryImageScanCount = "RegistryImageScanCount"
            case localTaskID = "LocalTaskID"
            case status = "Status"
            case remainingTime = "RemainingTime"
            case registryTaskID = "RegistryTaskID"
            case registryFoundVulCount = "RegistryFoundVulCount"
            case requestId = "RequestId"
        }
    }

    /// 查询漏洞扫描任务信息
    @inlinable
    public func describeVulScanInfo(_ input: DescribeVulScanInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulScanInfoResponse> {
        self.client.execute(action: "DescribeVulScanInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描任务信息
    @inlinable
    public func describeVulScanInfo(_ input: DescribeVulScanInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulScanInfoResponse {
        try await self.client.execute(action: "DescribeVulScanInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞扫描任务信息
    @inlinable
    public func describeVulScanInfo(localTaskID: Int64? = nil, registryTaskID: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulScanInfoResponse> {
        self.describeVulScanInfo(.init(localTaskID: localTaskID, registryTaskID: registryTaskID), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描任务信息
    @inlinable
    public func describeVulScanInfo(localTaskID: Int64? = nil, registryTaskID: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulScanInfoResponse {
        try await self.describeVulScanInfo(.init(localTaskID: localTaskID, registryTaskID: registryTaskID), region: region, logger: logger, on: eventLoop)
    }
}
