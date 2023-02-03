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

extension Tke {
    /// DescribeClusterKubeconfig请求参数结构体
    public struct DescribeClusterKubeconfigRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 默认false 获取内网，是否获取外网访问的kubeconfig
        public let isExtranet: Bool?

        public init(clusterId: String, isExtranet: Bool? = nil) {
            self.clusterId = clusterId
            self.isExtranet = isExtranet
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case isExtranet = "IsExtranet"
        }
    }

    /// DescribeClusterKubeconfig返回参数结构体
    public struct DescribeClusterKubeconfigResponse: TCResponseModel {
        /// 子账户kubeconfig文件，可用于直接访问集群kube-apiserver
        public let kubeconfig: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case kubeconfig = "Kubeconfig"
            case requestId = "RequestId"
        }
    }

    /// 获取集群kubeconfig文件
    ///
    /// 获取集群的kubeconfig文件，不同子账户获取自己的kubeconfig文件，该文件中有每个子账户自己的kube-apiserver的客户端证书，默认首次调此接口时候创建客户端证书，时效20年，未授予任何权限，如果是集群所有者或者主账户，则默认是cluster-admin权限。
    @inlinable
    public func describeClusterKubeconfig(_ input: DescribeClusterKubeconfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterKubeconfigResponse> {
        self.client.execute(action: "DescribeClusterKubeconfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群kubeconfig文件
    ///
    /// 获取集群的kubeconfig文件，不同子账户获取自己的kubeconfig文件，该文件中有每个子账户自己的kube-apiserver的客户端证书，默认首次调此接口时候创建客户端证书，时效20年，未授予任何权限，如果是集群所有者或者主账户，则默认是cluster-admin权限。
    @inlinable
    public func describeClusterKubeconfig(_ input: DescribeClusterKubeconfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterKubeconfigResponse {
        try await self.client.execute(action: "DescribeClusterKubeconfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群kubeconfig文件
    ///
    /// 获取集群的kubeconfig文件，不同子账户获取自己的kubeconfig文件，该文件中有每个子账户自己的kube-apiserver的客户端证书，默认首次调此接口时候创建客户端证书，时效20年，未授予任何权限，如果是集群所有者或者主账户，则默认是cluster-admin权限。
    @inlinable
    public func describeClusterKubeconfig(clusterId: String, isExtranet: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterKubeconfigResponse> {
        let input = DescribeClusterKubeconfigRequest(clusterId: clusterId, isExtranet: isExtranet)
        return self.client.execute(action: "DescribeClusterKubeconfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群kubeconfig文件
    ///
    /// 获取集群的kubeconfig文件，不同子账户获取自己的kubeconfig文件，该文件中有每个子账户自己的kube-apiserver的客户端证书，默认首次调此接口时候创建客户端证书，时效20年，未授予任何权限，如果是集群所有者或者主账户，则默认是cluster-admin权限。
    @inlinable
    public func describeClusterKubeconfig(clusterId: String, isExtranet: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterKubeconfigResponse {
        let input = DescribeClusterKubeconfigRequest(clusterId: clusterId, isExtranet: isExtranet)
        return try await self.client.execute(action: "DescribeClusterKubeconfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
