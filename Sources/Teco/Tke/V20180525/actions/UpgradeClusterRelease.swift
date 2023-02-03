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
    /// UpgradeClusterRelease请求参数结构体
    public struct UpgradeClusterReleaseRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 自定义的应用名称
        public let name: String

        /// 应用命名空间
        public let namespace: String

        /// 制品名称或从第三方repo 安装chart时，制品压缩包下载地址, 不支持重定向类型chart 地址，结尾为*.tgz
        public let chart: String

        /// 自定义参数，覆盖chart 中values.yaml 中的参数
        public let values: ReleaseValues?

        /// 制品来源，范围：tke-market/tcr/other
        public let chartFrom: String?

        /// 制品版本( 从第三安装时，不传这个参数）
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

    /// UpgradeClusterRelease返回参数结构体
    public struct UpgradeClusterReleaseResponse: TCResponseModel {
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

    /// 集群升级应用
    ///
    /// 升级集群中已安装的应用
    @inlinable
    public func upgradeClusterRelease(_ input: UpgradeClusterReleaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeClusterReleaseResponse> {
        self.client.execute(action: "UpgradeClusterRelease", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群升级应用
    ///
    /// 升级集群中已安装的应用
    @inlinable
    public func upgradeClusterRelease(_ input: UpgradeClusterReleaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeClusterReleaseResponse {
        try await self.client.execute(action: "UpgradeClusterRelease", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集群升级应用
    ///
    /// 升级集群中已安装的应用
    @inlinable
    public func upgradeClusterRelease(clusterId: String, name: String, namespace: String, chart: String, values: ReleaseValues? = nil, chartFrom: String? = nil, chartVersion: String? = nil, chartRepoURL: String? = nil, username: String? = nil, password: String? = nil, chartNamespace: String? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeClusterReleaseResponse> {
        let input = UpgradeClusterReleaseRequest(clusterId: clusterId, name: name, namespace: namespace, chart: chart, values: values, chartFrom: chartFrom, chartVersion: chartVersion, chartRepoURL: chartRepoURL, username: username, password: password, chartNamespace: chartNamespace, clusterType: clusterType)
        return self.client.execute(action: "UpgradeClusterRelease", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群升级应用
    ///
    /// 升级集群中已安装的应用
    @inlinable
    public func upgradeClusterRelease(clusterId: String, name: String, namespace: String, chart: String, values: ReleaseValues? = nil, chartFrom: String? = nil, chartVersion: String? = nil, chartRepoURL: String? = nil, username: String? = nil, password: String? = nil, chartNamespace: String? = nil, clusterType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeClusterReleaseResponse {
        let input = UpgradeClusterReleaseRequest(clusterId: clusterId, name: name, namespace: namespace, chart: chart, values: values, chartFrom: chartFrom, chartVersion: chartVersion, chartRepoURL: chartRepoURL, username: username, password: password, chartNamespace: chartNamespace, clusterType: clusterType)
        return try await self.client.execute(action: "UpgradeClusterRelease", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
