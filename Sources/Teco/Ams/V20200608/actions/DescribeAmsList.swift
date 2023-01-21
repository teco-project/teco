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

extension Ams {
    /// DescribeAmsList请求参数结构体
    public struct DescribeAmsListRequest: TCRequestModel {
        /// 页码
        public let pageToken: String

        /// 过滤条件
        public let limit: Int64

        /// 查询方向
        public let pageDirection: String

        /// 过滤条件
        public let filters: [Filter]?

        public init(pageToken: String, limit: Int64, pageDirection: String, filters: [Filter]? = nil) {
            self.pageToken = pageToken
            self.limit = limit
            self.pageDirection = pageDirection
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case pageToken = "PageToken"
            case limit = "Limit"
            case pageDirection = "PageDirection"
            case filters = "Filters"
        }
    }

    /// DescribeAmsList返回参数结构体
    public struct DescribeAmsListResponse: TCResponseModel {
        /// 返回列表数据----非必选，该参数暂未对外开放
        public let amsDetailSet: [AmsDetailInfo]

        /// 总条数
        public let total: Int64

        /// 分页 token
        public let pageToken: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case amsDetailSet = "AmsDetailSet"
            case total = "Total"
            case pageToken = "PageToken"
            case requestId = "RequestId"
        }
    }

    /// 获取音频审核明细数据
    ///
    /// 音频审核明细列表
    @inlinable
    public func describeAmsList(_ input: DescribeAmsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAmsListResponse> {
        self.client.execute(action: "DescribeAmsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取音频审核明细数据
    ///
    /// 音频审核明细列表
    @inlinable
    public func describeAmsList(_ input: DescribeAmsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAmsListResponse {
        try await self.client.execute(action: "DescribeAmsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取音频审核明细数据
    ///
    /// 音频审核明细列表
    @inlinable
    public func describeAmsList(pageToken: String, limit: Int64, pageDirection: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAmsListResponse> {
        self.describeAmsList(DescribeAmsListRequest(pageToken: pageToken, limit: limit, pageDirection: pageDirection, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取音频审核明细数据
    ///
    /// 音频审核明细列表
    @inlinable
    public func describeAmsList(pageToken: String, limit: Int64, pageDirection: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAmsListResponse {
        try await self.describeAmsList(DescribeAmsListRequest(pageToken: pageToken, limit: limit, pageDirection: pageDirection, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
