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

extension Wedata {
    /// 获取TKE集群列表
    @inlinable
    public func describeInLongTkeClusterList(_ input: DescribeInLongTkeClusterListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInLongTkeClusterListResponse > {
        self.client.execute(action: "DescribeInLongTkeClusterList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取TKE集群列表
    @inlinable
    public func describeInLongTkeClusterList(_ input: DescribeInLongTkeClusterListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInLongTkeClusterListResponse {
        try await self.client.execute(action: "DescribeInLongTkeClusterList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInLongTkeClusterList请求参数结构体
    public struct DescribeInLongTkeClusterListRequest: TCRequestModel {
        /// WeData项目ID
        public let projectId: String
        
        /// TKE集群地域
        public let tkeRegion: String
        
        /// 集群名称。
        /// 多个名称用逗号连接。
        public let clusterName: String?
        
        /// TKE集群状态 (Running 运行中 Creating 创建中 Initializing 创建中 Idling 闲置中 Abnormal 异常 Failed 异常 Terminating 删除中 Deleting 删除中 Scaling 规模调整中 Upgrading 升级中 Isolated 欠费隔离中 NodeUpgrading 节点升级中 Recovering 唤醒中 Activating 激活中 MasterScaling Master扩缩容中 Waiting 等待注册 ClusterLevelUpgrading 调整规格中 ResourceIsolate 隔离中 ResourceIsolated 已隔离 ResourceReverse 冲正中 Trading 集群开通中 ResourceReversal 集群冲正 ClusterLevelTrading 集群变配交易中)
        /// 多个状态用逗号连接。
        public let status: String?
        
        /// 是否安装Agent，true: 是，false: 否
        public let hasAgent: Bool?
        
        /// 集群类型，托管集群：MANAGED_CLUSTER，独立集群：INDEPENDENT_CLUSTER。
        /// 多个集群用逗号连接。
        public let clusterType: String?
        
        /// 分页页码，从1开始，默认：1
        public let pageIndex: UInt64?
        
        /// 分页每页记录数，默认10
        public let pageSize: UInt64?
        
        public init (projectId: String, tkeRegion: String, clusterName: String?, status: String?, hasAgent: Bool?, clusterType: String?, pageIndex: UInt64?, pageSize: UInt64?) {
            self.projectId = projectId
            self.tkeRegion = tkeRegion
            self.clusterName = clusterName
            self.status = status
            self.hasAgent = hasAgent
            self.clusterType = clusterType
            self.pageIndex = pageIndex
            self.pageSize = pageSize
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case tkeRegion = "TkeRegion"
            case clusterName = "ClusterName"
            case status = "Status"
            case hasAgent = "HasAgent"
            case clusterType = "ClusterType"
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
        }
    }
    
    /// DescribeInLongTkeClusterList返回参数结构体
    public struct DescribeInLongTkeClusterListResponse: TCResponseModel {
        /// TKE集群信息
        public let items: [InLongTkeDetail]
        
        /// 页码
        public let pageIndex: UInt64
        
        /// 每页记录数
        public let pageSize: UInt64
        
        /// 总记录数
        public let totalCount: UInt64
        
        /// 总页数
        public let totalPage: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case pageIndex = "PageIndex"
            case pageSize = "PageSize"
            case totalCount = "TotalCount"
            case totalPage = "TotalPage"
            case requestId = "RequestId"
        }
    }
}
