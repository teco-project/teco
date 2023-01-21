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

extension Gaap {
    /// DescribeRuleRealServers请求参数结构体
    public struct DescribeRuleRealServersRequest: TCRequestModel {
        /// 转发规则ID
        public let ruleId: String

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为1000。
        public let limit: UInt64?

        public init(ruleId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.ruleId = ruleId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeRuleRealServers返回参数结构体
    public struct DescribeRuleRealServersResponse: TCResponseModel {
        /// 可绑定的源站个数
        public let totalCount: UInt64

        /// 可绑定的源站信息列表
        public let realServerSet: [RealServer]

        /// 已绑定的源站个数
        public let bindRealServerTotalCount: UInt64

        /// 已绑定的源站信息列表
        public let bindRealServerSet: [BindRealServer]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case realServerSet = "RealServerSet"
            case bindRealServerTotalCount = "BindRealServerTotalCount"
            case bindRealServerSet = "BindRealServerSet"
            case requestId = "RequestId"
        }
    }

    /// 查询转发规则相关源站信息
    ///
    /// 本接口（DescribeRuleRealServers）用于查询转发规则相关的源站信息， 包括该规则可绑定的源站信息和已绑定的源站信息。
    @inlinable
    public func describeRuleRealServers(_ input: DescribeRuleRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleRealServersResponse> {
        self.client.execute(action: "DescribeRuleRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询转发规则相关源站信息
    ///
    /// 本接口（DescribeRuleRealServers）用于查询转发规则相关的源站信息， 包括该规则可绑定的源站信息和已绑定的源站信息。
    @inlinable
    public func describeRuleRealServers(_ input: DescribeRuleRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleRealServersResponse {
        try await self.client.execute(action: "DescribeRuleRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询转发规则相关源站信息
    ///
    /// 本接口（DescribeRuleRealServers）用于查询转发规则相关的源站信息， 包括该规则可绑定的源站信息和已绑定的源站信息。
    @inlinable
    public func describeRuleRealServers(ruleId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleRealServersResponse> {
        self.describeRuleRealServers(DescribeRuleRealServersRequest(ruleId: ruleId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询转发规则相关源站信息
    ///
    /// 本接口（DescribeRuleRealServers）用于查询转发规则相关的源站信息， 包括该规则可绑定的源站信息和已绑定的源站信息。
    @inlinable
    public func describeRuleRealServers(ruleId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleRealServersResponse {
        try await self.describeRuleRealServers(DescribeRuleRealServersRequest(ruleId: ruleId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
