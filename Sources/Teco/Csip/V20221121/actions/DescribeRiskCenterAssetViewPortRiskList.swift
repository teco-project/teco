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
    /// DescribeRiskCenterAssetViewPortRiskList请求参数结构体
    public struct DescribeRiskCenterAssetViewPortRiskListRequest: TCRequestModel {
        /// 过滤内容
        public let filter: Filter?

        public init(filter: Filter? = nil) {
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
        }
    }

    /// DescribeRiskCenterAssetViewPortRiskList返回参数结构体
    public struct DescribeRiskCenterAssetViewPortRiskListResponse: TCResponseModel {
        /// 总条数
        public let totalCount: Int64

        /// 资产视角的配置风险列表
        public let data: [AssetViewPortRisk]

        /// 状态列表
        public let statusLists: [FilterDataObject]

        /// 危险等级列表
        public let levelLists: [FilterDataObject]

        /// 建议列表
        public let suggestionLists: [FilterDataObject]

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
            case suggestionLists = "SuggestionLists"
            case instanceTypeLists = "InstanceTypeLists"
            case fromLists = "FromLists"
            case requestId = "RequestId"
        }
    }

    /// 获取资产视角的端口风险列表
    @inlinable
    public func describeRiskCenterAssetViewPortRiskList(_ input: DescribeRiskCenterAssetViewPortRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskCenterAssetViewPortRiskListResponse> {
        self.client.execute(action: "DescribeRiskCenterAssetViewPortRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产视角的端口风险列表
    @inlinable
    public func describeRiskCenterAssetViewPortRiskList(_ input: DescribeRiskCenterAssetViewPortRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskCenterAssetViewPortRiskListResponse {
        try await self.client.execute(action: "DescribeRiskCenterAssetViewPortRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产视角的端口风险列表
    @inlinable
    public func describeRiskCenterAssetViewPortRiskList(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskCenterAssetViewPortRiskListResponse> {
        self.describeRiskCenterAssetViewPortRiskList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产视角的端口风险列表
    @inlinable
    public func describeRiskCenterAssetViewPortRiskList(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskCenterAssetViewPortRiskListResponse {
        try await self.describeRiskCenterAssetViewPortRiskList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
