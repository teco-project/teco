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

extension Csip {
    /// DescribeRiskCenterAssetViewCFGRiskList请求参数结构体
    public struct DescribeRiskCenterAssetViewCFGRiskListRequest: TCRequest {
        /// 过滤内容
        public let filter: Filter?

        public init(filter: Filter? = nil) {
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
        }
    }

    /// DescribeRiskCenterAssetViewCFGRiskList返回参数结构体
    public struct DescribeRiskCenterAssetViewCFGRiskListResponse: TCResponse {
        /// 总条数
        public let totalCount: Int64

        /// 资产视角的配置风险列表
        public let data: [AssetViewCFGRisk]

        /// 状态列表
        public let statusLists: [FilterDataObject]

        /// 危险等级列表
        public let levelLists: [FilterDataObject]

        /// 配置名列表
        public let cfgNameLists: [FilterDataObject]

        /// 检查类型列表
        public let checkTypeLists: [FilterDataObject]

        /// 资产类型列表
        public let instanceTypeLists: [FilterDataObject]

        /// 来源列表
        public let fromLists: [FilterDataObject]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case statusLists = "StatusLists"
            case levelLists = "LevelLists"
            case cfgNameLists = "CFGNameLists"
            case checkTypeLists = "CheckTypeLists"
            case instanceTypeLists = "InstanceTypeLists"
            case fromLists = "FromLists"
            case requestId = "RequestId"
        }
    }

    /// 获取资产视角的配置风险列表
    @inlinable
    public func describeRiskCenterAssetViewCFGRiskList(_ input: DescribeRiskCenterAssetViewCFGRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskCenterAssetViewCFGRiskListResponse> {
        self.client.execute(action: "DescribeRiskCenterAssetViewCFGRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产视角的配置风险列表
    @inlinable
    public func describeRiskCenterAssetViewCFGRiskList(_ input: DescribeRiskCenterAssetViewCFGRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskCenterAssetViewCFGRiskListResponse {
        try await self.client.execute(action: "DescribeRiskCenterAssetViewCFGRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产视角的配置风险列表
    @inlinable
    public func describeRiskCenterAssetViewCFGRiskList(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskCenterAssetViewCFGRiskListResponse> {
        self.describeRiskCenterAssetViewCFGRiskList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产视角的配置风险列表
    @inlinable
    public func describeRiskCenterAssetViewCFGRiskList(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskCenterAssetViewCFGRiskListResponse {
        try await self.describeRiskCenterAssetViewCFGRiskList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
