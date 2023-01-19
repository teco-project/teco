//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeContainerAssetSummary请求参数结构体
    public struct DescribeContainerAssetSummaryRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeContainerAssetSummary返回参数结构体
    public struct DescribeContainerAssetSummaryResponse: TCResponseModel {
        /// 容器总数
        public let containerTotalCnt: UInt64

        /// 正在运行容器数量
        public let containerRunningCnt: UInt64

        /// 暂停运行容器数量
        public let containerPauseCnt: UInt64

        /// 停止运行容器数量
        public let containerStopped: UInt64

        /// 本地镜像数量
        public let imageCnt: UInt64

        /// 主机节点数量
        public let hostCnt: UInt64

        /// 主机正在运行节点数量
        public let hostRunningCnt: UInt64

        /// 主机离线节点数量
        public let hostOfflineCnt: UInt64

        /// 镜像仓库数量
        public let imageRegistryCnt: UInt64

        /// 镜像总数
        public let imageTotalCnt: UInt64

        /// 主机未安装agent数量
        public let hostUnInstallCnt: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case containerTotalCnt = "ContainerTotalCnt"
            case containerRunningCnt = "ContainerRunningCnt"
            case containerPauseCnt = "ContainerPauseCnt"
            case containerStopped = "ContainerStopped"
            case imageCnt = "ImageCnt"
            case hostCnt = "HostCnt"
            case hostRunningCnt = "HostRunningCnt"
            case hostOfflineCnt = "HostOfflineCnt"
            case imageRegistryCnt = "ImageRegistryCnt"
            case imageTotalCnt = "ImageTotalCnt"
            case hostUnInstallCnt = "HostUnInstallCnt"
            case requestId = "RequestId"
        }
    }

    /// 查询容器安全资产概览
    ///
    /// 查询容器资产概览信息
    @inlinable
    public func describeContainerAssetSummary(_ input: DescribeContainerAssetSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerAssetSummaryResponse> {
        self.client.execute(action: "DescribeContainerAssetSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器安全资产概览
    ///
    /// 查询容器资产概览信息
    @inlinable
    public func describeContainerAssetSummary(_ input: DescribeContainerAssetSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerAssetSummaryResponse {
        try await self.client.execute(action: "DescribeContainerAssetSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器安全资产概览
    ///
    /// 查询容器资产概览信息
    @inlinable
    public func describeContainerAssetSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerAssetSummaryResponse> {
        self.describeContainerAssetSummary(DescribeContainerAssetSummaryRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器安全资产概览
    ///
    /// 查询容器资产概览信息
    @inlinable
    public func describeContainerAssetSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerAssetSummaryResponse {
        try await self.describeContainerAssetSummary(DescribeContainerAssetSummaryRequest(), region: region, logger: logger, on: eventLoop)
    }
}
