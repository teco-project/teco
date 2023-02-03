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

extension Tcr {
    /// DescribeChartDownloadInfo请求参数结构体
    public struct DescribeChartDownloadInfoRequest: TCRequestModel {
        /// 实例ID
        public let registryId: String

        /// 命名空间
        public let namespaceName: String

        /// Chart包的名称
        public let chartName: String

        /// Chart包的版本
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

    /// DescribeChartDownloadInfo返回参数结构体
    public struct DescribeChartDownloadInfoResponse: TCResponseModel {
        /// 用于下载的url的预签名地址
        public let preSignedDownloadURL: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case preSignedDownloadURL = "PreSignedDownloadURL"
            case requestId = "RequestId"
        }
    }

    /// 查询Chart包下载信息
    ///
    /// 用于在企业版中返回Chart的下载信息
    @inlinable
    public func describeChartDownloadInfo(_ input: DescribeChartDownloadInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChartDownloadInfoResponse> {
        self.client.execute(action: "DescribeChartDownloadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Chart包下载信息
    ///
    /// 用于在企业版中返回Chart的下载信息
    @inlinable
    public func describeChartDownloadInfo(_ input: DescribeChartDownloadInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChartDownloadInfoResponse {
        try await self.client.execute(action: "DescribeChartDownloadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Chart包下载信息
    ///
    /// 用于在企业版中返回Chart的下载信息
    @inlinable
    public func describeChartDownloadInfo(registryId: String, namespaceName: String, chartName: String, chartVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChartDownloadInfoResponse> {
        let input = DescribeChartDownloadInfoRequest(registryId: registryId, namespaceName: namespaceName, chartName: chartName, chartVersion: chartVersion)
        return self.client.execute(action: "DescribeChartDownloadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Chart包下载信息
    ///
    /// 用于在企业版中返回Chart的下载信息
    @inlinable
    public func describeChartDownloadInfo(registryId: String, namespaceName: String, chartName: String, chartVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChartDownloadInfoResponse {
        let input = DescribeChartDownloadInfoRequest(registryId: registryId, namespaceName: namespaceName, chartName: chartName, chartVersion: chartVersion)
        return try await self.client.execute(action: "DescribeChartDownloadInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
