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
    /// DescribeAssetContainerDetail请求参数结构体
    public struct DescribeAssetContainerDetailRequest: TCRequestModel {
        /// 容器id
        public let containerId: String

        public init(containerId: String) {
            self.containerId = containerId
        }

        enum CodingKeys: String, CodingKey {
            case containerId = "ContainerId"
        }
    }

    /// DescribeAssetContainerDetail返回参数结构体
    public struct DescribeAssetContainerDetailResponse: TCResponseModel {
        /// 主机id
        public let hostID: String

        /// 主机ip
        public let hostIP: String

        /// 容器名称
        public let containerName: String

        /// 运行状态
        public let status: String

        /// 运行账户
        public let runAs: String

        /// 命令行
        public let cmd: String

        /// CPU使用率 * 1000
        public let cpuUsage: UInt64

        /// 内存使用 KB
        public let ramUsage: UInt64

        /// 镜像名
        public let imageName: String

        /// 镜像ID
        public let imageID: String

        /// 归属POD
        public let pod: String

        /// k8s 主节点
        public let k8sMaster: String

        /// 容器内进程数
        public let processCnt: UInt64

        /// 容器内端口数
        public let portCnt: UInt64

        /// 组件数
        public let componentCnt: UInt64

        /// app数
        public let appCnt: UInt64

        /// websvc数
        public let webServiceCnt: UInt64

        /// 挂载
        public let mounts: [ContainerMount]

        /// 容器网络信息
        public let network: ContainerNetwork

        /// 创建时间
        public let createTime: String

        /// 镜像创建时间
        public let imageCreateTime: String

        /// 镜像大小
        public let imageSize: UInt64

        /// 主机状态 offline,online,pause
        public let hostStatus: String

        /// 网络状态
        /// 未隔离  	NORMAL
        /// 已隔离		ISOLATED
        /// 隔离中		ISOLATING
        /// 隔离失败	ISOLATE_FAILED
        /// 解除隔离中  RESTORING
        /// 解除隔离失败 RESTORE_FAILED
        public let netStatus: String

        /// 网络子状态
        public let netSubStatus: String

        /// 隔离来源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isolateSource: String?

        /// 隔离时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isolateTime: String?

        /// 节点ID
        public let nodeID: String

        /// 节点名称
        public let nodeName: String

        /// 节点子网ID
        public let nodeSubNetID: String

        /// 节点子网名称
        public let nodeSubNetName: String

        /// 节点子网网段
        public let nodeSubNetCIDR: String

        /// pod名称
        public let podName: String

        /// pod ip
        public let podIP: String

        /// pod状态
        public let podStatus: String

        /// 集群ID
        public let clusterID: String

        /// 集群名称
        public let clusterName: String

        /// 节点类型:NORMAL: 普通节点(默认值) SUPER: 超级节点
        public let nodeType: String

        /// 超级节点唯一id
        public let nodeUniqueID: String

        /// 外网ip
        public let publicIP: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hostID = "HostID"
            case hostIP = "HostIP"
            case containerName = "ContainerName"
            case status = "Status"
            case runAs = "RunAs"
            case cmd = "Cmd"
            case cpuUsage = "CPUUsage"
            case ramUsage = "RamUsage"
            case imageName = "ImageName"
            case imageID = "ImageID"
            case pod = "POD"
            case k8sMaster = "K8sMaster"
            case processCnt = "ProcessCnt"
            case portCnt = "PortCnt"
            case componentCnt = "ComponentCnt"
            case appCnt = "AppCnt"
            case webServiceCnt = "WebServiceCnt"
            case mounts = "Mounts"
            case network = "Network"
            case createTime = "CreateTime"
            case imageCreateTime = "ImageCreateTime"
            case imageSize = "ImageSize"
            case hostStatus = "HostStatus"
            case netStatus = "NetStatus"
            case netSubStatus = "NetSubStatus"
            case isolateSource = "IsolateSource"
            case isolateTime = "IsolateTime"
            case nodeID = "NodeID"
            case nodeName = "NodeName"
            case nodeSubNetID = "NodeSubNetID"
            case nodeSubNetName = "NodeSubNetName"
            case nodeSubNetCIDR = "NodeSubNetCIDR"
            case podName = "PodName"
            case podIP = "PodIP"
            case podStatus = "PodStatus"
            case clusterID = "ClusterID"
            case clusterName = "ClusterName"
            case nodeType = "NodeType"
            case nodeUniqueID = "NodeUniqueID"
            case publicIP = "PublicIP"
            case requestId = "RequestId"
        }
    }

    /// 查询容器信息
    ///
    /// 查询容器详细信息
    @inlinable
    public func describeAssetContainerDetail(_ input: DescribeAssetContainerDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetContainerDetailResponse> {
        self.client.execute(action: "DescribeAssetContainerDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器信息
    ///
    /// 查询容器详细信息
    @inlinable
    public func describeAssetContainerDetail(_ input: DescribeAssetContainerDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetContainerDetailResponse {
        try await self.client.execute(action: "DescribeAssetContainerDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器信息
    ///
    /// 查询容器详细信息
    @inlinable
    public func describeAssetContainerDetail(containerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetContainerDetailResponse> {
        self.describeAssetContainerDetail(.init(containerId: containerId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器信息
    ///
    /// 查询容器详细信息
    @inlinable
    public func describeAssetContainerDetail(containerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetContainerDetailResponse {
        try await self.describeAssetContainerDetail(.init(containerId: containerId), region: region, logger: logger, on: eventLoop)
    }
}
