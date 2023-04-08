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
    /// DescribeClusterReleaseDetails请求参数结构体
    public struct DescribeClusterReleaseDetailsRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 应用名称
        public let name: String

        /// 应用所在命名空间
        public let namespace: String

        /// 集群类型
        public let clusterType: String?

        public init(clusterId: String, name: String, namespace: String, clusterType: String? = nil) {
            self.clusterId = clusterId
            self.name = name
            self.namespace = namespace
            self.clusterType = clusterType
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case name = "Name"
            case namespace = "Namespace"
            case clusterType = "ClusterType"
        }
    }

    /// DescribeClusterReleaseDetails返回参数结构体
    public struct DescribeClusterReleaseDetailsResponse: TCResponseModel {
        /// 应用详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let release: ReleaseDetails?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case release = "Release"
            case requestId = "RequestId"
        }
    }

    /// 查询集群已安装应用详情
    ///
    /// 查询通过应用市场安装的某个应用详情
    @inlinable
    public func describeClusterReleaseDetails(_ input: DescribeClusterReleaseDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterReleaseDetailsResponse> {
        self.client.execute(action: "DescribeClusterReleaseDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群已安装应用详情
    ///
    /// 查询通过应用市场安装的某个应用详情
    @inlinable
    public func describeClusterReleaseDetails(_ input: DescribeClusterReleaseDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterReleaseDetailsResponse {
        try await self.client.execute(action: "DescribeClusterReleaseDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群已安装应用详情
    ///
    /// 查询通过应用市场安装的某个应用详情
    @inlinable
    public func describeClusterReleaseDetails(clusterId: String, name: String, namespace: String, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterReleaseDetailsResponse> {
        self.describeClusterReleaseDetails(.init(clusterId: clusterId, name: name, namespace: namespace, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群已安装应用详情
    ///
    /// 查询通过应用市场安装的某个应用详情
    @inlinable
    public func describeClusterReleaseDetails(clusterId: String, name: String, namespace: String, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterReleaseDetailsResponse {
        try await self.describeClusterReleaseDetails(.init(clusterId: clusterId, name: name, namespace: namespace, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }
}
