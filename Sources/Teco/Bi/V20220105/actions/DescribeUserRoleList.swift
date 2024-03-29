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

extension Bi {
    /// DescribeUserRoleList请求参数结构体
    public struct DescribeUserRoleListRequest: TCRequest {
        /// 页码
        public let pageNo: Int64

        /// 页数
        public let pageSize: Int64

        /// 全部页码
        public let allPage: Bool?

        /// 0 企业用户 1 访客 不填表示所有用户
        public let userType: String?

        /// 模糊搜索的关键字
        public let keyword: String?

        /// 项目id
        public let projectId: String?

        public init(pageNo: Int64, pageSize: Int64, allPage: Bool? = nil, userType: String? = nil, keyword: String? = nil, projectId: String? = nil) {
            self.pageNo = pageNo
            self.pageSize = pageSize
            self.allPage = allPage
            self.userType = userType
            self.keyword = keyword
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case pageNo = "PageNo"
            case pageSize = "PageSize"
            case allPage = "AllPage"
            case userType = "UserType"
            case keyword = "Keyword"
            case projectId = "ProjectId"
        }
    }

    /// DescribeUserRoleList返回参数结构体
    public struct DescribeUserRoleListResponse: TCResponse {
        /// 扩展
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: UserRoleListData?

        /// 消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case extra = "Extra"
            case data = "Data"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 用户角色列表
    @inlinable
    public func describeUserRoleList(_ input: DescribeUserRoleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserRoleListResponse> {
        self.client.execute(action: "DescribeUserRoleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户角色列表
    @inlinable
    public func describeUserRoleList(_ input: DescribeUserRoleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserRoleListResponse {
        try await self.client.execute(action: "DescribeUserRoleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户角色列表
    @inlinable
    public func describeUserRoleList(pageNo: Int64, pageSize: Int64, allPage: Bool? = nil, userType: String? = nil, keyword: String? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserRoleListResponse> {
        self.describeUserRoleList(.init(pageNo: pageNo, pageSize: pageSize, allPage: allPage, userType: userType, keyword: keyword, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 用户角色列表
    @inlinable
    public func describeUserRoleList(pageNo: Int64, pageSize: Int64, allPage: Bool? = nil, userType: String? = nil, keyword: String? = nil, projectId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserRoleListResponse {
        try await self.describeUserRoleList(.init(pageNo: pageNo, pageSize: pageSize, allPage: allPage, userType: userType, keyword: keyword, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
