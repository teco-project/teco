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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cynosdb {
    /// SwitchProxyVpc请求参数结构体
    public struct SwitchProxyVpcRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 字符串vpc id
        public let uniqVpcId: String

        /// 字符串子网id
        public let uniqSubnetId: String

        /// 旧地址回收时间
        public let oldIpReserveHours: Int64

        /// 数据库代理组Id（该参数为必填项，可以通过DescribeProxies接口获得）
        public let proxyGroupId: String?

        public init(clusterId: String, uniqVpcId: String, uniqSubnetId: String, oldIpReserveHours: Int64, proxyGroupId: String? = nil) {
            self.clusterId = clusterId
            self.uniqVpcId = uniqVpcId
            self.uniqSubnetId = uniqSubnetId
            self.oldIpReserveHours = oldIpReserveHours
            self.proxyGroupId = proxyGroupId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case uniqVpcId = "UniqVpcId"
            case uniqSubnetId = "UniqSubnetId"
            case oldIpReserveHours = "OldIpReserveHours"
            case proxyGroupId = "ProxyGroupId"
        }
    }

    /// SwitchProxyVpc返回参数结构体
    public struct SwitchProxyVpcResponse: TCResponseModel {
        /// 异步任务id。
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 更换数据库代理vpc
    ///
    /// 本接口(SwitchProxyVpc)更换数据库代理vpc
    @inlinable
    public func switchProxyVpc(_ input: SwitchProxyVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchProxyVpcResponse> {
        self.client.execute(action: "SwitchProxyVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更换数据库代理vpc
    ///
    /// 本接口(SwitchProxyVpc)更换数据库代理vpc
    @inlinable
    public func switchProxyVpc(_ input: SwitchProxyVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchProxyVpcResponse {
        try await self.client.execute(action: "SwitchProxyVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更换数据库代理vpc
    ///
    /// 本接口(SwitchProxyVpc)更换数据库代理vpc
    @inlinable
    public func switchProxyVpc(clusterId: String, uniqVpcId: String, uniqSubnetId: String, oldIpReserveHours: Int64, proxyGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchProxyVpcResponse> {
        self.switchProxyVpc(.init(clusterId: clusterId, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, oldIpReserveHours: oldIpReserveHours, proxyGroupId: proxyGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 更换数据库代理vpc
    ///
    /// 本接口(SwitchProxyVpc)更换数据库代理vpc
    @inlinable
    public func switchProxyVpc(clusterId: String, uniqVpcId: String, uniqSubnetId: String, oldIpReserveHours: Int64, proxyGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchProxyVpcResponse {
        try await self.switchProxyVpc(.init(clusterId: clusterId, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, oldIpReserveHours: oldIpReserveHours, proxyGroupId: proxyGroupId), region: region, logger: logger, on: eventLoop)
    }
}
