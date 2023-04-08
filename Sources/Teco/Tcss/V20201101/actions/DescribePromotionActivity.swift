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

extension Tcss {
    /// DescribePromotionActivity请求参数结构体
    public struct DescribePromotionActivityRequest: TCRequestModel {
        /// 活动ID
        public let activeID: UInt64

        public init(activeID: UInt64) {
            self.activeID = activeID
        }

        enum CodingKeys: String, CodingKey {
            case activeID = "ActiveID"
        }
    }

    /// DescribePromotionActivity返回参数结构体
    public struct DescribePromotionActivityResponse: TCResponseModel {
        /// 促销活动内容
        public let list: [PromotionActivityContent]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询促销活动
    @inlinable
    public func describePromotionActivity(_ input: DescribePromotionActivityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePromotionActivityResponse> {
        self.client.execute(action: "DescribePromotionActivity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询促销活动
    @inlinable
    public func describePromotionActivity(_ input: DescribePromotionActivityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePromotionActivityResponse {
        try await self.client.execute(action: "DescribePromotionActivity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询促销活动
    @inlinable
    public func describePromotionActivity(activeID: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePromotionActivityResponse> {
        self.describePromotionActivity(.init(activeID: activeID), region: region, logger: logger, on: eventLoop)
    }

    /// 查询促销活动
    @inlinable
    public func describePromotionActivity(activeID: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePromotionActivityResponse {
        try await self.describePromotionActivity(.init(activeID: activeID), region: region, logger: logger, on: eventLoop)
    }
}
