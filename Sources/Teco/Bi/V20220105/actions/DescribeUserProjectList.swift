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
    /// DescribeUserProjectList请求参数结构体
    public struct DescribeUserProjectListRequest: TCRequest {
        /// 项目ID
        public let projectId: Int64?

        public let allPage: Bool?

        public let pageNo: Int64?

        public let pageSize: Int64?

        public init(projectId: Int64? = nil, allPage: Bool? = nil, pageNo: Int64? = nil, pageSize: Int64? = nil) {
            self.projectId = projectId
            self.allPage = allPage
            self.pageNo = pageNo
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case allPage = "AllPage"
            case pageNo = "PageNo"
            case pageSize = "PageSize"
        }
    }

    /// DescribeUserProjectList返回参数结构体
    public struct DescribeUserProjectListResponse: TCResponse {
        /// 数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CorpUserListData?

        /// 扩展
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case extra = "Extra"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 项目内-用户接口
    @inlinable
    public func describeUserProjectList(_ input: DescribeUserProjectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserProjectListResponse> {
        self.client.execute(action: "DescribeUserProjectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 项目内-用户接口
    @inlinable
    public func describeUserProjectList(_ input: DescribeUserProjectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserProjectListResponse {
        try await self.client.execute(action: "DescribeUserProjectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 项目内-用户接口
    @inlinable
    public func describeUserProjectList(projectId: Int64? = nil, allPage: Bool? = nil, pageNo: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserProjectListResponse> {
        self.describeUserProjectList(.init(projectId: projectId, allPage: allPage, pageNo: pageNo, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 项目内-用户接口
    @inlinable
    public func describeUserProjectList(projectId: Int64? = nil, allPage: Bool? = nil, pageNo: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserProjectListResponse {
        try await self.describeUserProjectList(.init(projectId: projectId, allPage: allPage, pageNo: pageNo, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }
}
