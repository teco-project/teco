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
    /// CreateCustomizeTemplates请求参数结构体
    public struct CreateCustomizeTemplatesRequest: TCRequestModel {
        /// 用户所属组
        public let cloudStudioSessionTeam: String

        /// 无
        public let userDefinedTemplateParams: UserDefinedTemplateParams

        public init(cloudStudioSessionTeam: String, userDefinedTemplateParams: UserDefinedTemplateParams) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.userDefinedTemplateParams = userDefinedTemplateParams
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case userDefinedTemplateParams = "UserDefinedTemplateParams"
        }
    }

    /// CreateCustomizeTemplates返回参数结构体
    public struct CreateCustomizeTemplatesResponse: TCResponseModel {
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

    /// 添加自定义模板
    @inlinable
    public func createCustomizeTemplates(_ input: CreateCustomizeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomizeTemplatesResponse> {
        self.client.execute(action: "CreateCustomizeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加自定义模板
    @inlinable
    public func createCustomizeTemplates(_ input: CreateCustomizeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomizeTemplatesResponse {
        try await self.client.execute(action: "CreateCustomizeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加自定义模板
    @inlinable
    public func createCustomizeTemplates(cloudStudioSessionTeam: String, userDefinedTemplateParams: UserDefinedTemplateParams, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomizeTemplatesResponse> {
        self.createCustomizeTemplates(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, userDefinedTemplateParams: userDefinedTemplateParams), region: region, logger: logger, on: eventLoop)
    }

    /// 添加自定义模板
    @inlinable
    public func createCustomizeTemplates(cloudStudioSessionTeam: String, userDefinedTemplateParams: UserDefinedTemplateParams, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomizeTemplatesResponse {
        try await self.createCustomizeTemplates(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, userDefinedTemplateParams: userDefinedTemplateParams), region: region, logger: logger, on: eventLoop)
    }
}
