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

extension Tke {
    /// DescribeEKSClusterCredential请求参数结构体
    public struct DescribeEKSClusterCredentialRequest: TCRequest {
        /// 集群Id
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeEKSClusterCredential返回参数结构体
    public struct DescribeEKSClusterCredentialResponse: TCResponse {
        /// 集群的接入地址信息
        public let addresses: [IPAddress]

        /// 集群的认证信息（token只有请求是主账号才返回，子账户请使用返回的kubeconfig）
        public let credential: ClusterCredential

        /// 集群的公网访问信息
        public let publicLB: ClusterPublicLB

        /// 集群的内网访问信息
        public let internalLB: ClusterInternalLB

        /// 标记是否新的内外网功能
        public let proxyLB: Bool

        /// 连接用户集群k8s 的Config
        public let kubeconfig: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case addresses = "Addresses"
            case credential = "Credential"
            case publicLB = "PublicLB"
            case internalLB = "InternalLB"
            case proxyLB = "ProxyLB"
            case kubeconfig = "Kubeconfig"
            case requestId = "RequestId"
        }
    }

    /// 获取弹性容器集群的认证信息
    ///
    /// 获取弹性容器集群的接入认证信息
    @inlinable
    public func describeEKSClusterCredential(_ input: DescribeEKSClusterCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSClusterCredentialResponse> {
        self.client.execute(action: "DescribeEKSClusterCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取弹性容器集群的认证信息
    ///
    /// 获取弹性容器集群的接入认证信息
    @inlinable
    public func describeEKSClusterCredential(_ input: DescribeEKSClusterCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSClusterCredentialResponse {
        try await self.client.execute(action: "DescribeEKSClusterCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取弹性容器集群的认证信息
    ///
    /// 获取弹性容器集群的接入认证信息
    @inlinable
    public func describeEKSClusterCredential(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEKSClusterCredentialResponse> {
        self.describeEKSClusterCredential(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取弹性容器集群的认证信息
    ///
    /// 获取弹性容器集群的接入认证信息
    @inlinable
    public func describeEKSClusterCredential(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSClusterCredentialResponse {
        try await self.describeEKSClusterCredential(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
