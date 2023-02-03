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

extension Wedata {
    /// DescribeDimensionScore请求参数结构体
    public struct DescribeDimensionScoreRequest: TCRequestModel {
        /// 统计日期 时间戳
        public let statisticsDate: Int64

        /// 项目id
        public let projectId: String

        /// 数据来源id
        public let datasourceId: String?

        public init(statisticsDate: Int64, projectId: String, datasourceId: String? = nil) {
            self.statisticsDate = statisticsDate
            self.projectId = projectId
            self.datasourceId = datasourceId
        }

        enum CodingKeys: String, CodingKey {
            case statisticsDate = "StatisticsDate"
            case projectId = "ProjectId"
            case datasourceId = "DatasourceId"
        }
    }

    /// DescribeDimensionScore返回参数结构体
    public struct DescribeDimensionScoreResponse: TCResponseModel {
        /// 维度评分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DimensionScore?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询维度评分
    ///
    /// 质量报告-查询质量评分
    @inlinable
    public func describeDimensionScore(_ input: DescribeDimensionScoreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDimensionScoreResponse> {
        self.client.execute(action: "DescribeDimensionScore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询维度评分
    ///
    /// 质量报告-查询质量评分
    @inlinable
    public func describeDimensionScore(_ input: DescribeDimensionScoreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDimensionScoreResponse {
        try await self.client.execute(action: "DescribeDimensionScore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询维度评分
    ///
    /// 质量报告-查询质量评分
    @inlinable
    public func describeDimensionScore(statisticsDate: Int64, projectId: String, datasourceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDimensionScoreResponse> {
        let input = DescribeDimensionScoreRequest(statisticsDate: statisticsDate, projectId: projectId, datasourceId: datasourceId)
        return self.client.execute(action: "DescribeDimensionScore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询维度评分
    ///
    /// 质量报告-查询质量评分
    @inlinable
    public func describeDimensionScore(statisticsDate: Int64, projectId: String, datasourceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDimensionScoreResponse {
        let input = DescribeDimensionScoreRequest(statisticsDate: statisticsDate, projectId: projectId, datasourceId: datasourceId)
        return try await self.client.execute(action: "DescribeDimensionScore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
