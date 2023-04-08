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

extension Wedata {
    /// DescribeDataSourceWithoutInfo请求参数结构体
    public struct DescribeDataSourceWithoutInfoRequest: TCRequestModel {
        /// 1
        public let orderFields: [OrderField]?

        /// 1
        public let filters: [Filter]?

        public init(orderFields: [OrderField]? = nil, filters: [Filter]? = nil) {
            self.orderFields = orderFields
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case orderFields = "OrderFields"
            case filters = "Filters"
        }
    }

    /// DescribeDataSourceWithoutInfo返回参数结构体
    public struct DescribeDataSourceWithoutInfoResponse: TCResponseModel {
        /// 1
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DataSourceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查看数据源列表不带额外信息【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源列表
    @inlinable
    public func describeDataSourceWithoutInfo(_ input: DescribeDataSourceWithoutInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourceWithoutInfoResponse> {
        self.client.execute(action: "DescribeDataSourceWithoutInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看数据源列表不带额外信息【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源列表
    @inlinable
    public func describeDataSourceWithoutInfo(_ input: DescribeDataSourceWithoutInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSourceWithoutInfoResponse {
        try await self.client.execute(action: "DescribeDataSourceWithoutInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看数据源列表不带额外信息【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源列表
    @inlinable
    public func describeDataSourceWithoutInfo(orderFields: [OrderField]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourceWithoutInfoResponse> {
        self.describeDataSourceWithoutInfo(.init(orderFields: orderFields, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查看数据源列表不带额外信息【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源列表
    @inlinable
    public func describeDataSourceWithoutInfo(orderFields: [OrderField]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSourceWithoutInfoResponse {
        try await self.describeDataSourceWithoutInfo(.init(orderFields: orderFields, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
