//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Redis {
    /// DescribeInstanceDealDetail请求参数结构体
    public struct DescribeInstanceDealDetailRequest: TCRequestModel {
        /// 订单交易ID数组，即 [CreateInstances](https://cloud.tencent.com/document/api/239/20026) 的输出参数DealId。
        public let dealIds: [String]

        public init(dealIds: [String]) {
            self.dealIds = dealIds
        }

        enum CodingKeys: String, CodingKey {
            case dealIds = "DealIds"
        }
    }

    /// DescribeInstanceDealDetail返回参数结构体
    public struct DescribeInstanceDealDetailResponse: TCResponseModel {
        /// 订单详细信息
        public let dealDetails: [TradeDealDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealDetails = "DealDetails"
            case requestId = "RequestId"
        }
    }

    /// 查询订单信息
    @inlinable
    public func describeInstanceDealDetail(_ input: DescribeInstanceDealDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceDealDetailResponse > {
        self.client.execute(action: "DescribeInstanceDealDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询订单信息
    @inlinable
    public func describeInstanceDealDetail(_ input: DescribeInstanceDealDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceDealDetailResponse {
        try await self.client.execute(action: "DescribeInstanceDealDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询订单信息
    @inlinable
    public func describeInstanceDealDetail(dealIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceDealDetailResponse > {
        self.describeInstanceDealDetail(DescribeInstanceDealDetailRequest(dealIds: dealIds), logger: logger, on: eventLoop)
    }

    /// 查询订单信息
    @inlinable
    public func describeInstanceDealDetail(dealIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceDealDetailResponse {
        try await self.describeInstanceDealDetail(DescribeInstanceDealDetailRequest(dealIds: dealIds), logger: logger, on: eventLoop)
    }
}
