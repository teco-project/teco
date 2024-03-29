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

extension Tcss {
    /// DescribeComplianceTaskAssetSummary请求参数结构体
    public struct DescribeComplianceTaskAssetSummaryRequest: TCRequest {
        /// 资产类型列表。
        /// ASSET_CONTAINER, 容器
        /// ASSET_IMAGE, 镜像
        /// ASSET_HOST, 主机
        /// ASSET_K8S, K8S资产
        public let assetTypeSet: [String]

        public init(assetTypeSet: [String]) {
            self.assetTypeSet = assetTypeSet
        }

        enum CodingKeys: String, CodingKey {
            case assetTypeSet = "AssetTypeSet"
        }
    }

    /// DescribeComplianceTaskAssetSummary返回参数结构体
    public struct DescribeComplianceTaskAssetSummaryResponse: TCResponse {
        /// 返回用户的状态，
        ///
        /// USER_UNINIT: 用户未初始化。
        /// USER_INITIALIZING，表示用户正在初始化环境。
        /// USER_NORMAL: 正常状态。
        public let status: String

        /// 返回各类资产的汇总信息的列表。
        public let assetSummaryList: [ComplianceAssetSummary]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case assetSummaryList = "AssetSummaryList"
            case requestId = "RequestId"
        }
    }

    /// 安全合规查询上次任务的资产通过率汇总信息
    ///
    /// 查询上次任务的资产通过率汇总信息
    @inlinable
    public func describeComplianceTaskAssetSummary(_ input: DescribeComplianceTaskAssetSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceTaskAssetSummaryResponse> {
        self.client.execute(action: "DescribeComplianceTaskAssetSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次任务的资产通过率汇总信息
    ///
    /// 查询上次任务的资产通过率汇总信息
    @inlinable
    public func describeComplianceTaskAssetSummary(_ input: DescribeComplianceTaskAssetSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceTaskAssetSummaryResponse {
        try await self.client.execute(action: "DescribeComplianceTaskAssetSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询上次任务的资产通过率汇总信息
    ///
    /// 查询上次任务的资产通过率汇总信息
    @inlinable
    public func describeComplianceTaskAssetSummary(assetTypeSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceTaskAssetSummaryResponse> {
        self.describeComplianceTaskAssetSummary(.init(assetTypeSet: assetTypeSet), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次任务的资产通过率汇总信息
    ///
    /// 查询上次任务的资产通过率汇总信息
    @inlinable
    public func describeComplianceTaskAssetSummary(assetTypeSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceTaskAssetSummaryResponse {
        try await self.describeComplianceTaskAssetSummary(.init(assetTypeSet: assetTypeSet), region: region, logger: logger, on: eventLoop)
    }
}
