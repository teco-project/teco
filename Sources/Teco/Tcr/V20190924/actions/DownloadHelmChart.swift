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

extension Tcr {
    /// DownloadHelmChart请求参数结构体
    public struct DownloadHelmChartRequest: TCRequestModel {
        /// 实例ID
        public let registryId: String

        /// 命名空间名称
        public let namespaceName: String

        /// Helm chart名称
        public let chartName: String

        /// Helm chart版本
        public let chartVersion: String

        public init(registryId: String, namespaceName: String, chartName: String, chartVersion: String) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.chartName = chartName
            self.chartVersion = chartVersion
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case chartName = "ChartName"
            case chartVersion = "ChartVersion"
        }
    }

    /// DownloadHelmChart返回参数结构体
    public struct DownloadHelmChartResponse: TCResponseModel {
        /// 临时token
        public let tmpToken: String

        /// 临时的secretId
        public let tmpSecretId: String

        /// 临时的secretKey
        public let tmpSecretKey: String

        /// 存储桶信息
        public let bucket: String

        /// 实例ID
        public let region: String

        /// chart信息
        public let path: String

        /// 开始时间时间戳
        public let startTime: Int64

        /// token过期时间时间戳
        public let expiredTime: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tmpToken = "TmpToken"
            case tmpSecretId = "TmpSecretId"
            case tmpSecretKey = "TmpSecretKey"
            case bucket = "Bucket"
            case region = "Region"
            case path = "Path"
            case startTime = "StartTime"
            case expiredTime = "ExpiredTime"
            case requestId = "RequestId"
        }
    }

    /// 下载Helm Chart
    ///
    /// 用于在TCR中下载helm chart
    @inlinable
    public func downloadHelmChart(_ input: DownloadHelmChartRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadHelmChartResponse> {
        self.client.execute(action: "DownloadHelmChart", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载Helm Chart
    ///
    /// 用于在TCR中下载helm chart
    @inlinable
    public func downloadHelmChart(_ input: DownloadHelmChartRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadHelmChartResponse {
        try await self.client.execute(action: "DownloadHelmChart", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载Helm Chart
    ///
    /// 用于在TCR中下载helm chart
    @inlinable
    public func downloadHelmChart(registryId: String, namespaceName: String, chartName: String, chartVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadHelmChartResponse> {
        self.downloadHelmChart(.init(registryId: registryId, namespaceName: namespaceName, chartName: chartName, chartVersion: chartVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 下载Helm Chart
    ///
    /// 用于在TCR中下载helm chart
    @inlinable
    public func downloadHelmChart(registryId: String, namespaceName: String, chartName: String, chartVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadHelmChartResponse {
        try await self.downloadHelmChart(.init(registryId: registryId, namespaceName: namespaceName, chartName: chartName, chartVersion: chartVersion), region: region, logger: logger, on: eventLoop)
    }
}
