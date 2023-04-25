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

extension Cws {
    /// DescribeSiteQuota请求参数结构体
    public struct DescribeSiteQuotaRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeSiteQuota返回参数结构体
    public struct DescribeSiteQuotaResponse: TCResponseModel {
        /// 已购买的扫描次数。
        public let total: UInt64

        /// 已使用的扫描次数。
        public let used: UInt64

        /// 剩余可用的扫描次数。
        public let available: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case used = "Used"
            case available = "Available"
            case requestId = "RequestId"
        }
    }

    /// 查看站点购买配额
    ///
    /// 本接口 (DescribeSiteQuota) 用于查询用户购买的扫描次数总数和已使用数。
    @inlinable
    public func describeSiteQuota(_ input: DescribeSiteQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSiteQuotaResponse> {
        self.client.execute(action: "DescribeSiteQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看站点购买配额
    ///
    /// 本接口 (DescribeSiteQuota) 用于查询用户购买的扫描次数总数和已使用数。
    @inlinable
    public func describeSiteQuota(_ input: DescribeSiteQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSiteQuotaResponse {
        try await self.client.execute(action: "DescribeSiteQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看站点购买配额
    ///
    /// 本接口 (DescribeSiteQuota) 用于查询用户购买的扫描次数总数和已使用数。
    @inlinable
    public func describeSiteQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSiteQuotaResponse> {
        self.describeSiteQuota(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查看站点购买配额
    ///
    /// 本接口 (DescribeSiteQuota) 用于查询用户购买的扫描次数总数和已使用数。
    @inlinable
    public func describeSiteQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSiteQuotaResponse {
        try await self.describeSiteQuota(.init(), region: region, logger: logger, on: eventLoop)
    }
}
