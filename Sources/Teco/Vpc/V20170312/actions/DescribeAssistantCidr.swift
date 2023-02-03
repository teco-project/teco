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
    /// DescribeAssistantCidr请求参数结构体
    public struct DescribeAssistantCidrRequest: TCRequestModel {
        /// `VPC`实例`ID`数组。形如：[`vpc-6v2ht8q5`]
        public let vpcIds: [String]?

        /// 过滤条件，参数不支持同时指定VpcIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.vpcIds = vpcIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case vpcIds = "VpcIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeAssistantCidr返回参数结构体
    public struct DescribeAssistantCidrResponse: TCResponseModel {
        /// 符合条件的辅助CIDR数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let assistantCidrSet: [AssistantCidr]?

        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case assistantCidrSet = "AssistantCidrSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询辅助CIDR列表
    ///
    /// 本接口（DescribeAssistantCidr）用于查询辅助CIDR列表。
    @inlinable
    public func describeAssistantCidr(_ input: DescribeAssistantCidrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssistantCidrResponse> {
        self.client.execute(action: "DescribeAssistantCidr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询辅助CIDR列表
    ///
    /// 本接口（DescribeAssistantCidr）用于查询辅助CIDR列表。
    @inlinable
    public func describeAssistantCidr(_ input: DescribeAssistantCidrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssistantCidrResponse {
        try await self.client.execute(action: "DescribeAssistantCidr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询辅助CIDR列表
    ///
    /// 本接口（DescribeAssistantCidr）用于查询辅助CIDR列表。
    @inlinable
    public func describeAssistantCidr(vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssistantCidrResponse> {
        let input = DescribeAssistantCidrRequest(vpcIds: vpcIds, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeAssistantCidr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询辅助CIDR列表
    ///
    /// 本接口（DescribeAssistantCidr）用于查询辅助CIDR列表。
    @inlinable
    public func describeAssistantCidr(vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssistantCidrResponse {
        let input = DescribeAssistantCidrRequest(vpcIds: vpcIds, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeAssistantCidr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
