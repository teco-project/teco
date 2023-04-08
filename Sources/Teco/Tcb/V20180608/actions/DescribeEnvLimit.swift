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

import TecoCore

extension Tcb {
    /// DescribeEnvLimit请求参数结构体
    public struct DescribeEnvLimitRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeEnvLimit返回参数结构体
    public struct DescribeEnvLimitResponse: TCResponseModel {
        /// 环境总数上限
        public let maxEnvNum: Int64

        /// 目前环境总数
        public let currentEnvNum: Int64

        /// 免费环境数量上限
        public let maxFreeEnvNum: Int64

        /// 目前免费环境数量
        public let currentFreeEnvNum: Int64

        /// 总计允许销毁环境次数上限
        public let maxDeleteTotal: Int64

        /// 目前已销毁环境次数
        public let currentDeleteTotal: Int64

        /// 每月允许销毁环境次数上限
        public let maxDeleteMonthly: Int64

        /// 本月已销毁环境次数
        public let currentDeleteMonthly: Int64

        /// 微信网关体验版可购买月份数
        public let maxFreeTrialNum: Int64

        /// 微信网关体验版已购买月份数
        public let currentFreeTrialNum: Int64

        /// 转支付限额总数
        public let changePayTotal: Int64

        /// 当前已用转支付次数
        public let currentChangePayTotal: Int64

        /// 转支付每月限额
        public let changePayMonthly: Int64

        /// 本月已用转支付额度
        public let currentChangePayMonthly: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case maxEnvNum = "MaxEnvNum"
            case currentEnvNum = "CurrentEnvNum"
            case maxFreeEnvNum = "MaxFreeEnvNum"
            case currentFreeEnvNum = "CurrentFreeEnvNum"
            case maxDeleteTotal = "MaxDeleteTotal"
            case currentDeleteTotal = "CurrentDeleteTotal"
            case maxDeleteMonthly = "MaxDeleteMonthly"
            case currentDeleteMonthly = "CurrentDeleteMonthly"
            case maxFreeTrialNum = "MaxFreeTrialNum"
            case currentFreeTrialNum = "CurrentFreeTrialNum"
            case changePayTotal = "ChangePayTotal"
            case currentChangePayTotal = "CurrentChangePayTotal"
            case changePayMonthly = "ChangePayMonthly"
            case currentChangePayMonthly = "CurrentChangePayMonthly"
            case requestId = "RequestId"
        }
    }

    /// 查询环境个数上限接口
    ///
    /// 查询环境个数上限
    @inlinable
    public func describeEnvLimit(_ input: DescribeEnvLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvLimitResponse> {
        self.client.execute(action: "DescribeEnvLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询环境个数上限接口
    ///
    /// 查询环境个数上限
    @inlinable
    public func describeEnvLimit(_ input: DescribeEnvLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvLimitResponse {
        try await self.client.execute(action: "DescribeEnvLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询环境个数上限接口
    ///
    /// 查询环境个数上限
    @inlinable
    public func describeEnvLimit(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvLimitResponse> {
        self.describeEnvLimit(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询环境个数上限接口
    ///
    /// 查询环境个数上限
    @inlinable
    public func describeEnvLimit(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvLimitResponse {
        try await self.describeEnvLimit(.init(), region: region, logger: logger, on: eventLoop)
    }
}
