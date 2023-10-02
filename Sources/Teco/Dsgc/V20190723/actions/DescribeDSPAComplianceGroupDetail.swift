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
    /// DescribeDSPAComplianceGroupDetail请求参数结构体
    public struct DescribeDSPAComplianceGroupDetailRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 模板id
        public let complianceId: UInt64

        public init(dspaId: String, complianceId: UInt64) {
            self.dspaId = dspaId
            self.complianceId = complianceId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case complianceId = "ComplianceId"
        }
    }

    /// DescribeDSPAComplianceGroupDetail返回参数结构体
    public struct DescribeDSPAComplianceGroupDetailResponse: TCResponse {
        /// 模板详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detail: ComplianceGroupDetail?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case detail = "Detail"
            case requestId = "RequestId"
        }
    }

    /// 获取模板详情信息
    @inlinable
    public func describeDSPAComplianceGroupDetail(_ input: DescribeDSPAComplianceGroupDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAComplianceGroupDetailResponse> {
        self.client.execute(action: "DescribeDSPAComplianceGroupDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取模板详情信息
    @inlinable
    public func describeDSPAComplianceGroupDetail(_ input: DescribeDSPAComplianceGroupDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAComplianceGroupDetailResponse {
        try await self.client.execute(action: "DescribeDSPAComplianceGroupDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取模板详情信息
    @inlinable
    public func describeDSPAComplianceGroupDetail(dspaId: String, complianceId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAComplianceGroupDetailResponse> {
        self.describeDSPAComplianceGroupDetail(.init(dspaId: dspaId, complianceId: complianceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取模板详情信息
    @inlinable
    public func describeDSPAComplianceGroupDetail(dspaId: String, complianceId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAComplianceGroupDetailResponse {
        try await self.describeDSPAComplianceGroupDetail(.init(dspaId: dspaId, complianceId: complianceId), region: region, logger: logger, on: eventLoop)
    }
}