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

extension Cdc {
    /// DescribeDedicatedClusterOrders请求参数结构体
    public struct DescribeDedicatedClusterOrdersRequest: TCRequestModel {
        /// 按照专用集群id过滤
        public let dedicatedClusterIds: [String]?

        /// 按照专用集群订单id过滤
        public let dedicatedClusterOrderIds: String?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        /// 订单状态为过滤条件：PENDING INCONSTRUCTION DELIVERING DELIVERED EXPIRED CANCELLED  OFFLINE
        public let status: String?

        /// 订单类型为过滤条件：CREATE  EXTEND
        public let actionType: String?

        public init(dedicatedClusterIds: [String]? = nil, dedicatedClusterOrderIds: String? = nil, offset: Int64? = nil, limit: Int64? = nil, status: String? = nil, actionType: String? = nil) {
            self.dedicatedClusterIds = dedicatedClusterIds
            self.dedicatedClusterOrderIds = dedicatedClusterOrderIds
            self.offset = offset
            self.limit = limit
            self.status = status
            self.actionType = actionType
        }

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterIds = "DedicatedClusterIds"
            case dedicatedClusterOrderIds = "DedicatedClusterOrderIds"
            case offset = "Offset"
            case limit = "Limit"
            case status = "Status"
            case actionType = "ActionType"
        }
    }

    /// DescribeDedicatedClusterOrders返回参数结构体
    public struct DescribeDedicatedClusterOrdersResponse: TCResponseModel {
        /// 专用集群订单列表
        public let dedicatedClusterOrderSet: [DedicatedClusterOrder]

        /// 符合条件的专用集群订单总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterOrderSet = "DedicatedClusterOrderSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询专用集群订单列表
    @inlinable
    public func describeDedicatedClusterOrders(_ input: DescribeDedicatedClusterOrdersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDedicatedClusterOrdersResponse > {
        self.client.execute(action: "DescribeDedicatedClusterOrders", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专用集群订单列表
    @inlinable
    public func describeDedicatedClusterOrders(_ input: DescribeDedicatedClusterOrdersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterOrdersResponse {
        try await self.client.execute(action: "DescribeDedicatedClusterOrders", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专用集群订单列表
    @inlinable
    public func describeDedicatedClusterOrders(dedicatedClusterIds: [String]? = nil, dedicatedClusterOrderIds: String? = nil, offset: Int64? = nil, limit: Int64? = nil, status: String? = nil, actionType: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDedicatedClusterOrdersResponse > {
        self.describeDedicatedClusterOrders(DescribeDedicatedClusterOrdersRequest(dedicatedClusterIds: dedicatedClusterIds, dedicatedClusterOrderIds: dedicatedClusterOrderIds, offset: offset, limit: limit, status: status, actionType: actionType), logger: logger, on: eventLoop)
    }

    /// 查询专用集群订单列表
    @inlinable
    public func describeDedicatedClusterOrders(dedicatedClusterIds: [String]? = nil, dedicatedClusterOrderIds: String? = nil, offset: Int64? = nil, limit: Int64? = nil, status: String? = nil, actionType: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterOrdersResponse {
        try await self.describeDedicatedClusterOrders(DescribeDedicatedClusterOrdersRequest(dedicatedClusterIds: dedicatedClusterIds, dedicatedClusterOrderIds: dedicatedClusterOrderIds, offset: offset, limit: limit, status: status, actionType: actionType), logger: logger, on: eventLoop)
    }
}
