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
    /// DescribeSpecialCostItems请求参数结构体
    public struct DescribeSpecialCostItemsRequest: TCRequestModel {
        /// 环境id
        public let envId: String?

        /// 查询开始时间
        public let startTime: String?

        /// 查询结束时间
        public let endTime: String?

        public init(envId: String? = nil, startTime: String? = nil, endTime: String? = nil) {
            self.envId = envId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeSpecialCostItems返回参数结构体
    public struct DescribeSpecialCostItemsResponse: TCResponseModel {
        /// 1分钱抵扣详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let specialCostItems: [SpecialCostItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case specialCostItems = "SpecialCostItems"
            case requestId = "RequestId"
        }
    }

    /// 查询环境1分钱抵扣信息
    @inlinable
    public func describeSpecialCostItems(_ input: DescribeSpecialCostItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpecialCostItemsResponse> {
        self.client.execute(action: "DescribeSpecialCostItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询环境1分钱抵扣信息
    @inlinable
    public func describeSpecialCostItems(_ input: DescribeSpecialCostItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpecialCostItemsResponse {
        try await self.client.execute(action: "DescribeSpecialCostItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询环境1分钱抵扣信息
    @inlinable
    public func describeSpecialCostItems(envId: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpecialCostItemsResponse> {
        self.describeSpecialCostItems(.init(envId: envId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询环境1分钱抵扣信息
    @inlinable
    public func describeSpecialCostItems(envId: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpecialCostItemsResponse {
        try await self.describeSpecialCostItems(.init(envId: envId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
