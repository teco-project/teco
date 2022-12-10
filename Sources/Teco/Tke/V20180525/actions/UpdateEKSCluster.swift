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

extension Tke {
    /// 修改弹性集群EKS
    ///
    /// 修改弹性集群名称等属性 
    @inlinable
    public func updateEKSCluster(_ input: UpdateEKSClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateEKSClusterResponse > {
        self.client.execute(action: "UpdateEKSCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改弹性集群EKS
    ///
    /// 修改弹性集群名称等属性 
    @inlinable
    public func updateEKSCluster(_ input: UpdateEKSClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEKSClusterResponse {
        try await self.client.execute(action: "UpdateEKSCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateEKSCluster请求参数结构体
    public struct UpdateEKSClusterRequest: TCRequestModel {
        /// 弹性集群Id
        public let clusterId: String
        
        /// 弹性集群名称
        public let clusterName: String?
        
        /// 弹性集群描述信息
        public let clusterDesc: String?
        
        /// 子网Id 列表
        public let subnetIds: [String]?
        
        /// 弹性容器集群公网访问LB信息
        public let publicLB: ClusterPublicLB
        
        /// 弹性容器集群内网访问LB信息
        public let internalLB: ClusterInternalLB
        
        /// Service 子网Id
        public let serviceSubnetId: String?
        
        /// 集群自定义的dns 服务器信息
        public let dnsServers: [DnsServerConf]?
        
        /// 是否清空自定义dns 服务器设置。为1 表示 是。其他表示 否。
        public let clearDnsServer: String?
        
        /// 将来删除集群时是否要删除cbs。默认为 FALSE
        public let needDeleteCbs: Bool?
        
        /// 标记是否是新的内外网。默认为false
        public let proxyLB: Bool?
        
        /// 扩展参数。须是map[string]string 的json 格式。
        public let extraParam: String?
        
        public init (clusterId: String, clusterName: String?, clusterDesc: String?, subnetIds: [String]?, publicLB: ClusterPublicLB, internalLB: ClusterInternalLB, serviceSubnetId: String?, dnsServers: [DnsServerConf]?, clearDnsServer: String?, needDeleteCbs: Bool?, proxyLB: Bool?, extraParam: String?) {
            self.clusterId = clusterId
            self.clusterName = clusterName
            self.clusterDesc = clusterDesc
            self.subnetIds = subnetIds
            self.publicLB = publicLB
            self.internalLB = internalLB
            self.serviceSubnetId = serviceSubnetId
            self.dnsServers = dnsServers
            self.clearDnsServer = clearDnsServer
            self.needDeleteCbs = needDeleteCbs
            self.proxyLB = proxyLB
            self.extraParam = extraParam
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case clusterName = "ClusterName"
            case clusterDesc = "ClusterDesc"
            case subnetIds = "SubnetIds"
            case publicLB = "PublicLB"
            case internalLB = "InternalLB"
            case serviceSubnetId = "ServiceSubnetId"
            case dnsServers = "DnsServers"
            case clearDnsServer = "ClearDnsServer"
            case needDeleteCbs = "NeedDeleteCbs"
            case proxyLB = "ProxyLB"
            case extraParam = "ExtraParam"
        }
    }
    
    /// UpdateEKSCluster返回参数结构体
    public struct UpdateEKSClusterResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
