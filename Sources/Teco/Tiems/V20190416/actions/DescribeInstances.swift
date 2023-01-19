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

extension Tiems {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCRequestModel {
        /// 筛选选项
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为200
        public let limit: UInt64?

        /// 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        public let order: String?

        /// 排序的依据字段， 取值范围 "CREATE_TIME", "UPDATE_TIME", "NAME"
        public let orderField: String?

        /// 要查询的资源组 ID
        public let resourceGroupId: String?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, resourceGroupId: String? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderField = orderField
            self.resourceGroupId = resourceGroupId
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderField = "OrderField"
            case resourceGroupId = "ResourceGroupId"
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCResponseModel {
        /// 资源组下节点总数
        public let totalCount: UInt64

        /// 资源组下节点列表
        public let instances: [Instance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instances = "Instances"
            case requestId = "RequestId"
        }
    }

    /// 获取节点列表
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 获取节点列表
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取节点列表
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 获取节点列表
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取节点列表
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 获取节点列表
    @inlinable
    public func describeInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, resourceGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.describeInstances(DescribeInstancesRequest(filters: filters, offset: offset, limit: limit, order: order, orderField: orderField, resourceGroupId: resourceGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取节点列表
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 获取节点列表
    @inlinable
    public func describeInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, resourceGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(DescribeInstancesRequest(filters: filters, offset: offset, limit: limit, order: order, orderField: orderField, resourceGroupId: resourceGroupId), region: region, logger: logger, on: eventLoop)
    }
}
