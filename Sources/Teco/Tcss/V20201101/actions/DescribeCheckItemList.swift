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

extension Tcss {
    /// DescribeCheckItemList请求参数结构体
    public struct DescribeCheckItemListRequest: TCRequestModel {
        /// 偏移量
        public let offset: UInt64?

        /// 每次查询的最大记录数量
        public let limit: UInt64?

        /// Name 可取值：risk_level风险等级, risk_target检查对象，风险对象,risk_type风险类别,risk_attri检测项所属的风险类型
        public let filters: [ComplianceFilters]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeCheckItemList返回参数结构体
    public struct DescribeCheckItemListResponse: TCResponseModel {
        /// 检查项详情数组
        public let clusterCheckItems: [ClusterCheckItem]

        /// 检查项总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterCheckItems = "ClusterCheckItems"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询所有检查项接口
    ///
    /// 查询所有检查项接口，返回总数和检查项列表
    @inlinable
    public func describeCheckItemList(_ input: DescribeCheckItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCheckItemListResponse> {
        self.client.execute(action: "DescribeCheckItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有检查项接口
    ///
    /// 查询所有检查项接口，返回总数和检查项列表
    @inlinable
    public func describeCheckItemList(_ input: DescribeCheckItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCheckItemListResponse {
        try await self.client.execute(action: "DescribeCheckItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有检查项接口
    ///
    /// 查询所有检查项接口，返回总数和检查项列表
    @inlinable
    public func describeCheckItemList(offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCheckItemListResponse> {
        let input = DescribeCheckItemListRequest(offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribeCheckItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有检查项接口
    ///
    /// 查询所有检查项接口，返回总数和检查项列表
    @inlinable
    public func describeCheckItemList(offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCheckItemListResponse {
        let input = DescribeCheckItemListRequest(offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribeCheckItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
