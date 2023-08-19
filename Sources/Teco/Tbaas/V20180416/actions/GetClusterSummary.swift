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

extension Tbaas {
    /// GetClusterSummary请求参数结构体
    public struct GetClusterSummaryRequest: TCRequest {
        /// 模块名称，固定字段：cluster_mng
        public let module: String

        /// 操作名称，固定字段：cluster_summary
        public let operation: String

        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 组织ID，固定字段：0
        public let groupId: UInt64

        /// 调用接口的组织名称，可以在组织管理列表中获取当前组织的名称
        public let groupName: String

        public init(module: String, operation: String, clusterId: String, groupId: UInt64, groupName: String) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.groupId = groupId
            self.groupName = groupName
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case groupName = "GroupName"
        }
    }

    /// GetClusterSummary返回参数结构体
    public struct GetClusterSummaryResponse: TCResponse {
        /// 网络通道总数量
        public let totalChannelCount: UInt64

        /// 当前组织创建的通道数量
        public let myChannelCount: UInt64

        /// 当前组织加入的通道数量
        public let joinChannelCount: UInt64

        /// 网络节点总数量
        public let totalPeerCount: UInt64

        /// 当前组织创建的节点数量
        public let myPeerCount: UInt64

        /// 其他组织创建的节点数量
        public let orderCount: UInt64

        /// 网络组织总数量
        public let totalGroupCount: UInt64

        /// 当前组织创建的组织数量
        public let myGroupCount: UInt64

        /// 网络智能合约总数量
        public let totalChaincodeCount: UInt64

        /// 最近7天发起的智能合约数量
        public let recentChaincodeCount: UInt64

        /// 当前组织发起的智能合约数量
        public let myChaincodeCount: UInt64

        /// 当前组织的证书总数量
        public let totalCertCount: UInt64

        /// 颁发给当前组织的证书数量
        public let tlsCertCount: UInt64

        /// 网络背书节点证书数量
        public let peerCertCount: UInt64

        /// 当前组织业务证书数量
        public let clientCertCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalChannelCount = "TotalChannelCount"
            case myChannelCount = "MyChannelCount"
            case joinChannelCount = "JoinChannelCount"
            case totalPeerCount = "TotalPeerCount"
            case myPeerCount = "MyPeerCount"
            case orderCount = "OrderCount"
            case totalGroupCount = "TotalGroupCount"
            case myGroupCount = "MyGroupCount"
            case totalChaincodeCount = "TotalChaincodeCount"
            case recentChaincodeCount = "RecentChaincodeCount"
            case myChaincodeCount = "MyChaincodeCount"
            case totalCertCount = "TotalCertCount"
            case tlsCertCount = "TlsCertCount"
            case peerCertCount = "PeerCertCount"
            case clientCertCount = "ClientCertCount"
            case requestId = "RequestId"
        }
    }

    /// 获取区块链网络概要
    @inlinable
    public func getClusterSummary(_ input: GetClusterSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetClusterSummaryResponse> {
        self.client.execute(action: "GetClusterSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取区块链网络概要
    @inlinable
    public func getClusterSummary(_ input: GetClusterSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetClusterSummaryResponse {
        try await self.client.execute(action: "GetClusterSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取区块链网络概要
    @inlinable
    public func getClusterSummary(module: String, operation: String, clusterId: String, groupId: UInt64, groupName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetClusterSummaryResponse> {
        self.getClusterSummary(.init(module: module, operation: operation, clusterId: clusterId, groupId: groupId, groupName: groupName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取区块链网络概要
    @inlinable
    public func getClusterSummary(module: String, operation: String, clusterId: String, groupId: UInt64, groupName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetClusterSummaryResponse {
        try await self.getClusterSummary(.init(module: module, operation: operation, clusterId: clusterId, groupId: groupId, groupName: groupName), region: region, logger: logger, on: eventLoop)
    }
}
