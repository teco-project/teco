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

extension Yunjing {
    /// DescribeNonlocalLoginPlaces请求参数结构体
    public struct DescribeNonlocalLoginPlacesRequest: TCRequestModel {
        /// 客户端唯一Uuid。
        public let uuid: String?

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 -  查询关键字</li>
        /// <li>Status - String - 是否必填：否 -  登录状态（NON_LOCAL_LOGIN: 异地登录 | NORMAL_LOGIN : 正常登录）</li>
        public let filters: [Filter]?

        public init(uuid: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.uuid = uuid
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeNonlocalLoginPlaces返回参数结构体
    public struct DescribeNonlocalLoginPlacesResponse: TCResponseModel {
        /// 记录总数。
        public let totalCount: UInt64

        /// 异地登录信息数组。
        public let nonLocalLoginPlaces: [NonLocalLoginPlace]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nonLocalLoginPlaces = "NonLocalLoginPlaces"
            case requestId = "RequestId"
        }
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable
    public func describeNonlocalLoginPlaces(_ input: DescribeNonlocalLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNonlocalLoginPlacesResponse > {
        self.client.execute(action: "DescribeNonlocalLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable
    public func describeNonlocalLoginPlaces(_ input: DescribeNonlocalLoginPlacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNonlocalLoginPlacesResponse {
        try await self.client.execute(action: "DescribeNonlocalLoginPlaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable
    public func describeNonlocalLoginPlaces(uuid: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNonlocalLoginPlacesResponse > {
        self.describeNonlocalLoginPlaces(DescribeNonlocalLoginPlacesRequest(uuid: uuid, limit: limit, offset: offset, filters: filters), logger: logger, on: eventLoop)
    }

    /// 获取异地登录事件
    ///
    /// 本接口(DescribeNonlocalLoginPlaces)用于获取异地登录事件。
    @inlinable
    public func describeNonlocalLoginPlaces(uuid: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNonlocalLoginPlacesResponse {
        try await self.describeNonlocalLoginPlaces(DescribeNonlocalLoginPlacesRequest(uuid: uuid, limit: limit, offset: offset, filters: filters), logger: logger, on: eventLoop)
    }
}
