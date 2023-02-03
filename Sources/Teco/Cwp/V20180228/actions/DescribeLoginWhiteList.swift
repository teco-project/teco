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

extension Cwp {
    /// DescribeLoginWhiteList请求参数结构体
    public struct DescribeLoginWhiteListRequest: TCRequestModel {
        /// 返回数量，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 查询关键字 </li>
        /// <li>UserName - String - 是否必填：否 - 用户名筛选 </li>
        /// <li>ModifyBeginTime - String - 是否必填：否 - 按照修改时间段筛选，开始时间 </li>
        /// <li>ModifyEndTime - String - 是否必填：否 - 按照修改时间段筛选，结束时间 </li>
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeLoginWhiteList返回参数结构体
    public struct DescribeLoginWhiteListResponse: TCResponseModel {
        /// 记录总数
        public let totalCount: UInt64

        /// 异地登录白名单数组
        public let loginWhiteLists: [LoginWhiteLists]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case loginWhiteLists = "LoginWhiteLists"
            case requestId = "RequestId"
        }
    }

    /// 获取异地登录白名单列表
    @inlinable
    public func describeLoginWhiteList(_ input: DescribeLoginWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoginWhiteListResponse> {
        self.client.execute(action: "DescribeLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单列表
    @inlinable
    public func describeLoginWhiteList(_ input: DescribeLoginWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginWhiteListResponse {
        try await self.client.execute(action: "DescribeLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取异地登录白名单列表
    @inlinable
    public func describeLoginWhiteList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoginWhiteListResponse> {
        let input = DescribeLoginWhiteListRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取异地登录白名单列表
    @inlinable
    public func describeLoginWhiteList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginWhiteListResponse {
        let input = DescribeLoginWhiteListRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
