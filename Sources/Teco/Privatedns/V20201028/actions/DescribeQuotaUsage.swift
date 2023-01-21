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

extension Privatedns {
    /// DescribeQuotaUsage请求参数结构体
    public struct DescribeQuotaUsageRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeQuotaUsage返回参数结构体
    public struct DescribeQuotaUsageResponse: TCResponseModel {
        /// Tld额度使用情况
        public let tldQuota: TldQuota

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tldQuota = "TldQuota"
            case requestId = "RequestId"
        }
    }

    /// 查询额度使用情况
    @inlinable
    public func describeQuotaUsage(_ input: DescribeQuotaUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQuotaUsageResponse> {
        self.client.execute(action: "DescribeQuotaUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询额度使用情况
    @inlinable
    public func describeQuotaUsage(_ input: DescribeQuotaUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQuotaUsageResponse {
        try await self.client.execute(action: "DescribeQuotaUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询额度使用情况
    @inlinable
    public func describeQuotaUsage(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQuotaUsageResponse> {
        self.describeQuotaUsage(DescribeQuotaUsageRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询额度使用情况
    @inlinable
    public func describeQuotaUsage(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQuotaUsageResponse {
        try await self.describeQuotaUsage(DescribeQuotaUsageRequest(), region: region, logger: logger, on: eventLoop)
    }
}
