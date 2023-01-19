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

extension Cloudstudio {
    /// DescribeCustomizeTemplates请求参数结构体
    public struct DescribeCustomizeTemplatesRequest: TCRequestModel {
        /// 用户所属组
        public let cloudStudioSessionTeam: String

        public init(cloudStudioSessionTeam: String) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
        }
    }

    /// DescribeCustomizeTemplates返回参数结构体
    public struct DescribeCustomizeTemplatesResponse: TCResponseModel {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [WorkspaceTemplateInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取所有模板列表
    @inlinable
    public func describeCustomizeTemplates(_ input: DescribeCustomizeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomizeTemplatesResponse> {
        self.client.execute(action: "DescribeCustomizeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取所有模板列表
    @inlinable
    public func describeCustomizeTemplates(_ input: DescribeCustomizeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomizeTemplatesResponse {
        try await self.client.execute(action: "DescribeCustomizeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取所有模板列表
    @inlinable
    public func describeCustomizeTemplates(cloudStudioSessionTeam: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomizeTemplatesResponse> {
        self.describeCustomizeTemplates(DescribeCustomizeTemplatesRequest(cloudStudioSessionTeam: cloudStudioSessionTeam), region: region, logger: logger, on: eventLoop)
    }

    /// 获取所有模板列表
    @inlinable
    public func describeCustomizeTemplates(cloudStudioSessionTeam: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomizeTemplatesResponse {
        try await self.describeCustomizeTemplates(DescribeCustomizeTemplatesRequest(cloudStudioSessionTeam: cloudStudioSessionTeam), region: region, logger: logger, on: eventLoop)
    }
}
