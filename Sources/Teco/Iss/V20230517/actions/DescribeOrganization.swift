//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DescribeOrganization请求参数结构体
    public struct DescribeOrganizationRequest: TCRequestModel {
        public init() {
        }
    }

    /// 查询组织数据返回结果
    public struct DescribeOrganizationResponse: TCResponseModel {
        /// 组织 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let organizationId: String?

        /// 组织名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 组织父节点 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parentId: String?

        /// 组织层级
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let level: Int64?

        /// 用户id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: Int64?

        /// 组织结构
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parentIds: String?

        /// 设备总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 设备在线数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let online: Int64?

        enum CodingKeys: String, CodingKey {
            case organizationId = "OrganizationId"
            case name = "Name"
            case parentId = "ParentId"
            case level = "Level"
            case appId = "AppId"
            case parentIds = "ParentIds"
            case total = "Total"
            case online = "Online"
        }
    }

    /// 查询组织
    ///
    /// 用于查询组织。
    @inlinable
    public func describeOrganization(_ input: DescribeOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationResponse> {
        self.client.execute(action: "DescribeOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询组织
    ///
    /// 用于查询组织。
    @inlinable
    public func describeOrganization(_ input: DescribeOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationResponse {
        try await self.client.execute(action: "DescribeOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询组织
    ///
    /// 用于查询组织。
    @inlinable
    public func describeOrganization(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationResponse> {
        self.describeOrganization(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询组织
    ///
    /// 用于查询组织。
    @inlinable
    public func describeOrganization(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationResponse {
        try await self.describeOrganization(.init(), region: region, logger: logger, on: eventLoop)
    }
}
