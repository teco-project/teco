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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Tcss {
    /// DescribeImageAutoAuthorizedTaskList请求参数结构体
    public struct DescribeImageAutoAuthorizedTaskListRequest: TCRequestModel {
        /// 开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var startTime: Date

        /// 结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var endTime: Date

        /// 过滤字段
        /// Status授权结果，全部授权成功：ALLSUCCSESS，部分授权失败：PARTIALFAIL,全部授权失败：ALLFAIL
        /// Type授权方式，AUTO:自动授权，MANUAL:手动授权
        /// Source 镜像来源，LOCAL:本地镜像，REGISTRY:仓库镜像
        public let filters: [AssetFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        public init(startTime: Date, endTime: Date, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeImageAutoAuthorizedTaskList返回参数结构体
    public struct DescribeImageAutoAuthorizedTaskListResponse: TCResponseModel {
        /// 自动授权任务列表
        public let list: [ImageAutoAuthorizedTask]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询镜像自动授权任务列表
    @inlinable
    public func describeImageAutoAuthorizedTaskList(_ input: DescribeImageAutoAuthorizedTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageAutoAuthorizedTaskListResponse > {
        self.client.execute(action: "DescribeImageAutoAuthorizedTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权任务列表
    @inlinable
    public func describeImageAutoAuthorizedTaskList(_ input: DescribeImageAutoAuthorizedTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageAutoAuthorizedTaskListResponse {
        try await self.client.execute(action: "DescribeImageAutoAuthorizedTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像自动授权任务列表
    @inlinable
    public func describeImageAutoAuthorizedTaskList(startTime: Date, endTime: Date, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageAutoAuthorizedTaskListResponse > {
        self.describeImageAutoAuthorizedTaskList(DescribeImageAutoAuthorizedTaskListRequest(startTime: startTime, endTime: endTime, filters: filters, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }

    /// 查询镜像自动授权任务列表
    @inlinable
    public func describeImageAutoAuthorizedTaskList(startTime: Date, endTime: Date, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageAutoAuthorizedTaskListResponse {
        try await self.describeImageAutoAuthorizedTaskList(DescribeImageAutoAuthorizedTaskListRequest(startTime: startTime, endTime: endTime, filters: filters, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }
}
