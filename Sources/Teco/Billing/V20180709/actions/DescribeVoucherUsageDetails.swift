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

extension Billing {
    /// DescribeVoucherUsageDetails请求参数结构体
    public struct DescribeVoucherUsageDetailsRequest: TCRequestModel {
        /// 一页多少条数据，默认是20条，最大不超过1000
        public let limit: Int64

        /// 第多少页，默认是1
        public let offset: Int64

        /// 代金券id
        public let voucherId: String?

        /// 操作人，默认就是用户uin
        public let `operator`: String?

        public init(limit: Int64, offset: Int64, voucherId: String? = nil, operator: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.voucherId = voucherId
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case voucherId = "VoucherId"
            case `operator` = "Operator"
        }
    }

    /// DescribeVoucherUsageDetails返回参数结构体
    public struct DescribeVoucherUsageDetailsResponse: TCResponseModel {
        /// 券总数
        public let totalCount: Int64

        /// 总已用金额（微分）
        public let totalUsedAmount: Int64

        /// 代金券使用记录细节
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let usageRecords: [UsageRecords]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case totalUsedAmount = "TotalUsedAmount"
            case usageRecords = "UsageRecords"
            case requestId = "RequestId"
        }
    }

    /// 获取代金券使用记录
    @inlinable
    public func describeVoucherUsageDetails(_ input: DescribeVoucherUsageDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVoucherUsageDetailsResponse > {
        self.client.execute(action: "DescribeVoucherUsageDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取代金券使用记录
    @inlinable
    public func describeVoucherUsageDetails(_ input: DescribeVoucherUsageDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVoucherUsageDetailsResponse {
        try await self.client.execute(action: "DescribeVoucherUsageDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取代金券使用记录
    @inlinable
    public func describeVoucherUsageDetails(limit: Int64, offset: Int64, voucherId: String? = nil, operator: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVoucherUsageDetailsResponse > {
        self.describeVoucherUsageDetails(DescribeVoucherUsageDetailsRequest(limit: limit, offset: offset, voucherId: voucherId, operator: `operator`), logger: logger, on: eventLoop)
    }

    /// 获取代金券使用记录
    @inlinable
    public func describeVoucherUsageDetails(limit: Int64, offset: Int64, voucherId: String? = nil, operator: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVoucherUsageDetailsResponse {
        try await self.describeVoucherUsageDetails(DescribeVoucherUsageDetailsRequest(limit: limit, offset: offset, voucherId: voucherId, operator: `operator`), logger: logger, on: eventLoop)
    }
}
