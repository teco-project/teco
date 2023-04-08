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
    /// ModifyCustomizeTemplatesPartById请求参数结构体
    public struct ModifyCustomizeTemplatesPartByIdRequest: TCRequestModel {
        /// 用户所属组
        public let cloudStudioSessionTeam: String

        /// 模板ID
        public let id: Int64

        /// 自定义模板Patched参数
        public let userDefinedTemplatePatchedParams: UserDefinedTemplatePatchedParams

        public init(cloudStudioSessionTeam: String, id: Int64, userDefinedTemplatePatchedParams: UserDefinedTemplatePatchedParams) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.id = id
            self.userDefinedTemplatePatchedParams = userDefinedTemplatePatchedParams
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case id = "Id"
            case userDefinedTemplatePatchedParams = "UserDefinedTemplatePatchedParams"
        }
    }

    /// ModifyCustomizeTemplatesPartById返回参数结构体
    public struct ModifyCustomizeTemplatesPartByIdResponse: TCResponseModel {
        /// 自定义模板返回值
        public let data: WorkspaceTemplateInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 全量修改自定义模板，忽略空
    @inlinable
    public func modifyCustomizeTemplatesPartById(_ input: ModifyCustomizeTemplatesPartByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomizeTemplatesPartByIdResponse> {
        self.client.execute(action: "ModifyCustomizeTemplatesPartById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 全量修改自定义模板，忽略空
    @inlinable
    public func modifyCustomizeTemplatesPartById(_ input: ModifyCustomizeTemplatesPartByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomizeTemplatesPartByIdResponse {
        try await self.client.execute(action: "ModifyCustomizeTemplatesPartById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 全量修改自定义模板，忽略空
    @inlinable
    public func modifyCustomizeTemplatesPartById(cloudStudioSessionTeam: String, id: Int64, userDefinedTemplatePatchedParams: UserDefinedTemplatePatchedParams, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomizeTemplatesPartByIdResponse> {
        self.modifyCustomizeTemplatesPartById(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, id: id, userDefinedTemplatePatchedParams: userDefinedTemplatePatchedParams), region: region, logger: logger, on: eventLoop)
    }

    /// 全量修改自定义模板，忽略空
    @inlinable
    public func modifyCustomizeTemplatesPartById(cloudStudioSessionTeam: String, id: Int64, userDefinedTemplatePatchedParams: UserDefinedTemplatePatchedParams, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomizeTemplatesPartByIdResponse {
        try await self.modifyCustomizeTemplatesPartById(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, id: id, userDefinedTemplatePatchedParams: userDefinedTemplatePatchedParams), region: region, logger: logger, on: eventLoop)
    }
}
