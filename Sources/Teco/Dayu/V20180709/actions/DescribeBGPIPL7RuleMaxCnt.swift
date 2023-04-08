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

extension Dayu {
    /// DescribeBGPIPL7RuleMaxCnt请求参数结构体
    public struct DescribeBGPIPL7RuleMaxCntRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP）
        public let business: String

        /// 资源实例ID
        public let id: String

        public init(business: String, id: String) {
            self.business = business
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
        }
    }

    /// DescribeBGPIPL7RuleMaxCnt返回参数结构体
    public struct DescribeBGPIPL7RuleMaxCntResponse: TCResponseModel {
        /// 高防IP最多可添加的7层规则数量
        public let count: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case requestId = "RequestId"
        }
    }

    /// 获取高防IP可添加的最多7层规则数量
    @inlinable
    public func describeBGPIPL7RuleMaxCnt(_ input: DescribeBGPIPL7RuleMaxCntRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBGPIPL7RuleMaxCntResponse> {
        self.client.execute(action: "DescribeBGPIPL7RuleMaxCnt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防IP可添加的最多7层规则数量
    @inlinable
    public func describeBGPIPL7RuleMaxCnt(_ input: DescribeBGPIPL7RuleMaxCntRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBGPIPL7RuleMaxCntResponse {
        try await self.client.execute(action: "DescribeBGPIPL7RuleMaxCnt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防IP可添加的最多7层规则数量
    @inlinable
    public func describeBGPIPL7RuleMaxCnt(business: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBGPIPL7RuleMaxCntResponse> {
        self.describeBGPIPL7RuleMaxCnt(.init(business: business, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高防IP可添加的最多7层规则数量
    @inlinable
    public func describeBGPIPL7RuleMaxCnt(business: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBGPIPL7RuleMaxCntResponse {
        try await self.describeBGPIPL7RuleMaxCnt(.init(business: business, id: id), region: region, logger: logger, on: eventLoop)
    }
}
