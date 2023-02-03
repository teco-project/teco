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

extension Vpc {
    /// DescribeNatGatewayDestinationIpPortTranslationNatRules请求参数结构体
    public struct DescribeNatGatewayDestinationIpPortTranslationNatRulesRequest: TCRequestModel {
        /// NAT网关ID。
        public let natGatewayIds: [String]?

        /// 过滤条件:
        /// 参数不支持同时指定NatGatewayIds和Filters。
        /// <li> nat-gateway-id，NAT网关的ID，如`nat-0yi4hekt`</li>
        /// <li> vpc-id，私有网络VPC的ID，如`vpc-0yi4hekt`</li>
        /// <li> public-ip-address， 弹性IP，如`139.199.232.238`。</li>
        /// <li>public-port， 公网端口。</li>
        /// <li>private-ip-address， 内网IP，如`10.0.0.1`。</li>
        /// <li>private-port， 内网端口。</li>
        /// <li>description，规则描述。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(natGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.natGatewayIds = natGatewayIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayIds = "NatGatewayIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeNatGatewayDestinationIpPortTranslationNatRules返回参数结构体
    public struct DescribeNatGatewayDestinationIpPortTranslationNatRulesResponse: TCResponseModel {
        /// NAT网关端口转发规则对象数组。
        public let natGatewayDestinationIpPortTranslationNatRuleSet: [NatGatewayDestinationIpPortTranslationNatRule]

        /// 符合条件的NAT网关端口转发规则对象数目。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case natGatewayDestinationIpPortTranslationNatRuleSet = "NatGatewayDestinationIpPortTranslationNatRuleSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询NAT网关端口转发规则
    ///
    /// 本接口（DescribeNatGatewayDestinationIpPortTranslationNatRules）用于查询NAT网关端口转发规则对象数组。
    @inlinable
    public func describeNatGatewayDestinationIpPortTranslationNatRules(_ input: DescribeNatGatewayDestinationIpPortTranslationNatRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatGatewayDestinationIpPortTranslationNatRulesResponse> {
        self.client.execute(action: "DescribeNatGatewayDestinationIpPortTranslationNatRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询NAT网关端口转发规则
    ///
    /// 本接口（DescribeNatGatewayDestinationIpPortTranslationNatRules）用于查询NAT网关端口转发规则对象数组。
    @inlinable
    public func describeNatGatewayDestinationIpPortTranslationNatRules(_ input: DescribeNatGatewayDestinationIpPortTranslationNatRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatGatewayDestinationIpPortTranslationNatRulesResponse {
        try await self.client.execute(action: "DescribeNatGatewayDestinationIpPortTranslationNatRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询NAT网关端口转发规则
    ///
    /// 本接口（DescribeNatGatewayDestinationIpPortTranslationNatRules）用于查询NAT网关端口转发规则对象数组。
    @inlinable
    public func describeNatGatewayDestinationIpPortTranslationNatRules(natGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatGatewayDestinationIpPortTranslationNatRulesResponse> {
        let input = DescribeNatGatewayDestinationIpPortTranslationNatRulesRequest(natGatewayIds: natGatewayIds, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeNatGatewayDestinationIpPortTranslationNatRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询NAT网关端口转发规则
    ///
    /// 本接口（DescribeNatGatewayDestinationIpPortTranslationNatRules）用于查询NAT网关端口转发规则对象数组。
    @inlinable
    public func describeNatGatewayDestinationIpPortTranslationNatRules(natGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatGatewayDestinationIpPortTranslationNatRulesResponse {
        let input = DescribeNatGatewayDestinationIpPortTranslationNatRulesRequest(natGatewayIds: natGatewayIds, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeNatGatewayDestinationIpPortTranslationNatRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
