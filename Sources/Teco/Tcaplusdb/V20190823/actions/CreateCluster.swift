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

import TecoCore

extension Tcaplusdb {
    /// CreateCluster请求参数结构体
    public struct CreateClusterRequest: TCRequestModel {
        /// 集群数据描述语言类型，如：`PROTO`，`TDR`或`MIX`
        public let idlType: String

        /// 集群名称，可使用中文或英文字符，最大长度32个字符
        public let clusterName: String

        /// 集群所绑定的私有网络实例ID，形如：vpc-f49l6u0z
        public let vpcId: String

        /// 集群所绑定的子网实例ID，形如：subnet-pxir56ns
        public let subnetId: String

        /// 集群访问密码，必须是a-zA-Z0-9的字符,且必须包含数字和大小写字母
        public let password: String

        /// 集群标签列表
        public let resourceTags: [TagInfoUnit]?

        /// 集群是否开启IPv6功能
        public let ipv6Enable: Int64?

        /// 独占集群占用的svr机器
        public let serverList: [MachineInfo]?

        /// 独占集群占用的proxy机器
        public let proxyList: [MachineInfo]?

        /// 集群类型1共享2独占
        public let clusterType: Int64?

        /// 密码认证类型，0 静态认证， 1 签名认证
        public let authType: Int64?

        public init(idlType: String, clusterName: String, vpcId: String, subnetId: String, password: String, resourceTags: [TagInfoUnit]? = nil, ipv6Enable: Int64? = nil, serverList: [MachineInfo]? = nil, proxyList: [MachineInfo]? = nil, clusterType: Int64? = nil, authType: Int64? = nil) {
            self.idlType = idlType
            self.clusterName = clusterName
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.password = password
            self.resourceTags = resourceTags
            self.ipv6Enable = ipv6Enable
            self.serverList = serverList
            self.proxyList = proxyList
            self.clusterType = clusterType
            self.authType = authType
        }

        enum CodingKeys: String, CodingKey {
            case idlType = "IdlType"
            case clusterName = "ClusterName"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case password = "Password"
            case resourceTags = "ResourceTags"
            case ipv6Enable = "Ipv6Enable"
            case serverList = "ServerList"
            case proxyList = "ProxyList"
            case clusterType = "ClusterType"
            case authType = "AuthType"
        }
    }

    /// CreateCluster返回参数结构体
    public struct CreateClusterResponse: TCResponseModel {
        /// 集群ID
        public let clusterId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case requestId = "RequestId"
        }
    }

    /// 创建集群
    ///
    /// 本接口用于创建TcaplusDB集群
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建集群
    ///
    /// 本接口用于创建TcaplusDB集群
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建集群
    ///
    /// 本接口用于创建TcaplusDB集群
    @inlinable
    public func createCluster(idlType: String, clusterName: String, vpcId: String, subnetId: String, password: String, resourceTags: [TagInfoUnit]? = nil, ipv6Enable: Int64? = nil, serverList: [MachineInfo]? = nil, proxyList: [MachineInfo]? = nil, clusterType: Int64? = nil, authType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.createCluster(.init(idlType: idlType, clusterName: clusterName, vpcId: vpcId, subnetId: subnetId, password: password, resourceTags: resourceTags, ipv6Enable: ipv6Enable, serverList: serverList, proxyList: proxyList, clusterType: clusterType, authType: authType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集群
    ///
    /// 本接口用于创建TcaplusDB集群
    @inlinable
    public func createCluster(idlType: String, clusterName: String, vpcId: String, subnetId: String, password: String, resourceTags: [TagInfoUnit]? = nil, ipv6Enable: Int64? = nil, serverList: [MachineInfo]? = nil, proxyList: [MachineInfo]? = nil, clusterType: Int64? = nil, authType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.createCluster(.init(idlType: idlType, clusterName: clusterName, vpcId: vpcId, subnetId: subnetId, password: password, resourceTags: resourceTags, ipv6Enable: ipv6Enable, serverList: serverList, proxyList: proxyList, clusterType: clusterType, authType: authType), region: region, logger: logger, on: eventLoop)
    }
}
