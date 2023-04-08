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
    /// DescribeAssetHostDetail请求参数结构体
    public struct DescribeAssetHostDetailRequest: TCRequestModel {
        /// 主机id
        public let hostId: String

        public init(hostId: String) {
            self.hostId = hostId
        }

        enum CodingKeys: String, CodingKey {
            case hostId = "HostId"
        }
    }

    /// DescribeAssetHostDetail返回参数结构体
    public struct DescribeAssetHostDetailResponse: TCResponseModel {
        /// 云镜uuid
        public let uuid: String

        /// 更新时间
        public let updateTime: String

        /// 主机名
        public let hostName: String

        /// 主机分组
        public let group: String

        /// 主机IP
        public let hostIP: String

        /// 操作系统
        public let osName: String

        /// agent版本
        public let agentVersion: String

        /// 内核版本
        public let kernelVersion: String

        /// docker版本
        public let dockerVersion: String

        /// docker api版本
        public let dockerAPIVersion: String

        /// docker go 版本
        public let dockerGoVersion: String

        /// docker 文件系统类型
        public let dockerFileSystemDriver: String

        /// docker root 目录
        public let dockerRootDir: String

        /// 镜像数
        public let imageCnt: UInt64

        /// 容器数
        public let containerCnt: UInt64

        /// k8s IP
        public let k8sMasterIP: String

        /// k8s version
        public let k8sVersion: String

        /// kube proxy
        public let kubeProxyVersion: String

        /// "UNINSTALL"："未安装","OFFLINE"："离线", "ONLINE"："防护中
        public let status: String

        /// 是否Containerd
        public let isContainerd: Bool

        /// 主机来源;"TENCENTCLOUD":"腾讯云服务器","OTHERCLOUD":"非腾讯云服务器"
        public let machineType: String

        /// 外网ip
        public let publicIp: String

        /// 主机实例ID
        public let instanceID: String

        /// 地域ID
        public let regionID: Int64

        /// 所属项目
        public let project: ProjectInfo

        /// 标签
        public let tags: [TagInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case uuid = "UUID"
            case updateTime = "UpdateTime"
            case hostName = "HostName"
            case group = "Group"
            case hostIP = "HostIP"
            case osName = "OsName"
            case agentVersion = "AgentVersion"
            case kernelVersion = "KernelVersion"
            case dockerVersion = "DockerVersion"
            case dockerAPIVersion = "DockerAPIVersion"
            case dockerGoVersion = "DockerGoVersion"
            case dockerFileSystemDriver = "DockerFileSystemDriver"
            case dockerRootDir = "DockerRootDir"
            case imageCnt = "ImageCnt"
            case containerCnt = "ContainerCnt"
            case k8sMasterIP = "K8sMasterIP"
            case k8sVersion = "K8sVersion"
            case kubeProxyVersion = "KubeProxyVersion"
            case status = "Status"
            case isContainerd = "IsContainerd"
            case machineType = "MachineType"
            case publicIp = "PublicIp"
            case instanceID = "InstanceID"
            case regionID = "RegionID"
            case project = "Project"
            case tags = "Tags"
            case requestId = "RequestId"
        }
    }

    /// 查询主机信息
    ///
    /// 查询主机详细信息
    @inlinable
    public func describeAssetHostDetail(_ input: DescribeAssetHostDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetHostDetailResponse> {
        self.client.execute(action: "DescribeAssetHostDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主机信息
    ///
    /// 查询主机详细信息
    @inlinable
    public func describeAssetHostDetail(_ input: DescribeAssetHostDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetHostDetailResponse {
        try await self.client.execute(action: "DescribeAssetHostDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主机信息
    ///
    /// 查询主机详细信息
    @inlinable
    public func describeAssetHostDetail(hostId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetHostDetailResponse> {
        self.describeAssetHostDetail(.init(hostId: hostId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主机信息
    ///
    /// 查询主机详细信息
    @inlinable
    public func describeAssetHostDetail(hostId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetHostDetailResponse {
        try await self.describeAssetHostDetail(.init(hostId: hostId), region: region, logger: logger, on: eventLoop)
    }
}
