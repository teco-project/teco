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

extension Cloudstudio {
    /// DescribeWorkspaceNameExist请求参数结构体
    public struct DescribeWorkspaceNameExistRequest: TCRequestModel {
        /// 用户所属组
        public let cloudStudioSessionTeam: String

        /// 工作空间名称
        public let name: String

        /// 工作空间ID
        public let workspaceId: String?

        public init(cloudStudioSessionTeam: String, name: String, workspaceId: String? = nil) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.name = name
            self.workspaceId = workspaceId
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case name = "Name"
            case workspaceId = "WorkspaceId"
        }
    }

    /// DescribeWorkspaceNameExist返回参数结构体
    public struct DescribeWorkspaceNameExistResponse: TCResponseModel {
        /// 工作空间信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: WorkspaceInfoDTO?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 检查工作空间是否存在
    @inlinable
    public func describeWorkspaceNameExist(_ input: DescribeWorkspaceNameExistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceNameExistResponse> {
        self.client.execute(action: "DescribeWorkspaceNameExist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检查工作空间是否存在
    @inlinable
    public func describeWorkspaceNameExist(_ input: DescribeWorkspaceNameExistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceNameExistResponse {
        try await self.client.execute(action: "DescribeWorkspaceNameExist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检查工作空间是否存在
    @inlinable
    public func describeWorkspaceNameExist(cloudStudioSessionTeam: String, name: String, workspaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceNameExistResponse> {
        self.describeWorkspaceNameExist(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, name: name, workspaceId: workspaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 检查工作空间是否存在
    @inlinable
    public func describeWorkspaceNameExist(cloudStudioSessionTeam: String, name: String, workspaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceNameExistResponse {
        try await self.describeWorkspaceNameExist(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, name: name, workspaceId: workspaceId), region: region, logger: logger, on: eventLoop)
    }
}
