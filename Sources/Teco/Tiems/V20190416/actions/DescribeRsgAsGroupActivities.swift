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

extension Tiems {
    /// DescribeRsgAsGroupActivities请求参数结构体
    public struct DescribeRsgAsGroupActivitiesRequest: TCRequestModel {
        /// 伸缩组 ID
        public let id: String

        /// 查询活动的开始时间
        public let startTime: String?

        /// 查询互动的结束时间
        public let endTime: String?

        /// 筛选选项
        public let filters: [Filter]?

        /// 偏移量，默认为 0
        public let offset: UInt64?

        /// 返回数量，默认为 20，最大值为 200
        public let limit: UInt64?

        /// 输出列表的排列顺序。取值范围："ASC", "DESC"
        public let order: String?

        /// 排序的依据字段， 取值范围 "CREATE_TIME", "UPDATE_TIME", "NAME"
        public let orderField: String?

        public init(id: String, startTime: String? = nil, endTime: String? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil) {
            self.id = id
            self.startTime = startTime
            self.endTime = endTime
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderField = orderField
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderField = "OrderField"
        }
    }

    /// DescribeRsgAsGroupActivities返回参数结构体
    public struct DescribeRsgAsGroupActivitiesResponse: TCResponseModel {
        /// 伸缩组活动数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rsgAsGroupActivitySet: [RsgAsGroupActivity]?

        /// 所查询的伸缩组活动总数目
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rsgAsGroupActivitySet = "RsgAsGroupActivitySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询伸缩组活动
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeRsgAsGroupActivities(_ input: DescribeRsgAsGroupActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRsgAsGroupActivitiesResponse> {
        self.client.execute(action: "DescribeRsgAsGroupActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询伸缩组活动
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeRsgAsGroupActivities(_ input: DescribeRsgAsGroupActivitiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRsgAsGroupActivitiesResponse {
        try await self.client.execute(action: "DescribeRsgAsGroupActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询伸缩组活动
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeRsgAsGroupActivities(id: String, startTime: String? = nil, endTime: String? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRsgAsGroupActivitiesResponse> {
        let input = DescribeRsgAsGroupActivitiesRequest(id: id, startTime: startTime, endTime: endTime, filters: filters, offset: offset, limit: limit, order: order, orderField: orderField)
        return self.client.execute(action: "DescribeRsgAsGroupActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询伸缩组活动
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeRsgAsGroupActivities(id: String, startTime: String? = nil, endTime: String? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRsgAsGroupActivitiesResponse {
        let input = DescribeRsgAsGroupActivitiesRequest(id: id, startTime: startTime, endTime: endTime, filters: filters, offset: offset, limit: limit, order: order, orderField: orderField)
        return try await self.client.execute(action: "DescribeRsgAsGroupActivities", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
