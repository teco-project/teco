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

extension Bmeip {
    /// DescribeEipQuota请求参数结构体
    public struct DescribeEipQuotaRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeEipQuota返回参数结构体
    public struct DescribeEipQuotaResponse: TCResponse {
        /// 能拥有的EIP个数的总配额，默认是100个
        public let eipNumQuota: Int64

        /// 当前已使用的EIP个数，包括创建中、绑定中、已绑定、解绑中、未绑定几种状态的EIP个数总和
        public let currentEipNum: Int64

        /// 当天申请EIP次数
        public let dailyApplyCount: Int64

        /// 每日申请EIP的次数限制
        public let dailyApplyQuota: Int64

        /// BatchApplyMax
        public let batchApplyMax: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eipNumQuota = "EipNumQuota"
            case currentEipNum = "CurrentEipNum"
            case dailyApplyCount = "DailyApplyCount"
            case dailyApplyQuota = "DailyApplyQuota"
            case batchApplyMax = "BatchApplyMax"
            case requestId = "RequestId"
        }
    }

    /// 查询黑石EIP 限额
    @inlinable
    public func describeEipQuota(_ input: DescribeEipQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEipQuotaResponse> {
        self.client.execute(action: "DescribeEipQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询黑石EIP 限额
    @inlinable
    public func describeEipQuota(_ input: DescribeEipQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEipQuotaResponse {
        try await self.client.execute(action: "DescribeEipQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询黑石EIP 限额
    @inlinable
    public func describeEipQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEipQuotaResponse> {
        self.describeEipQuota(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询黑石EIP 限额
    @inlinable
    public func describeEipQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEipQuotaResponse {
        try await self.describeEipQuota(.init(), region: region, logger: logger, on: eventLoop)
    }
}
