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

extension Cynosdb {
    /// ModifyProxyRwSplit请求参数结构体
    public struct ModifyProxyRwSplitRequest: TCRequest {
        /// 集群ID，例如cynosdbmysql-asd123
        public let clusterId: String

        /// 数据库代理组ID，例如cynosdbmysql-proxy-qwe123
        public let proxyGroupId: String

        /// 一致性类型；“eventual"-最终一致性, "session"-会话一致性, "global"-全局一致性
        public let consistencyType: String?

        /// 一致性超时时间。
        /// 取值范围：0~1000000（微秒）,设置0则表示若只读实例出现延迟, 导致一致性策略不满足, 请求将一直等待。
        public let consistencyTimeOut: String?

        /// 读写权重分配模式；系统自动分配："system"， 自定义："custom"
        public let weightMode: String?

        /// 实例只读权重。
        /// 该参数必填。
        public let instanceWeights: [ProxyInstanceWeight]?

        /// 是否开启故障转移，代理出现故障后，连接地址将路由到主实例，取值："yes" , "no"
        public let failOver: String?

        /// 是否自动添加只读实例，取值："yes" , "no"
        public let autoAddRo: String?

        /// 是否打开读写分离。
        /// 该参数已废弃，请通过RwType设置读写属性。
        public let openRw: String?

        /// 读写类型：
        /// READWRITE,READONLY
        public let rwType: String?

        /// 事务拆分。
        /// 在一个事务中拆分读和写到不同的实例上去执行。
        public let transSplit: Bool?

        /// 连接模式：
        /// nearby,balance
        public let accessMode: String?

        /// 是否打开连接池：
        /// yes,no
        public let openConnectionPool: String?

        /// 连接池类型：
        /// SessionConnectionPool
        public let connectionPoolType: String?

        /// 连接池时间。
        /// 可选范围:0~300（秒）
        public let connectionPoolTimeOut: Int64?

        public init(clusterId: String, proxyGroupId: String, consistencyType: String? = nil, consistencyTimeOut: String? = nil, weightMode: String? = nil, instanceWeights: [ProxyInstanceWeight]? = nil, failOver: String? = nil, autoAddRo: String? = nil, openRw: String? = nil, rwType: String? = nil, transSplit: Bool? = nil, accessMode: String? = nil, openConnectionPool: String? = nil, connectionPoolType: String? = nil, connectionPoolTimeOut: Int64? = nil) {
            self.clusterId = clusterId
            self.proxyGroupId = proxyGroupId
            self.consistencyType = consistencyType
            self.consistencyTimeOut = consistencyTimeOut
            self.weightMode = weightMode
            self.instanceWeights = instanceWeights
            self.failOver = failOver
            self.autoAddRo = autoAddRo
            self.openRw = openRw
            self.rwType = rwType
            self.transSplit = transSplit
            self.accessMode = accessMode
            self.openConnectionPool = openConnectionPool
            self.connectionPoolType = connectionPoolType
            self.connectionPoolTimeOut = connectionPoolTimeOut
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case proxyGroupId = "ProxyGroupId"
            case consistencyType = "ConsistencyType"
            case consistencyTimeOut = "ConsistencyTimeOut"
            case weightMode = "WeightMode"
            case instanceWeights = "InstanceWeights"
            case failOver = "FailOver"
            case autoAddRo = "AutoAddRo"
            case openRw = "OpenRw"
            case rwType = "RwType"
            case transSplit = "TransSplit"
            case accessMode = "AccessMode"
            case openConnectionPool = "OpenConnectionPool"
            case connectionPoolType = "ConnectionPoolType"
            case connectionPoolTimeOut = "ConnectionPoolTimeOut"
        }
    }

    /// ModifyProxyRwSplit返回参数结构体
    public struct ModifyProxyRwSplitResponse: TCResponse {
        /// 异步FlowId
        public let flowId: Int64

        /// 异步任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 配置数据库代理读写分离
    @inlinable
    public func modifyProxyRwSplit(_ input: ModifyProxyRwSplitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProxyRwSplitResponse> {
        self.client.execute(action: "ModifyProxyRwSplit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置数据库代理读写分离
    @inlinable
    public func modifyProxyRwSplit(_ input: ModifyProxyRwSplitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProxyRwSplitResponse {
        try await self.client.execute(action: "ModifyProxyRwSplit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置数据库代理读写分离
    @inlinable
    public func modifyProxyRwSplit(clusterId: String, proxyGroupId: String, consistencyType: String? = nil, consistencyTimeOut: String? = nil, weightMode: String? = nil, instanceWeights: [ProxyInstanceWeight]? = nil, failOver: String? = nil, autoAddRo: String? = nil, openRw: String? = nil, rwType: String? = nil, transSplit: Bool? = nil, accessMode: String? = nil, openConnectionPool: String? = nil, connectionPoolType: String? = nil, connectionPoolTimeOut: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProxyRwSplitResponse> {
        self.modifyProxyRwSplit(.init(clusterId: clusterId, proxyGroupId: proxyGroupId, consistencyType: consistencyType, consistencyTimeOut: consistencyTimeOut, weightMode: weightMode, instanceWeights: instanceWeights, failOver: failOver, autoAddRo: autoAddRo, openRw: openRw, rwType: rwType, transSplit: transSplit, accessMode: accessMode, openConnectionPool: openConnectionPool, connectionPoolType: connectionPoolType, connectionPoolTimeOut: connectionPoolTimeOut), region: region, logger: logger, on: eventLoop)
    }

    /// 配置数据库代理读写分离
    @inlinable
    public func modifyProxyRwSplit(clusterId: String, proxyGroupId: String, consistencyType: String? = nil, consistencyTimeOut: String? = nil, weightMode: String? = nil, instanceWeights: [ProxyInstanceWeight]? = nil, failOver: String? = nil, autoAddRo: String? = nil, openRw: String? = nil, rwType: String? = nil, transSplit: Bool? = nil, accessMode: String? = nil, openConnectionPool: String? = nil, connectionPoolType: String? = nil, connectionPoolTimeOut: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProxyRwSplitResponse {
        try await self.modifyProxyRwSplit(.init(clusterId: clusterId, proxyGroupId: proxyGroupId, consistencyType: consistencyType, consistencyTimeOut: consistencyTimeOut, weightMode: weightMode, instanceWeights: instanceWeights, failOver: failOver, autoAddRo: autoAddRo, openRw: openRw, rwType: rwType, transSplit: transSplit, accessMode: accessMode, openConnectionPool: openConnectionPool, connectionPoolType: connectionPoolType, connectionPoolTimeOut: connectionPoolTimeOut), region: region, logger: logger, on: eventLoop)
    }
}
