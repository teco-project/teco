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
    /// DescribeClusterEndpoints请求参数结构体
    public struct DescribeClusterEndpointsRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeClusterEndpoints返回参数结构体
    public struct DescribeClusterEndpointsResponse: TCResponseModel {
        /// 集群APIServer的CA证书
        public let certificationAuthority: String

        /// 集群APIServer的外网访问地址
        public let clusterExternalEndpoint: String

        /// 集群APIServer的内网访问地址
        public let clusterIntranetEndpoint: String

        /// 集群APIServer的域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterDomain: String?

        /// 集群APIServer的外网访问ACL列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterExternalACL: [String]?

        /// 外网域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterExternalDomain: String?

        /// 内网域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterIntranetDomain: String?

        /// 外网安全组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let securityGroup: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificationAuthority = "CertificationAuthority"
            case clusterExternalEndpoint = "ClusterExternalEndpoint"
            case clusterIntranetEndpoint = "ClusterIntranetEndpoint"
            case clusterDomain = "ClusterDomain"
            case clusterExternalACL = "ClusterExternalACL"
            case clusterExternalDomain = "ClusterExternalDomain"
            case clusterIntranetDomain = "ClusterIntranetDomain"
            case securityGroup = "SecurityGroup"
            case requestId = "RequestId"
        }
    }

    /// 获取集群访问地址
    ///
    /// 获取集群的访问地址，包括内网地址，外网地址，外网域名，外网访问安全策略
    @inlinable
    public func describeClusterEndpoints(_ input: DescribeClusterEndpointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterEndpointsResponse> {
        self.client.execute(action: "DescribeClusterEndpoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群访问地址
    ///
    /// 获取集群的访问地址，包括内网地址，外网地址，外网域名，外网访问安全策略
    @inlinable
    public func describeClusterEndpoints(_ input: DescribeClusterEndpointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterEndpointsResponse {
        try await self.client.execute(action: "DescribeClusterEndpoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群访问地址
    ///
    /// 获取集群的访问地址，包括内网地址，外网地址，外网域名，外网访问安全策略
    @inlinable
    public func describeClusterEndpoints(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterEndpointsResponse> {
        self.describeClusterEndpoints(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取集群访问地址
    ///
    /// 获取集群的访问地址，包括内网地址，外网地址，外网域名，外网访问安全策略
    @inlinable
    public func describeClusterEndpoints(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterEndpointsResponse {
        try await self.describeClusterEndpoints(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
