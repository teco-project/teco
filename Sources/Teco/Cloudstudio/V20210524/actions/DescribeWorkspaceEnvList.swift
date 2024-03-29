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
    /// DescribeWorkspaceEnvList请求参数结构体
    public struct DescribeWorkspaceEnvListRequest: TCRequest {
        /// 用户所属组
        public let cloudStudioSessionTeam: String

        public init(cloudStudioSessionTeam: String) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
        }
    }

    /// DescribeWorkspaceEnvList返回参数结构体
    public struct DescribeWorkspaceEnvListResponse: TCResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [ImageUserDTO]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 环境列表接口
    ///
    /// 环境列表接口返回信息
    @inlinable
    public func describeWorkspaceEnvList(_ input: DescribeWorkspaceEnvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceEnvListResponse> {
        self.client.execute(action: "DescribeWorkspaceEnvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 环境列表接口
    ///
    /// 环境列表接口返回信息
    @inlinable
    public func describeWorkspaceEnvList(_ input: DescribeWorkspaceEnvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceEnvListResponse {
        try await self.client.execute(action: "DescribeWorkspaceEnvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 环境列表接口
    ///
    /// 环境列表接口返回信息
    @inlinable
    public func describeWorkspaceEnvList(cloudStudioSessionTeam: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceEnvListResponse> {
        self.describeWorkspaceEnvList(.init(cloudStudioSessionTeam: cloudStudioSessionTeam), region: region, logger: logger, on: eventLoop)
    }

    /// 环境列表接口
    ///
    /// 环境列表接口返回信息
    @inlinable
    public func describeWorkspaceEnvList(cloudStudioSessionTeam: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceEnvListResponse {
        try await self.describeWorkspaceEnvList(.init(cloudStudioSessionTeam: cloudStudioSessionTeam), region: region, logger: logger, on: eventLoop)
    }
}
