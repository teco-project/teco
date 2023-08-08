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

extension Ms {
    /// DescribeEncryptInstances请求参数结构体
    public struct DescribeEncryptInstancesRequest: TCPaginatedRequest {
        /// 多记录查询时使用，页码
        public let pageNumber: Int64?

        /// 多记录每页展示数量
        public let pageSize: Int64?

        /// 多记录查询时排序使用  仅支持CreateTime 任务创建时间排序
        public let orderField: String?

        /// 升序（asc）还是降序（desc），默认：desc。
        public let orderDirection: String?

        /// (条件过滤字段) 平台类型  1.android加固   2.ios源码混淆  3.sdk加固  4.applet小程序加固
        public let platformType: Int64?

        /// (条件过滤字段) 订单采购类型 1-免费试用 2-按年收费 3-按次收费
        public let orderType: Int64?

        /// (条件过滤字段) 1-在线加固 或 2-输出工具加固
        public let encryptOpType: Int64?

        /// (条件过滤字段) 单记录查询时使用，结果ID该字段非空时，结构会根据结果ID进行单记录查询，符合查询条件时，只返回一条记录。
        public let resultId: String?

        /// (条件过滤字段) 查询与订单Id关联的任务
        public let orderId: String?

        /// (条件过滤字段) 查询与资源Id关联的任务
        public let resourceId: String?

        /// (条件过滤字段) 应用类型：android-apk; android-aab;
        public let appType: String?

        /// （条件过滤字段）应用的包名
        public let appPkgName: String?

        /// 加固结果，
        /// 0：正在排队；
        /// 1：加固成功；
        /// 2：加固中；
        /// 3：加固失败；
        /// 5：重试；
        /// 多记录查询时，根据查询结果进行检索使用。
        public let encryptState: [Int64]?

        public init(pageNumber: Int64? = nil, pageSize: Int64? = nil, orderField: String? = nil, orderDirection: String? = nil, platformType: Int64? = nil, orderType: Int64? = nil, encryptOpType: Int64? = nil, resultId: String? = nil, orderId: String? = nil, resourceId: String? = nil, appType: String? = nil, appPkgName: String? = nil, encryptState: [Int64]? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.orderField = orderField
            self.orderDirection = orderDirection
            self.platformType = platformType
            self.orderType = orderType
            self.encryptOpType = encryptOpType
            self.resultId = resultId
            self.orderId = orderId
            self.resourceId = resourceId
            self.appType = appType
            self.appPkgName = appPkgName
            self.encryptState = encryptState
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
            case platformType = "PlatformType"
            case orderType = "OrderType"
            case encryptOpType = "EncryptOpType"
            case resultId = "ResultId"
            case orderId = "OrderId"
            case resourceId = "ResourceId"
            case appType = "AppType"
            case appPkgName = "AppPkgName"
            case encryptState = "EncryptState"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEncryptInstancesResponse) -> DescribeEncryptInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEncryptInstancesRequest(pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, orderField: self.orderField, orderDirection: self.orderDirection, platformType: self.platformType, orderType: self.orderType, encryptOpType: self.encryptOpType, resultId: self.resultId, orderId: self.orderId, resourceId: self.resourceId, appType: self.appType, appPkgName: self.appPkgName, encryptState: self.encryptState)
        }
    }

    /// DescribeEncryptInstances返回参数结构体
    public struct DescribeEncryptInstancesResponse: TCPaginatedResponse {
        /// 总记录数
        public let totalCount: Int64

        /// 渠道合作加固信息数组
        public let encryptResults: [EncryptResults]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case encryptResults = "EncryptResults"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [EncryptResults] {
            self.encryptResults
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询渠道合作加固任务
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，用于查询加固任务，入参中的条件过滤字段均为精准匹配。支持功能点：1. 多任务分页查询  2.根据任务Id唯一值查询单记录
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func describeEncryptInstances(_ input: DescribeEncryptInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEncryptInstancesResponse> {
        fatalError("DescribeEncryptInstances is no longer available.")
    }

    /// 查询渠道合作加固任务
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，用于查询加固任务，入参中的条件过滤字段均为精准匹配。支持功能点：1. 多任务分页查询  2.根据任务Id唯一值查询单记录
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func describeEncryptInstances(_ input: DescribeEncryptInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEncryptInstancesResponse {
        fatalError("DescribeEncryptInstances is no longer available.")
    }

    /// 查询渠道合作加固任务
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，用于查询加固任务，入参中的条件过滤字段均为精准匹配。支持功能点：1. 多任务分页查询  2.根据任务Id唯一值查询单记录
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func describeEncryptInstances(pageNumber: Int64? = nil, pageSize: Int64? = nil, orderField: String? = nil, orderDirection: String? = nil, platformType: Int64? = nil, orderType: Int64? = nil, encryptOpType: Int64? = nil, resultId: String? = nil, orderId: String? = nil, resourceId: String? = nil, appType: String? = nil, appPkgName: String? = nil, encryptState: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEncryptInstancesResponse> {
        fatalError("DescribeEncryptInstances is no longer available.")
    }

    /// 查询渠道合作加固任务
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，用于查询加固任务，入参中的条件过滤字段均为精准匹配。支持功能点：1. 多任务分页查询  2.根据任务Id唯一值查询单记录
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func describeEncryptInstances(pageNumber: Int64? = nil, pageSize: Int64? = nil, orderField: String? = nil, orderDirection: String? = nil, platformType: Int64? = nil, orderType: Int64? = nil, encryptOpType: Int64? = nil, resultId: String? = nil, orderId: String? = nil, resourceId: String? = nil, appType: String? = nil, appPkgName: String? = nil, encryptState: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEncryptInstancesResponse {
        fatalError("DescribeEncryptInstances is no longer available.")
    }

    /// 查询渠道合作加固任务
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，用于查询加固任务，入参中的条件过滤字段均为精准匹配。支持功能点：1. 多任务分页查询  2.根据任务Id唯一值查询单记录
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func describeEncryptInstancesPaginated(_ input: DescribeEncryptInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [EncryptResults])> {
        fatalError("DescribeEncryptInstances is no longer available.")
    }

    /// 查询渠道合作加固任务
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，用于查询加固任务，入参中的条件过滤字段均为精准匹配。支持功能点：1. 多任务分页查询  2.根据任务Id唯一值查询单记录
    @available(*, unavailable, message: "上错服务器了")
    @inlinable @discardableResult
    public func describeEncryptInstancesPaginated(_ input: DescribeEncryptInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEncryptInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("DescribeEncryptInstances is no longer available.")
    }

    /// 查询渠道合作加固任务
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，用于查询加固任务，入参中的条件过滤字段均为精准匹配。支持功能点：1. 多任务分页查询  2.根据任务Id唯一值查询单记录
    ///
    /// - Returns: `AsyncSequence`s of `EncryptResults` and `DescribeEncryptInstancesResponse` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func describeEncryptInstancesPaginator(_ input: DescribeEncryptInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEncryptInstancesRequest> {
        fatalError("DescribeEncryptInstances is no longer available.")
    }
}