//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cloudstudio {
    /// 获取用户工作空间列表
    ///
    /// 获取用户工作空间列表
    @inlinable
    public func describeWorkspaceStatusList(_ input: DescribeWorkspaceStatusListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWorkspaceStatusListResponse > {
        self.client.execute(action: "DescribeWorkspaceStatusList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取用户工作空间列表
    ///
    /// 获取用户工作空间列表
    @inlinable
    public func describeWorkspaceStatusList(_ input: DescribeWorkspaceStatusListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceStatusListResponse {
        try await self.client.execute(action: "DescribeWorkspaceStatusList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWorkspaceStatusList请求参数结构体
    public struct DescribeWorkspaceStatusListRequest: TCRequestModel {
        /// xxx
        public let cloudStudioSessionTeam: String
        
        public init (cloudStudioSessionTeam: String) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
        }
        
        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
        }
    }
    
    /// DescribeWorkspaceStatusList返回参数结构体
    public struct DescribeWorkspaceStatusListResponse: TCResponseModel {
        /// xxx
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [WorkspaceStatusInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}