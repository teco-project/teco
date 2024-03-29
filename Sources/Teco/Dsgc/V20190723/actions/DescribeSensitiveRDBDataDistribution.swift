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

extension Dsgc {
    /// DescribeSensitiveRDBDataDistribution请求参数结构体
    public struct DescribeSensitiveRDBDataDistributionRequest: TCRequest {
        /// dspa-实例id
        public let dspaId: String

        /// 合规组id
        public let complianceId: Int64

        /// 查询的资产信息列表
        public let assetList: [AssetList]

        public init(dspaId: String, complianceId: Int64, assetList: [AssetList]) {
            self.dspaId = dspaId
            self.complianceId = complianceId
            self.assetList = assetList
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case complianceId = "ComplianceId"
            case assetList = "AssetList"
        }
    }

    /// DescribeSensitiveRDBDataDistribution返回参数结构体
    public struct DescribeSensitiveRDBDataDistributionResponse: TCResponse {
        /// 分级分布
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let levelDistribution: [Note]?

        /// 分类分布
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let categoryDistribution: [Note]?

        /// 敏感规则分布详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleDistribution: [RuleDistribution]?

        /// 计算占比字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sensitiveDataNum: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case levelDistribution = "LevelDistribution"
            case categoryDistribution = "CategoryDistribution"
            case ruleDistribution = "RuleDistribution"
            case sensitiveDataNum = "SensitiveDataNum"
            case requestId = "RequestId"
        }
    }

    /// 查询rdb的敏感数据分布详情
    ///
    /// 数据资产报告-查询rdb的敏感数据分布-敏感规则字段分布-敏感分布详情
    @inlinable
    public func describeSensitiveRDBDataDistribution(_ input: DescribeSensitiveRDBDataDistributionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSensitiveRDBDataDistributionResponse> {
        self.client.execute(action: "DescribeSensitiveRDBDataDistribution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询rdb的敏感数据分布详情
    ///
    /// 数据资产报告-查询rdb的敏感数据分布-敏感规则字段分布-敏感分布详情
    @inlinable
    public func describeSensitiveRDBDataDistribution(_ input: DescribeSensitiveRDBDataDistributionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSensitiveRDBDataDistributionResponse {
        try await self.client.execute(action: "DescribeSensitiveRDBDataDistribution", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询rdb的敏感数据分布详情
    ///
    /// 数据资产报告-查询rdb的敏感数据分布-敏感规则字段分布-敏感分布详情
    @inlinable
    public func describeSensitiveRDBDataDistribution(dspaId: String, complianceId: Int64, assetList: [AssetList], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSensitiveRDBDataDistributionResponse> {
        self.describeSensitiveRDBDataDistribution(.init(dspaId: dspaId, complianceId: complianceId, assetList: assetList), region: region, logger: logger, on: eventLoop)
    }

    /// 查询rdb的敏感数据分布详情
    ///
    /// 数据资产报告-查询rdb的敏感数据分布-敏感规则字段分布-敏感分布详情
    @inlinable
    public func describeSensitiveRDBDataDistribution(dspaId: String, complianceId: Int64, assetList: [AssetList], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSensitiveRDBDataDistributionResponse {
        try await self.describeSensitiveRDBDataDistribution(.init(dspaId: dspaId, complianceId: complianceId, assetList: assetList), region: region, logger: logger, on: eventLoop)
    }
}
