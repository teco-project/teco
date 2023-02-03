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

extension Yunjing {
    /// DescribeReverseShellRules请求参数结构体
    public struct DescribeReverseShellRulesRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 - 关键字(进程名称)</li>
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

    /// DescribeReverseShellRules返回参数结构体
    public struct DescribeReverseShellRulesResponse: TCResponseModel {
        /// 列表内容
        public let list: [ReverseShellRule]

        /// 总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取反弹Shell规则列表
    @inlinable
    public func describeReverseShellRules(_ input: DescribeReverseShellRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellRulesResponse> {
        self.client.execute(action: "DescribeReverseShellRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取反弹Shell规则列表
    @inlinable
    public func describeReverseShellRules(_ input: DescribeReverseShellRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellRulesResponse {
        try await self.client.execute(action: "DescribeReverseShellRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取反弹Shell规则列表
    @inlinable
    public func describeReverseShellRules(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellRulesResponse> {
        let input = DescribeReverseShellRulesRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeReverseShellRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取反弹Shell规则列表
    @inlinable
    public func describeReverseShellRules(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellRulesResponse {
        let input = DescribeReverseShellRulesRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeReverseShellRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
