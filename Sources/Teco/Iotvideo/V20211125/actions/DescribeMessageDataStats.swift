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

extension Iotvideo {
    /// DescribeMessageDataStats请求参数结构体
    public struct DescribeMessageDataStatsRequest: TCRequestModel {
        /// 统计开始日期
        public let startDate: String

        /// 统计结束日期
        public let endDate: String

        /// 产品id
        public let productId: String?

        public init(startDate: String, endDate: String, productId: String? = nil) {
            self.startDate = startDate
            self.endDate = endDate
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case startDate = "StartDate"
            case endDate = "EndDate"
            case productId = "ProductId"
        }
    }

    /// DescribeMessageDataStats返回参数结构体
    public struct DescribeMessageDataStatsResponse: TCResponseModel {
        /// 消息数量列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [MessageCntStats]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询设备消息数量统计
    @inlinable
    public func describeMessageDataStats(_ input: DescribeMessageDataStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMessageDataStatsResponse> {
        self.client.execute(action: "DescribeMessageDataStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备消息数量统计
    @inlinable
    public func describeMessageDataStats(_ input: DescribeMessageDataStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageDataStatsResponse {
        try await self.client.execute(action: "DescribeMessageDataStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备消息数量统计
    @inlinable
    public func describeMessageDataStats(startDate: String, endDate: String, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMessageDataStatsResponse> {
        let input = DescribeMessageDataStatsRequest(startDate: startDate, endDate: endDate, productId: productId)
        return self.client.execute(action: "DescribeMessageDataStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备消息数量统计
    @inlinable
    public func describeMessageDataStats(startDate: String, endDate: String, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageDataStatsResponse {
        let input = DescribeMessageDataStatsRequest(startDate: startDate, endDate: endDate, productId: productId)
        return try await self.client.execute(action: "DescribeMessageDataStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
