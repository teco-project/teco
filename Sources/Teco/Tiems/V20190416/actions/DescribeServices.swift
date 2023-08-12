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
import TecoPaginationHelpers

extension Tiems {
    /// DescribeServices请求参数结构体
    public struct DescribeServicesRequest: TCPaginatedRequest {
        /// 筛选选项，支持筛选的字段：id, region, zone, cluster, status, runtime, rsg_id
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100
        public let limit: UInt64?

        /// 输出列表的排列顺序。取值范围：ASC：升序排列 DESC：降序排列
        public let order: String?

        /// 排序的依据字段， 取值范围 "CREATE_TIME" "UPDATE_TIME"
        public let orderField: String?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderField = orderField
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderField = "OrderField"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeServicesResponse) -> DescribeServicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeServicesRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, orderField: self.orderField)
        }
    }

    /// DescribeServices返回参数结构体
    public struct DescribeServicesResponse: TCPaginatedResponse {
        /// 服务列表
        public let services: [ModelService]

        /// 服务总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case services = "Services"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ModelService`` list from the paginated response.
        public func getItems() -> [ModelService] {
            self.services
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 描述服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeServices(_ input: DescribeServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServicesResponse> {
        fatalError("DescribeServices is no longer available.")
    }

    /// 描述服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeServices(_ input: DescribeServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServicesResponse {
        fatalError("DescribeServices is no longer available.")
    }

    /// 描述服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeServices(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServicesResponse> {
        fatalError("DescribeServices is no longer available.")
    }

    /// 描述服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeServices(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServicesResponse {
        fatalError("DescribeServices is no longer available.")
    }

    /// 描述服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeServicesPaginated(_ input: DescribeServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ModelService])> {
        fatalError("DescribeServices is no longer available.")
    }

    /// 描述服务
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable @discardableResult
    public func describeServicesPaginated(_ input: DescribeServicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeServicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("DescribeServices is no longer available.")
    }

    /// 描述服务
    ///
    /// - Returns: `AsyncSequence`s of `ModelService` and `DescribeServicesResponse` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func describeServicesPaginator(_ input: DescribeServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeServicesRequest> {
        fatalError("DescribeServices is no longer available.")
    }
}
