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
    /// DescribeDSPACOSDataAssetByComplianceId请求参数结构体
    public struct DescribeDSPACOSDataAssetByComplianceIdRequest: TCRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 合规组ID
        public let complianceId: Int64

        public init(dspaId: String, complianceId: Int64) {
            self.dspaId = dspaId
            self.complianceId = complianceId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case complianceId = "ComplianceId"
        }
    }

    /// DescribeDSPACOSDataAssetByComplianceId返回参数结构体
    public struct DescribeDSPACOSDataAssetByComplianceIdResponse: TCResponse {
        /// 符合条件的COS存储对象的敏感数据资产统计记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stats: DspaCOSDataAssetCount?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case stats = "Stats"
            case requestId = "RequestId"
        }
    }

    /// 获取COS单个模板下的敏感数据资产
    @inlinable
    public func describeDSPACOSDataAssetByComplianceId(_ input: DescribeDSPACOSDataAssetByComplianceIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACOSDataAssetByComplianceIdResponse> {
        self.client.execute(action: "DescribeDSPACOSDataAssetByComplianceId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取COS单个模板下的敏感数据资产
    @inlinable
    public func describeDSPACOSDataAssetByComplianceId(_ input: DescribeDSPACOSDataAssetByComplianceIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACOSDataAssetByComplianceIdResponse {
        try await self.client.execute(action: "DescribeDSPACOSDataAssetByComplianceId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取COS单个模板下的敏感数据资产
    @inlinable
    public func describeDSPACOSDataAssetByComplianceId(dspaId: String, complianceId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACOSDataAssetByComplianceIdResponse> {
        self.describeDSPACOSDataAssetByComplianceId(.init(dspaId: dspaId, complianceId: complianceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取COS单个模板下的敏感数据资产
    @inlinable
    public func describeDSPACOSDataAssetByComplianceId(dspaId: String, complianceId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACOSDataAssetByComplianceIdResponse {
        try await self.describeDSPACOSDataAssetByComplianceId(.init(dspaId: dspaId, complianceId: complianceId), region: region, logger: logger, on: eventLoop)
    }
}
