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

extension Cynosdb {
    /// DescribeResourcesByDealName请求参数结构体
    public struct DescribeResourcesByDealNameRequest: TCRequestModel {
        /// 计费订单ID（如果计费还没回调业务发货，可能出现错误码InvalidParameterValue.DealNameNotFound，这种情况需要业务重试DescribeResourcesByDealName接口直到成功）
        public let dealName: String?

        /// 计费订单ID列表，可以一次查询若干条订单ID对应资源信息（如果计费还没回调业务发货，可能出现错误码InvalidParameterValue.DealNameNotFound，这种情况需要业务重试DescribeResourcesByDealName接口直到成功）
        public let dealNames: [String]?

        public init(dealName: String? = nil, dealNames: [String]? = nil) {
            self.dealName = dealName
            self.dealNames = dealNames
        }

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case dealNames = "DealNames"
        }
    }

    /// DescribeResourcesByDealName返回参数结构体
    public struct DescribeResourcesByDealNameResponse: TCResponseModel {
        /// 计费资源id信息数组
        public let billingResourceInfos: [BillingResourceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case billingResourceInfos = "BillingResourceInfos"
            case requestId = "RequestId"
        }
    }

    /// 根据订单id查询资源信息
    ///
    /// 根据计费订单id查询资源列表
    @inlinable
    public func describeResourcesByDealName(_ input: DescribeResourcesByDealNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesByDealNameResponse> {
        self.client.execute(action: "DescribeResourcesByDealName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据订单id查询资源信息
    ///
    /// 根据计费订单id查询资源列表
    @inlinable
    public func describeResourcesByDealName(_ input: DescribeResourcesByDealNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesByDealNameResponse {
        try await self.client.execute(action: "DescribeResourcesByDealName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据订单id查询资源信息
    ///
    /// 根据计费订单id查询资源列表
    @inlinable
    public func describeResourcesByDealName(dealName: String? = nil, dealNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesByDealNameResponse> {
        self.describeResourcesByDealName(.init(dealName: dealName, dealNames: dealNames), region: region, logger: logger, on: eventLoop)
    }

    /// 根据订单id查询资源信息
    ///
    /// 根据计费订单id查询资源列表
    @inlinable
    public func describeResourcesByDealName(dealName: String? = nil, dealNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesByDealNameResponse {
        try await self.describeResourcesByDealName(.init(dealName: dealName, dealNames: dealNames), region: region, logger: logger, on: eventLoop)
    }
}
