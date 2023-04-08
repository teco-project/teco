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
    /// DescribeClusterSecurity请求参数结构体
    public struct DescribeClusterSecurityRequest: TCRequestModel {
        /// 集群 ID，请填写 查询集群列表 接口中返回的 clusterId 字段
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeClusterSecurity返回参数结构体
    public struct DescribeClusterSecurityResponse: TCResponseModel {
        /// 集群的账号名称
        public let userName: String

        /// 集群的访问密码
        public let password: String

        /// 集群访问CA证书
        public let certificationAuthority: String

        /// 集群访问的地址
        public let clusterExternalEndpoint: String

        /// 集群访问的域名
        public let domain: String

        /// 集群Endpoint地址
        public let pgwEndpoint: String

        /// 集群访问策略组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let securityPolicy: [String]?

        /// 集群Kubeconfig文件
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let kubeconfig: String?

        /// 集群JnsGw的访问地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jnsGwEndpoint: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case password = "Password"
            case certificationAuthority = "CertificationAuthority"
            case clusterExternalEndpoint = "ClusterExternalEndpoint"
            case domain = "Domain"
            case pgwEndpoint = "PgwEndpoint"
            case securityPolicy = "SecurityPolicy"
            case kubeconfig = "Kubeconfig"
            case jnsGwEndpoint = "JnsGwEndpoint"
            case requestId = "RequestId"
        }
    }

    /// 集群的密钥信息
    @inlinable
    public func describeClusterSecurity(_ input: DescribeClusterSecurityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterSecurityResponse> {
        self.client.execute(action: "DescribeClusterSecurity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群的密钥信息
    @inlinable
    public func describeClusterSecurity(_ input: DescribeClusterSecurityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterSecurityResponse {
        try await self.client.execute(action: "DescribeClusterSecurity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集群的密钥信息
    @inlinable
    public func describeClusterSecurity(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterSecurityResponse> {
        self.describeClusterSecurity(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 集群的密钥信息
    @inlinable
    public func describeClusterSecurity(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterSecurityResponse {
        try await self.describeClusterSecurity(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
