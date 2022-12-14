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

extension Teo {
    /// DescribeAliasDomains请求参数结构体
    public struct DescribeAliasDomainsRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 分页查询偏移量。默认值：0。
        public let offset: Int64?

        /// 分页查询限制数目。默认值：20，最大值：1000。
        public let limit: Int64?

        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// <li>target-name<br>   按照【<strong>目标域名名称</strong>】进行过滤。<br>   类型：String<br>   必选：否</li><li>alias-name<br>   按照【<strong>别称域名名称</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>模糊查询时仅支持过滤字段名为alias-name。
        public let filters: [AdvancedFilter]?

        public init(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil) {
            self.zoneId = zoneId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeAliasDomains返回参数结构体
    public struct DescribeAliasDomainsResponse: TCResponseModel {
        /// 符合条件的别称域名个数。
        public let totalCount: Int64

        /// 别称域名详细信息列表。
        public let aliasDomains: [AliasDomain]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case aliasDomains = "AliasDomains"
            case requestId = "RequestId"
        }
    }

    /// 查询别称域名信息列表
    ///
    /// 查询别称域名信息列表。
    @inlinable
    public func describeAliasDomains(_ input: DescribeAliasDomainsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAliasDomainsResponse > {
        self.client.execute(action: "DescribeAliasDomains", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询别称域名信息列表
    ///
    /// 查询别称域名信息列表。
    @inlinable
    public func describeAliasDomains(_ input: DescribeAliasDomainsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAliasDomainsResponse {
        try await self.client.execute(action: "DescribeAliasDomains", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询别称域名信息列表
    ///
    /// 查询别称域名信息列表。
    @inlinable
    public func describeAliasDomains(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAliasDomainsResponse > {
        self.describeAliasDomains(DescribeAliasDomainsRequest(zoneId: zoneId, offset: offset, limit: limit, filters: filters), logger: logger, on: eventLoop)
    }

    /// 查询别称域名信息列表
    ///
    /// 查询别称域名信息列表。
    @inlinable
    public func describeAliasDomains(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [AdvancedFilter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAliasDomainsResponse {
        try await self.describeAliasDomains(DescribeAliasDomainsRequest(zoneId: zoneId, offset: offset, limit: limit, filters: filters), logger: logger, on: eventLoop)
    }
}
