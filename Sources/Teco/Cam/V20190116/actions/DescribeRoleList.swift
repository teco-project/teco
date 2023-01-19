//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cam {
    /// DescribeRoleList请求参数结构体
    public struct DescribeRoleListRequest: TCRequestModel {
        /// 页码，从1开始
        public let page: UInt64

        /// 每页行数，不能大于200
        public let rp: UInt64

        /// 标签筛选
        public let tags: [RoleTags]?

        public init(page: UInt64, rp: UInt64, tags: [RoleTags]? = nil) {
            self.page = page
            self.rp = rp
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case page = "Page"
            case rp = "Rp"
            case tags = "Tags"
        }
    }

    /// DescribeRoleList返回参数结构体
    public struct DescribeRoleListResponse: TCResponseModel {
        /// 角色详情列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [RoleInfo]?

        /// 角色总数
        public let totalNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalNum = "TotalNum"
            case requestId = "RequestId"
        }
    }

    /// 获取角色列表
    ///
    /// 本接口（DescribeRoleList）用于获取账号下的角色列表。
    @inlinable
    public func describeRoleList(_ input: DescribeRoleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoleListResponse> {
        self.client.execute(action: "DescribeRoleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取角色列表
    ///
    /// 本接口（DescribeRoleList）用于获取账号下的角色列表。
    @inlinable
    public func describeRoleList(_ input: DescribeRoleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoleListResponse {
        try await self.client.execute(action: "DescribeRoleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取角色列表
    ///
    /// 本接口（DescribeRoleList）用于获取账号下的角色列表。
    @inlinable
    public func describeRoleList(page: UInt64, rp: UInt64, tags: [RoleTags]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoleListResponse> {
        self.describeRoleList(DescribeRoleListRequest(page: page, rp: rp, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 获取角色列表
    ///
    /// 本接口（DescribeRoleList）用于获取账号下的角色列表。
    @inlinable
    public func describeRoleList(page: UInt64, rp: UInt64, tags: [RoleTags]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoleListResponse {
        try await self.describeRoleList(DescribeRoleListRequest(page: page, rp: rp, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
