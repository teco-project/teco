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

extension Emr {
    /// DescribeCvmQuota请求参数结构体
    public struct DescribeCvmQuotaRequest: TCRequestModel {
        /// EMR集群ID
        public let clusterId: String

        /// 区ID
        public let zoneId: Int64?

        public init(clusterId: String, zoneId: Int64? = nil) {
            self.clusterId = clusterId
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case zoneId = "ZoneId"
        }
    }

    /// DescribeCvmQuota返回参数结构体
    public struct DescribeCvmQuotaResponse: TCResponseModel {
        /// 后付费配额列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let postPaidQuotaSet: [QuotaEntity]?

        /// 竞价实例配额列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let spotPaidQuotaSet: [QuotaEntity]?

        /// eks配额
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eksQuotaSet: [PodSaleSpec]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case postPaidQuotaSet = "PostPaidQuotaSet"
            case spotPaidQuotaSet = "SpotPaidQuotaSet"
            case eksQuotaSet = "EksQuotaSet"
            case requestId = "RequestId"
        }
    }

    /// 查询账户的CVM配额
    ///
    /// 获取账户的CVM配额
    @inlinable
    public func describeCvmQuota(_ input: DescribeCvmQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCvmQuotaResponse> {
        self.client.execute(action: "DescribeCvmQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账户的CVM配额
    ///
    /// 获取账户的CVM配额
    @inlinable
    public func describeCvmQuota(_ input: DescribeCvmQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCvmQuotaResponse {
        try await self.client.execute(action: "DescribeCvmQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账户的CVM配额
    ///
    /// 获取账户的CVM配额
    @inlinable
    public func describeCvmQuota(clusterId: String, zoneId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCvmQuotaResponse> {
        self.describeCvmQuota(.init(clusterId: clusterId, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账户的CVM配额
    ///
    /// 获取账户的CVM配额
    @inlinable
    public func describeCvmQuota(clusterId: String, zoneId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCvmQuotaResponse {
        try await self.describeCvmQuota(.init(clusterId: clusterId, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
