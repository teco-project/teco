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
    /// DescribeDSPAAssessmentRiskDatasourceTop5请求参数结构体
    public struct DescribeDSPAAssessmentRiskDatasourceTop5Request: TCRequest {
        /// dspa实例id
        public let dspaId: String

        public init(dspaId: String) {
            self.dspaId = dspaId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
        }
    }

    /// DescribeDSPAAssessmentRiskDatasourceTop5返回参数结构体
    public struct DescribeDSPAAssessmentRiskDatasourceTop5Response: TCResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [RiskItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 受影响资产TOP5统计
    @inlinable
    public func describeDSPAAssessmentRiskDatasourceTop5(_ input: DescribeDSPAAssessmentRiskDatasourceTop5Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAAssessmentRiskDatasourceTop5Response> {
        self.client.execute(action: "DescribeDSPAAssessmentRiskDatasourceTop5", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 受影响资产TOP5统计
    @inlinable
    public func describeDSPAAssessmentRiskDatasourceTop5(_ input: DescribeDSPAAssessmentRiskDatasourceTop5Request, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAAssessmentRiskDatasourceTop5Response {
        try await self.client.execute(action: "DescribeDSPAAssessmentRiskDatasourceTop5", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 受影响资产TOP5统计
    @inlinable
    public func describeDSPAAssessmentRiskDatasourceTop5(dspaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAAssessmentRiskDatasourceTop5Response> {
        self.describeDSPAAssessmentRiskDatasourceTop5(.init(dspaId: dspaId), region: region, logger: logger, on: eventLoop)
    }

    /// 受影响资产TOP5统计
    @inlinable
    public func describeDSPAAssessmentRiskDatasourceTop5(dspaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAAssessmentRiskDatasourceTop5Response {
        try await self.describeDSPAAssessmentRiskDatasourceTop5(.init(dspaId: dspaId), region: region, logger: logger, on: eventLoop)
    }
}
