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

extension Vpc {
    /// DescribeAddressTemplateGroups请求参数结构体
    public struct DescribeAddressTemplateGroupsRequest: TCRequest {
        /// 过滤条件。
        /// - address-template-group-name - String - （过滤条件）IP地址模板集合名称。
        /// - address-template-group-id - String - （过滤条件）IP地址模板实集合例ID，例如：ipmg-mdunqeb6。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: String?

        /// 返回数量，默认为20，最大值为100。
        public let limit: String?

        /// 是否查询IP地址模板成员标识。
        public let needMemberInfo: Bool?

        public init(filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, needMemberInfo: Bool? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.needMemberInfo = needMemberInfo
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case needMemberInfo = "NeedMemberInfo"
        }
    }

    /// DescribeAddressTemplateGroups返回参数结构体
    public struct DescribeAddressTemplateGroupsResponse: TCResponse {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// IP地址模板。
        public let addressTemplateGroupSet: [AddressTemplateGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case addressTemplateGroupSet = "AddressTemplateGroupSet"
            case requestId = "RequestId"
        }
    }

    /// 查询IP地址模板集合
    ///
    /// 本接口（DescribeAddressTemplateGroups）用于查询IP地址模板集合。
    @inlinable
    public func describeAddressTemplateGroups(_ input: DescribeAddressTemplateGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAddressTemplateGroupsResponse> {
        self.client.execute(action: "DescribeAddressTemplateGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询IP地址模板集合
    ///
    /// 本接口（DescribeAddressTemplateGroups）用于查询IP地址模板集合。
    @inlinable
    public func describeAddressTemplateGroups(_ input: DescribeAddressTemplateGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressTemplateGroupsResponse {
        try await self.client.execute(action: "DescribeAddressTemplateGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询IP地址模板集合
    ///
    /// 本接口（DescribeAddressTemplateGroups）用于查询IP地址模板集合。
    @inlinable
    public func describeAddressTemplateGroups(filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, needMemberInfo: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAddressTemplateGroupsResponse> {
        self.describeAddressTemplateGroups(.init(filters: filters, offset: offset, limit: limit, needMemberInfo: needMemberInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 查询IP地址模板集合
    ///
    /// 本接口（DescribeAddressTemplateGroups）用于查询IP地址模板集合。
    @inlinable
    public func describeAddressTemplateGroups(filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, needMemberInfo: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressTemplateGroupsResponse {
        try await self.describeAddressTemplateGroups(.init(filters: filters, offset: offset, limit: limit, needMemberInfo: needMemberInfo), region: region, logger: logger, on: eventLoop)
    }
}
