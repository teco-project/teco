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

extension Tcr {
    /// DescribeApplicationTriggerLogPersonal请求参数结构体
    public struct DescribeApplicationTriggerLogPersonalRequest: TCRequestModel {
        /// 仓库名称
        public let repoName: String?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回最大数量，默认 20, 最大值 100
        public let limit: Int64?

        /// 升序或降序
        public let order: String?

        /// 按某列排序
        public let orderBy: String?

        public init(repoName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderBy: String? = nil) {
            self.repoName = repoName
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderBy = orderBy
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderBy = "OrderBy"
        }
    }

    /// DescribeApplicationTriggerLogPersonal返回参数结构体
    public struct DescribeApplicationTriggerLogPersonalResponse: TCResponseModel {
        /// 触发日志返回值
        public let data: DescribeApplicationTriggerLogPersonalResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable
    public func describeApplicationTriggerLogPersonal(_ input: DescribeApplicationTriggerLogPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationTriggerLogPersonalResponse> {
        self.client.execute(action: "DescribeApplicationTriggerLogPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable
    public func describeApplicationTriggerLogPersonal(_ input: DescribeApplicationTriggerLogPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationTriggerLogPersonalResponse {
        try await self.client.execute(action: "DescribeApplicationTriggerLogPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable
    public func describeApplicationTriggerLogPersonal(repoName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationTriggerLogPersonalResponse> {
        self.describeApplicationTriggerLogPersonal(DescribeApplicationTriggerLogPersonalRequest(repoName: repoName, offset: offset, limit: limit, order: order, orderBy: orderBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable
    public func describeApplicationTriggerLogPersonal(repoName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationTriggerLogPersonalResponse {
        try await self.describeApplicationTriggerLogPersonal(DescribeApplicationTriggerLogPersonalRequest(repoName: repoName, offset: offset, limit: limit, order: order, orderBy: orderBy), region: region, logger: logger, on: eventLoop)
    }
}
