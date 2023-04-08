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

extension Iotvideo {
    /// DescribeDeviceDataStats请求参数结构体
    public struct DescribeDeviceDataStatsRequest: TCRequestModel {
        /// 开始日期
        public let startDate: String

        /// 结束日期
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

    /// DescribeDeviceDataStats返回参数结构体
    public struct DescribeDeviceDataStatsResponse: TCResponseModel {
        /// 累计注册设备数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registerCnt: UInt64?

        /// 设备数量列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DeviceCntStats]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registerCnt = "RegisterCnt"
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询设备数据统计
    @inlinable
    public func describeDeviceDataStats(_ input: DescribeDeviceDataStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceDataStatsResponse> {
        self.client.execute(action: "DescribeDeviceDataStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备数据统计
    @inlinable
    public func describeDeviceDataStats(_ input: DescribeDeviceDataStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceDataStatsResponse {
        try await self.client.execute(action: "DescribeDeviceDataStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备数据统计
    @inlinable
    public func describeDeviceDataStats(startDate: String, endDate: String, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceDataStatsResponse> {
        self.describeDeviceDataStats(.init(startDate: startDate, endDate: endDate, productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备数据统计
    @inlinable
    public func describeDeviceDataStats(startDate: String, endDate: String, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceDataStatsResponse {
        try await self.describeDeviceDataStats(.init(startDate: startDate, endDate: endDate, productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
