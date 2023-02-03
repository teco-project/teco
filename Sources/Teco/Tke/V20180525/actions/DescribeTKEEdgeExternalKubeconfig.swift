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
    /// DescribeTKEEdgeExternalKubeconfig请求参数结构体
    public struct DescribeTKEEdgeExternalKubeconfigRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeTKEEdgeExternalKubeconfig返回参数结构体
    public struct DescribeTKEEdgeExternalKubeconfigResponse: TCResponseModel {
        /// kubeconfig文件内容
        public let kubeconfig: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case kubeconfig = "Kubeconfig"
            case requestId = "RequestId"
        }
    }

    /// 获取边缘计算外部访问的kubeconfig
    @inlinable
    public func describeTKEEdgeExternalKubeconfig(_ input: DescribeTKEEdgeExternalKubeconfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTKEEdgeExternalKubeconfigResponse> {
        self.client.execute(action: "DescribeTKEEdgeExternalKubeconfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取边缘计算外部访问的kubeconfig
    @inlinable
    public func describeTKEEdgeExternalKubeconfig(_ input: DescribeTKEEdgeExternalKubeconfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTKEEdgeExternalKubeconfigResponse {
        try await self.client.execute(action: "DescribeTKEEdgeExternalKubeconfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取边缘计算外部访问的kubeconfig
    @inlinable
    public func describeTKEEdgeExternalKubeconfig(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTKEEdgeExternalKubeconfigResponse> {
        let input = DescribeTKEEdgeExternalKubeconfigRequest(clusterId: clusterId)
        return self.client.execute(action: "DescribeTKEEdgeExternalKubeconfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取边缘计算外部访问的kubeconfig
    @inlinable
    public func describeTKEEdgeExternalKubeconfig(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTKEEdgeExternalKubeconfigResponse {
        let input = DescribeTKEEdgeExternalKubeconfigRequest(clusterId: clusterId)
        return try await self.client.execute(action: "DescribeTKEEdgeExternalKubeconfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
