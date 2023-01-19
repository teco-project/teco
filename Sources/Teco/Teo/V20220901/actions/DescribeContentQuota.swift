//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Teo {
    /// DescribeContentQuota请求参数结构体
    public struct DescribeContentQuotaRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        public init(zoneId: String) {
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
        }
    }

    /// DescribeContentQuota返回参数结构体
    public struct DescribeContentQuotaResponse: TCResponseModel {
        /// 刷新相关配额。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let purgeQuota: [Quota]?

        /// 预热相关配额。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let prefetchQuota: [Quota]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case purgeQuota = "PurgeQuota"
            case prefetchQuota = "PrefetchQuota"
            case requestId = "RequestId"
        }
    }

    /// 查询内容管理接口配额
    @inlinable
    public func describeContentQuota(_ input: DescribeContentQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContentQuotaResponse> {
        self.client.execute(action: "DescribeContentQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询内容管理接口配额
    @inlinable
    public func describeContentQuota(_ input: DescribeContentQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContentQuotaResponse {
        try await self.client.execute(action: "DescribeContentQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询内容管理接口配额
    @inlinable
    public func describeContentQuota(zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContentQuotaResponse> {
        self.describeContentQuota(DescribeContentQuotaRequest(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询内容管理接口配额
    @inlinable
    public func describeContentQuota(zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContentQuotaResponse {
        try await self.describeContentQuota(DescribeContentQuotaRequest(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
