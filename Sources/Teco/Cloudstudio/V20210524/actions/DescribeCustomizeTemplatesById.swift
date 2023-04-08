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

import TecoCore

extension Cloudstudio {
    /// DescribeCustomizeTemplatesById请求参数结构体
    public struct DescribeCustomizeTemplatesByIdRequest: TCRequestModel {
        /// 用户所属组
        public let cloudStudioSessionTeam: String

        /// 模板ID
        public let id: Int64

        public init(cloudStudioSessionTeam: String, id: Int64) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case id = "Id"
        }
    }

    /// DescribeCustomizeTemplatesById返回参数结构体
    public struct DescribeCustomizeTemplatesByIdResponse: TCResponseModel {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: WorkspaceTemplateInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取特定模板信息
    @inlinable
    public func describeCustomizeTemplatesById(_ input: DescribeCustomizeTemplatesByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomizeTemplatesByIdResponse> {
        self.client.execute(action: "DescribeCustomizeTemplatesById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取特定模板信息
    @inlinable
    public func describeCustomizeTemplatesById(_ input: DescribeCustomizeTemplatesByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomizeTemplatesByIdResponse {
        try await self.client.execute(action: "DescribeCustomizeTemplatesById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取特定模板信息
    @inlinable
    public func describeCustomizeTemplatesById(cloudStudioSessionTeam: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomizeTemplatesByIdResponse> {
        self.describeCustomizeTemplatesById(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取特定模板信息
    @inlinable
    public func describeCustomizeTemplatesById(cloudStudioSessionTeam: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomizeTemplatesByIdResponse {
        try await self.describeCustomizeTemplatesById(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, id: id), region: region, logger: logger, on: eventLoop)
    }
}
