//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tsf {
    /// DescribeGroupInstances请求参数结构体
    public struct DescribeGroupInstancesRequest: TCRequestModel {
        /// 部署组ID
        public let groupId: String

        /// 搜索字段
        public let searchWord: String?

        /// 排序字段
        public let orderBy: String?

        /// 排序类型
        public let orderType: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 分页个数
        public let limit: Int64?

        public init(groupId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.groupId = groupId
            self.searchWord = searchWord
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case searchWord = "SearchWord"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeGroupInstances返回参数结构体
    public struct DescribeGroupInstancesResponse: TCResponseModel {
        /// 部署组机器信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageInstance?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable
    public func describeGroupInstances(_ input: DescribeGroupInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupInstancesResponse> {
        self.client.execute(action: "DescribeGroupInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable
    public func describeGroupInstances(_ input: DescribeGroupInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupInstancesResponse {
        try await self.client.execute(action: "DescribeGroupInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable
    public func describeGroupInstances(groupId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupInstancesResponse> {
        self.describeGroupInstances(DescribeGroupInstancesRequest(groupId: groupId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable
    public func describeGroupInstances(groupId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupInstancesResponse {
        try await self.describeGroupInstances(DescribeGroupInstancesRequest(groupId: groupId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
