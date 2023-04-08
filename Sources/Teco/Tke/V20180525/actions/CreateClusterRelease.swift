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
    /// CreateClusterRelease请求参数结构体
    public struct CreateClusterReleaseRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 应用名称
        public let name: String

        /// 应用命名空间
        public let namespace: String

        /// 制品名称或从第三方repo 安装chart时，制品压缩包下载地址, 不支持重定向类型chart 地址，结尾为*.tgz
        public let chart: String

        /// 自定义参数
        public let values: ReleaseValues?

        /// 制品来源，范围：tke 应用市场/第三方chart
        public let chartFrom: String?

        /// 制品版本
        public let chartVersion: String?

        /// 制品仓库URL地址
        public let chartRepoURL: String?

        /// 制品访问用户名
        public let username: String?

        /// 制品访问密码
        public let password: String?

        /// 制品命名空间
        public let chartNamespace: String?

        /// 集群类型，支持传 tke, eks, tkeedge, exernal(注册集群）
        public let clusterType: String?

        public init(clusterId: String, name: String, namespace: String, chart: String, values: ReleaseValues? = nil, chartFrom: String? = nil, chartVersion: String? = nil, chartRepoURL: String? = nil, username: String? = nil, password: String? = nil, chartNamespace: String? = nil, clusterType: String? = nil) {
            self.clusterId = clusterId
            self.name = name
            self.namespace = namespace
            self.chart = chart
            self.values = values
            self.chartFrom = chartFrom
            self.chartVersion = chartVersion
            self.chartRepoURL = chartRepoURL
            self.username = username
            self.password = password
            self.chartNamespace = chartNamespace
            self.clusterType = clusterType
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case name = "Name"
            case namespace = "Namespace"
            case chart = "Chart"
            case values = "Values"
            case chartFrom = "ChartFrom"
            case chartVersion = "ChartVersion"
            case chartRepoURL = "ChartRepoURL"
            case username = "Username"
            case password = "Password"
            case chartNamespace = "ChartNamespace"
            case clusterType = "ClusterType"
        }
    }

    /// CreateClusterRelease返回参数结构体
    public struct CreateClusterReleaseResponse: TCResponseModel {
        /// 应用详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let release: PendingRelease?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case release = "Release"
            case requestId = "RequestId"
        }
    }

    /// 集群安装应用
    ///
    /// 在应用市场中给集群创建应用
    @inlinable
    public func createClusterRelease(_ input: CreateClusterReleaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterReleaseResponse> {
        self.client.execute(action: "CreateClusterRelease", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群安装应用
    ///
    /// 在应用市场中给集群创建应用
    @inlinable
    public func createClusterRelease(_ input: CreateClusterReleaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterReleaseResponse {
        try await self.client.execute(action: "CreateClusterRelease", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集群安装应用
    ///
    /// 在应用市场中给集群创建应用
    @inlinable
    public func createClusterRelease(clusterId: String, name: String, namespace: String, chart: String, values: ReleaseValues? = nil, chartFrom: String? = nil, chartVersion: String? = nil, chartRepoURL: String? = nil, username: String? = nil, password: String? = nil, chartNamespace: String? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterReleaseResponse> {
        self.createClusterRelease(.init(clusterId: clusterId, name: name, namespace: namespace, chart: chart, values: values, chartFrom: chartFrom, chartVersion: chartVersion, chartRepoURL: chartRepoURL, username: username, password: password, chartNamespace: chartNamespace, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }

    /// 集群安装应用
    ///
    /// 在应用市场中给集群创建应用
    @inlinable
    public func createClusterRelease(clusterId: String, name: String, namespace: String, chart: String, values: ReleaseValues? = nil, chartFrom: String? = nil, chartVersion: String? = nil, chartRepoURL: String? = nil, username: String? = nil, password: String? = nil, chartNamespace: String? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterReleaseResponse {
        try await self.createClusterRelease(.init(clusterId: clusterId, name: name, namespace: namespace, chart: chart, values: values, chartFrom: chartFrom, chartVersion: chartVersion, chartRepoURL: chartRepoURL, username: username, password: password, chartNamespace: chartNamespace, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }
}
