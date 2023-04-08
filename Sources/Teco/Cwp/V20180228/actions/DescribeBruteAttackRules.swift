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

extension Cwp {
    /// DescribeBruteAttackRules请求参数结构体
    public struct DescribeBruteAttackRulesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeBruteAttackRules返回参数结构体
    public struct DescribeBruteAttackRulesResponse: TCResponseModel {
        /// 爆破阻断规则列表
        public let rules: [BruteAttackRuleList]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case requestId = "RequestId"
        }
    }

    /// 获取爆破破解规则
    @inlinable
    public func describeBruteAttackRules(_ input: DescribeBruteAttackRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBruteAttackRulesResponse> {
        self.client.execute(action: "DescribeBruteAttackRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取爆破破解规则
    @inlinable
    public func describeBruteAttackRules(_ input: DescribeBruteAttackRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBruteAttackRulesResponse {
        try await self.client.execute(action: "DescribeBruteAttackRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取爆破破解规则
    @inlinable
    public func describeBruteAttackRules(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBruteAttackRulesResponse> {
        self.describeBruteAttackRules(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取爆破破解规则
    @inlinable
    public func describeBruteAttackRules(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBruteAttackRulesResponse {
        try await self.describeBruteAttackRules(.init(), region: region, logger: logger, on: eventLoop)
    }
}
