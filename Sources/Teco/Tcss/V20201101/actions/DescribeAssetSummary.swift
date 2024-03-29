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
    /// DescribeAssetSummary请求参数结构体
    public struct DescribeAssetSummaryRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeAssetSummary返回参数结构体
    public struct DescribeAssetSummaryResponse: TCResponse {
        /// 应用个数
        public let appCnt: UInt64

        /// 容器个数
        public let containerCnt: UInt64

        /// 暂停的容器个数
        public let containerPause: UInt64

        /// 运行的容器个数
        public let containerRunning: UInt64

        /// 停止运行的容器个数
        public let containerStop: UInt64

        /// 创建时间
        public let createTime: String

        /// 数据库个数
        public let dbCnt: UInt64

        /// 镜像个数
        public let imageCnt: UInt64

        /// 主机在线个数
        public let hostOnline: UInt64

        /// 主机个数
        public let hostCnt: UInt64

        /// 有风险的镜像个数
        public let imageHasRiskInfoCnt: UInt64

        /// 有病毒的镜像个数
        public let imageHasVirusCnt: UInt64

        /// 有漏洞的镜像个数
        public let imageHasVulsCnt: UInt64

        /// 不受信任的镜像个数
        public let imageUntrustCnt: UInt64

        /// 监听的端口个数
        public let listenPortCnt: UInt64

        /// 进程个数
        public let processCnt: UInt64

        /// web服务个数
        public let webServiceCnt: UInt64

        /// 最近镜像扫描时间
        public let latestImageScanTime: String

        /// 风险镜像个数
        public let imageUnsafeCnt: UInt64

        /// 主机未安装agent数量
        public let hostUnInstallCnt: UInt64

        /// 超级节点个数
        public let superNodeCnt: UInt64

        /// 超级节点运行个数
        public let superNodeRunningCnt: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appCnt = "AppCnt"
            case containerCnt = "ContainerCnt"
            case containerPause = "ContainerPause"
            case containerRunning = "ContainerRunning"
            case containerStop = "ContainerStop"
            case createTime = "CreateTime"
            case dbCnt = "DbCnt"
            case imageCnt = "ImageCnt"
            case hostOnline = "HostOnline"
            case hostCnt = "HostCnt"
            case imageHasRiskInfoCnt = "ImageHasRiskInfoCnt"
            case imageHasVirusCnt = "ImageHasVirusCnt"
            case imageHasVulsCnt = "ImageHasVulsCnt"
            case imageUntrustCnt = "ImageUntrustCnt"
            case listenPortCnt = "ListenPortCnt"
            case processCnt = "ProcessCnt"
            case webServiceCnt = "WebServiceCnt"
            case latestImageScanTime = "LatestImageScanTime"
            case imageUnsafeCnt = "ImageUnsafeCnt"
            case hostUnInstallCnt = "HostUnInstallCnt"
            case superNodeCnt = "SuperNodeCnt"
            case superNodeRunningCnt = "SuperNodeRunningCnt"
            case requestId = "RequestId"
        }
    }

    /// 查询账户容器、镜像等统计信息
    @inlinable
    public func describeAssetSummary(_ input: DescribeAssetSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetSummaryResponse> {
        self.client.execute(action: "DescribeAssetSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账户容器、镜像等统计信息
    @inlinable
    public func describeAssetSummary(_ input: DescribeAssetSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetSummaryResponse {
        try await self.client.execute(action: "DescribeAssetSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账户容器、镜像等统计信息
    @inlinable
    public func describeAssetSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetSummaryResponse> {
        self.describeAssetSummary(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账户容器、镜像等统计信息
    @inlinable
    public func describeAssetSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetSummaryResponse {
        try await self.describeAssetSummary(.init(), region: region, logger: logger, on: eventLoop)
    }
}
