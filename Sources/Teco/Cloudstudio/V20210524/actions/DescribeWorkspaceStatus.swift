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

extension Cloudstudio {
    /// DescribeWorkspaceStatus请求参数结构体
    public struct DescribeWorkspaceStatusRequest: TCRequestModel {
        /// 用户所属组
        public let cloudStudioSessionTeam: String

        /// 空间标识
        public let spaceKey: String

        public init(cloudStudioSessionTeam: String, spaceKey: String) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.spaceKey = spaceKey
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case spaceKey = "SpaceKey"
        }
    }

    /// DescribeWorkspaceStatus返回参数结构体
    public struct DescribeWorkspaceStatusResponse: TCResponseModel {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: WorkspaceStatusInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取工作空间元信息
    @inlinable
    public func describeWorkspaceStatus(_ input: DescribeWorkspaceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceStatusResponse> {
        self.client.execute(action: "DescribeWorkspaceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取工作空间元信息
    @inlinable
    public func describeWorkspaceStatus(_ input: DescribeWorkspaceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceStatusResponse {
        try await self.client.execute(action: "DescribeWorkspaceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取工作空间元信息
    @inlinable
    public func describeWorkspaceStatus(cloudStudioSessionTeam: String, spaceKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceStatusResponse> {
        let input = DescribeWorkspaceStatusRequest(cloudStudioSessionTeam: cloudStudioSessionTeam, spaceKey: spaceKey)
        return self.client.execute(action: "DescribeWorkspaceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取工作空间元信息
    @inlinable
    public func describeWorkspaceStatus(cloudStudioSessionTeam: String, spaceKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceStatusResponse {
        let input = DescribeWorkspaceStatusRequest(cloudStudioSessionTeam: cloudStudioSessionTeam, spaceKey: spaceKey)
        return try await self.client.execute(action: "DescribeWorkspaceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
