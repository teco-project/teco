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
    /// ModifyCustomizeTemplateVersionControl请求参数结构体
    public struct ModifyCustomizeTemplateVersionControlRequest: TCRequest {
        /// 用户所属组
        public let cloudStudioSessionTeam: String

        /// 模板ID
        public let templateId: Int64

        /// 仓库地址
        public let url: String?

        /// 代码仓库分支/标签
        public let ref: String?

        /// 代码仓库 ref 类型
        public let refType: String?

        public init(cloudStudioSessionTeam: String, templateId: Int64, url: String? = nil, ref: String? = nil, refType: String? = nil) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.templateId = templateId
            self.url = url
            self.ref = ref
            self.refType = refType
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case templateId = "TemplateId"
            case url = "Url"
            case ref = "Ref"
            case refType = "RefType"
        }
    }

    /// ModifyCustomizeTemplateVersionControl返回参数结构体
    public struct ModifyCustomizeTemplateVersionControlResponse: TCResponse {
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

    /// 修改模板默认代码仓库
    @inlinable
    public func modifyCustomizeTemplateVersionControl(_ input: ModifyCustomizeTemplateVersionControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomizeTemplateVersionControlResponse> {
        self.client.execute(action: "ModifyCustomizeTemplateVersionControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模板默认代码仓库
    @inlinable
    public func modifyCustomizeTemplateVersionControl(_ input: ModifyCustomizeTemplateVersionControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomizeTemplateVersionControlResponse {
        try await self.client.execute(action: "ModifyCustomizeTemplateVersionControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模板默认代码仓库
    @inlinable
    public func modifyCustomizeTemplateVersionControl(cloudStudioSessionTeam: String, templateId: Int64, url: String? = nil, ref: String? = nil, refType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomizeTemplateVersionControlResponse> {
        self.modifyCustomizeTemplateVersionControl(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, templateId: templateId, url: url, ref: ref, refType: refType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改模板默认代码仓库
    @inlinable
    public func modifyCustomizeTemplateVersionControl(cloudStudioSessionTeam: String, templateId: Int64, url: String? = nil, ref: String? = nil, refType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomizeTemplateVersionControlResponse {
        try await self.modifyCustomizeTemplateVersionControl(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, templateId: templateId, url: url, ref: ref, refType: refType), region: region, logger: logger, on: eventLoop)
    }
}
