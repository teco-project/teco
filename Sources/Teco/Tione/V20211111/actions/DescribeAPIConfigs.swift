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

extension Tione {
    /// DescribeAPIConfigs请求参数结构体
    public struct DescribeAPIConfigsRequest: TCRequestModel {
        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?

        /// 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        public let order: String?

        /// 排序的依据字段， 取值范围 "CreateTime" "UpdateTime"
        public let orderField: String?

        /// 分页参数，支持的分页过滤Name包括：
        /// ["ClusterId", "ServiceId", "ServiceGroupName", "ServiceGroupId"]
        public let filters: [Filter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderField: String? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderField = orderField
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderField = "OrderField"
            case filters = "Filters"
        }
    }

    /// DescribeAPIConfigs返回参数结构体
    public struct DescribeAPIConfigsResponse: TCResponseModel {
        /// 接口数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 接口详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let details: [APIConfigDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case details = "Details"
            case requestId = "RequestId"
        }
    }

    /// 列举API
    @inlinable
    public func describeAPIConfigs(_ input: DescribeAPIConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAPIConfigsResponse> {
        self.client.execute(action: "DescribeAPIConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列举API
    @inlinable
    public func describeAPIConfigs(_ input: DescribeAPIConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAPIConfigsResponse {
        try await self.client.execute(action: "DescribeAPIConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列举API
    @inlinable
    public func describeAPIConfigs(offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderField: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAPIConfigsResponse> {
        self.describeAPIConfigs(DescribeAPIConfigsRequest(offset: offset, limit: limit, order: order, orderField: orderField, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 列举API
    @inlinable
    public func describeAPIConfigs(offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderField: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAPIConfigsResponse {
        try await self.describeAPIConfigs(DescribeAPIConfigsRequest(offset: offset, limit: limit, order: order, orderField: orderField, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
