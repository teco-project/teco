//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeTcssSummary请求参数结构体
    public struct DescribeTcssSummaryRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeTcssSummary返回参数结构体
    public struct DescribeTcssSummaryResponse: TCResponseModel {
        /// 镜像总数
        public let imageCnt: UInt64
        
        /// 已扫描镜像数
        public let scannedImageCnt: UInt64
        
        /// 待扫描镜像个数
        public let unScannedImageCnt: UInt64
        
        /// 本地镜像个数
        public let localImageCnt: UInt64
        
        /// 仓库镜像个数
        public let repositoryImageCnt: UInt64
        
        /// 风险本地镜像个数
        public let riskLocalImageCnt: UInt64
        
        /// 风险仓库镜像个数
        public let riskRepositoryImageCnt: UInt64
        
        /// 容器个数
        public let containerCnt: UInt64
        
        /// 风险容器个数
        public let riskContainerCnt: UInt64
        
        /// 集群个数
        public let clusterCnt: UInt64
        
        /// 风险集群个数
        public let riskClusterCnt: UInt64
        
        /// 待扫描漏洞个数
        public let unScannedVulCnt: UInt64
        
        /// 风险漏洞个数
        public let riskVulCnt: UInt64
        
        /// 安全基线待扫描项个数
        public let unScannedBaseLineCnt: UInt64
        
        /// 安全基线风险个数
        public let riskBaseLineCnt: UInt64
        
        /// 运行时(高危)待处理事件个数
        public let runtimeUnhandleEventCnt: UInt64
        
        /// 待扫描集群个数
        public let unScannedClusterCnt: UInt64
        
        /// 是否已扫描镜像
        public let scanImageStatus: Bool
        
        /// 是否已扫描集群
        public let scanClusterStatus: Bool
        
        /// 是否已扫描基线
        public let scanBaseLineStatus: Bool
        
        /// 是否已扫描漏洞
        public let scanVulStatus: Bool
        
        /// 漏洞影响镜像数
        public let vulRiskImageCnt: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case imageCnt = "ImageCnt"
            case scannedImageCnt = "ScannedImageCnt"
            case unScannedImageCnt = "UnScannedImageCnt"
            case localImageCnt = "LocalImageCnt"
            case repositoryImageCnt = "RepositoryImageCnt"
            case riskLocalImageCnt = "RiskLocalImageCnt"
            case riskRepositoryImageCnt = "RiskRepositoryImageCnt"
            case containerCnt = "ContainerCnt"
            case riskContainerCnt = "RiskContainerCnt"
            case clusterCnt = "ClusterCnt"
            case riskClusterCnt = "RiskClusterCnt"
            case unScannedVulCnt = "UnScannedVulCnt"
            case riskVulCnt = "RiskVulCnt"
            case unScannedBaseLineCnt = "UnScannedBaseLineCnt"
            case riskBaseLineCnt = "RiskBaseLineCnt"
            case runtimeUnhandleEventCnt = "RuntimeUnhandleEventCnt"
            case unScannedClusterCnt = "UnScannedClusterCnt"
            case scanImageStatus = "ScanImageStatus"
            case scanClusterStatus = "ScanClusterStatus"
            case scanBaseLineStatus = "ScanBaseLineStatus"
            case scanVulStatus = "ScanVulStatus"
            case vulRiskImageCnt = "VulRiskImageCnt"
            case requestId = "RequestId"
        }
    }
    
    /// 查询容器安全概览信息
    @inlinable
    public func describeTcssSummary(_ input: DescribeTcssSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTcssSummaryResponse > {
        self.client.execute(action: "DescribeTcssSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询容器安全概览信息
    @inlinable
    public func describeTcssSummary(_ input: DescribeTcssSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTcssSummaryResponse {
        try await self.client.execute(action: "DescribeTcssSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
