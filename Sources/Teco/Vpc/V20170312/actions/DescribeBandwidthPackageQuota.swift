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

extension Vpc {
    /// DescribeBandwidthPackageQuota请求参数结构体
    public struct DescribeBandwidthPackageQuotaRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeBandwidthPackageQuota返回参数结构体
    public struct DescribeBandwidthPackageQuotaResponse: TCResponseModel {
        /// 带宽包配额详细信息
        public let quotaSet: [Quota]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case quotaSet = "QuotaSet"
            case requestId = "RequestId"
        }
    }

    /// 查询带宽包配额
    ///
    /// 接口用于查询账户在当前地域的带宽包上限数量以及使用数量
    @inlinable
    public func describeBandwidthPackageQuota(_ input: DescribeBandwidthPackageQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBandwidthPackageQuotaResponse> {
        self.client.execute(action: "DescribeBandwidthPackageQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询带宽包配额
    ///
    /// 接口用于查询账户在当前地域的带宽包上限数量以及使用数量
    @inlinable
    public func describeBandwidthPackageQuota(_ input: DescribeBandwidthPackageQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBandwidthPackageQuotaResponse {
        try await self.client.execute(action: "DescribeBandwidthPackageQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询带宽包配额
    ///
    /// 接口用于查询账户在当前地域的带宽包上限数量以及使用数量
    @inlinable
    public func describeBandwidthPackageQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBandwidthPackageQuotaResponse> {
        self.describeBandwidthPackageQuota(DescribeBandwidthPackageQuotaRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询带宽包配额
    ///
    /// 接口用于查询账户在当前地域的带宽包上限数量以及使用数量
    @inlinable
    public func describeBandwidthPackageQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBandwidthPackageQuotaResponse {
        try await self.describeBandwidthPackageQuota(DescribeBandwidthPackageQuotaRequest(), region: region, logger: logger, on: eventLoop)
    }
}
