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

extension Antiddos {
    /// DescribePendingRiskInfo请求参数结构体
    public struct DescribePendingRiskInfoRequest: TCRequest {
        public init() {
        }
    }

    /// DescribePendingRiskInfo返回参数结构体
    public struct DescribePendingRiskInfoResponse: TCResponse {
        /// 是否为付费用户，true：付费用户， false：普通用户
        public let isPaidUsr: Bool

        /// 攻击中的资源数量
        public let attackingCount: Int64

        /// 封堵中的资源数量
        public let blockingCount: Int64

        /// 已过期的资源数量
        public let expiredCount: Int64

        /// 所有待处理风险事件总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isPaidUsr = "IsPaidUsr"
            case attackingCount = "AttackingCount"
            case blockingCount = "BlockingCount"
            case expiredCount = "ExpiredCount"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询账号维度待处理风险信息
    ///
    /// 查询账号维度待处理风险信息，包括是否为付费用户，查询攻击中、封堵中、过期资源数量等
    @inlinable
    public func describePendingRiskInfo(_ input: DescribePendingRiskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePendingRiskInfoResponse> {
        self.client.execute(action: "DescribePendingRiskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账号维度待处理风险信息
    ///
    /// 查询账号维度待处理风险信息，包括是否为付费用户，查询攻击中、封堵中、过期资源数量等
    @inlinable
    public func describePendingRiskInfo(_ input: DescribePendingRiskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePendingRiskInfoResponse {
        try await self.client.execute(action: "DescribePendingRiskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账号维度待处理风险信息
    ///
    /// 查询账号维度待处理风险信息，包括是否为付费用户，查询攻击中、封堵中、过期资源数量等
    @inlinable
    public func describePendingRiskInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePendingRiskInfoResponse> {
        self.describePendingRiskInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账号维度待处理风险信息
    ///
    /// 查询账号维度待处理风险信息，包括是否为付费用户，查询攻击中、封堵中、过期资源数量等
    @inlinable
    public func describePendingRiskInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePendingRiskInfoResponse {
        try await self.describePendingRiskInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
