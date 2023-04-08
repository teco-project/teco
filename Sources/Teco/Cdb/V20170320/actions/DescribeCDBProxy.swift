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

extension Cdb {
    /// DescribeCDBProxy请求参数结构体
    public struct DescribeCDBProxyRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 代理组ID
        public let proxyGroupId: String?

        public init(instanceId: String, proxyGroupId: String? = nil) {
            self.instanceId = instanceId
            self.proxyGroupId = proxyGroupId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case proxyGroupId = "ProxyGroupId"
        }
    }

    /// DescribeCDBProxy返回参数结构体
    public struct DescribeCDBProxyResponse: TCResponseModel {
        /// 代理组基本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let baseGroup: BaseGroupInfo?

        /// 代理组地址信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let address: Address?

        /// 代理组节点信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxyNode: ProxyNodeInfo?

        /// 读写分析信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rwInstInfo: RWInfo?

        /// 连接池信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let connectionPoolInfo: ConnectionPoolInfo?

        /// 代理数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let count: UInt64?

        /// 代理信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxyGroup: [ProxyGroup]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case baseGroup = "BaseGroup"
            case address = "Address"
            case proxyNode = "ProxyNode"
            case rwInstInfo = "RWInstInfo"
            case connectionPoolInfo = "ConnectionPoolInfo"
            case count = "Count"
            case proxyGroup = "ProxyGroup"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库代理
    ///
    /// 查询数据库代理（待下线，替换接口QueryCDBProxy）
    @inlinable
    public func describeCDBProxy(_ input: DescribeCDBProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCDBProxyResponse> {
        self.client.execute(action: "DescribeCDBProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库代理
    ///
    /// 查询数据库代理（待下线，替换接口QueryCDBProxy）
    @inlinable
    public func describeCDBProxy(_ input: DescribeCDBProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCDBProxyResponse {
        try await self.client.execute(action: "DescribeCDBProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库代理
    ///
    /// 查询数据库代理（待下线，替换接口QueryCDBProxy）
    @inlinable
    public func describeCDBProxy(instanceId: String, proxyGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCDBProxyResponse> {
        self.describeCDBProxy(.init(instanceId: instanceId, proxyGroupId: proxyGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库代理
    ///
    /// 查询数据库代理（待下线，替换接口QueryCDBProxy）
    @inlinable
    public func describeCDBProxy(instanceId: String, proxyGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCDBProxyResponse {
        try await self.describeCDBProxy(.init(instanceId: instanceId, proxyGroupId: proxyGroupId), region: region, logger: logger, on: eventLoop)
    }
}
