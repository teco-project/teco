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

extension Organization {
    /// DescribeOrganizationAuthNode请求参数结构体
    public struct DescribeOrganizationAuthNodeRequest: TCRequestModel {
        /// 偏移量。
        public let offset: UInt64

        /// 限制数目。最大50
        public let limit: UInt64

        public init(offset: UInt64, limit: UInt64) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeOrganizationAuthNode返回参数结构体
    public struct DescribeOrganizationAuthNodeResponse: TCResponseModel {
        /// 总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 条目详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [AuthNode]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 获取可创建组织成员的认证主体关系列表
    @inlinable
    public func describeOrganizationAuthNode(_ input: DescribeOrganizationAuthNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationAuthNodeResponse> {
        self.client.execute(action: "DescribeOrganizationAuthNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取可创建组织成员的认证主体关系列表
    @inlinable
    public func describeOrganizationAuthNode(_ input: DescribeOrganizationAuthNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationAuthNodeResponse {
        try await self.client.execute(action: "DescribeOrganizationAuthNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取可创建组织成员的认证主体关系列表
    @inlinable
    public func describeOrganizationAuthNode(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationAuthNodeResponse> {
        let input = DescribeOrganizationAuthNodeRequest(offset: offset, limit: limit)
        return self.client.execute(action: "DescribeOrganizationAuthNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取可创建组织成员的认证主体关系列表
    @inlinable
    public func describeOrganizationAuthNode(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationAuthNodeResponse {
        let input = DescribeOrganizationAuthNodeRequest(offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeOrganizationAuthNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
