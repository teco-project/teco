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

extension Ecm {
    /// DescribeSecurityGroups请求参数结构体
    public struct DescribeSecurityGroupsRequest: TCRequestModel {
        /// 安全组实例ID，例如：esg-33ocnj9n，可通过[DescribeSecurityGroups](https://cloud.tencent.com/document/product/1108/47697)获取。每次请求的实例的上限为100。参数不支持同时指定SecurityGroupIds和Filters。
        public let securityGroupIds: [String]?

        /// 过滤条件，参数不支持同时指定SecurityGroupIds和Filters。
        /// security-group-id - String - （过滤条件）安全组ID。
        /// security-group-name - String - （过滤条件）安全组名称。
        /// tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。
        /// tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        public init(securityGroupIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.securityGroupIds = securityGroupIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupIds = "SecurityGroupIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSecurityGroups返回参数结构体
    public struct DescribeSecurityGroupsResponse: TCResponseModel {
        /// 符合条件的实例数量。
        public let totalCount: Int64

        /// 安全组对象。
        public let securityGroupSet: [SecurityGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case securityGroupSet = "SecurityGroupSet"
            case requestId = "RequestId"
        }
    }

    /// 查看安全组
    @inlinable
    public func describeSecurityGroups(_ input: DescribeSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupsResponse> {
        self.client.execute(action: "DescribeSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看安全组
    @inlinable
    public func describeSecurityGroups(_ input: DescribeSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看安全组
    @inlinable
    public func describeSecurityGroups(securityGroupIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupsResponse> {
        let input = DescribeSecurityGroupsRequest(securityGroupIds: securityGroupIds, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看安全组
    @inlinable
    public func describeSecurityGroups(securityGroupIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupsResponse {
        let input = DescribeSecurityGroupsRequest(securityGroupIds: securityGroupIds, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
