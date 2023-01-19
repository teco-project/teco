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

extension Domain {
    /// DeleteTemplate请求参数结构体
    public struct DeleteTemplateRequest: TCRequestModel {
        /// 模板ID
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DeleteTemplate返回参数结构体
    public struct DeleteTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除信息模板
    ///
    /// 本接口 ( DeleteTemplate ) 用于删除信息模板。
    @inlinable
    public func deleteTemplate(_ input: DeleteTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTemplateResponse> {
        self.client.execute(action: "DeleteTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除信息模板
    ///
    /// 本接口 ( DeleteTemplate ) 用于删除信息模板。
    @inlinable
    public func deleteTemplate(_ input: DeleteTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTemplateResponse {
        try await self.client.execute(action: "DeleteTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除信息模板
    ///
    /// 本接口 ( DeleteTemplate ) 用于删除信息模板。
    @inlinable
    public func deleteTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTemplateResponse> {
        self.deleteTemplate(DeleteTemplateRequest(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除信息模板
    ///
    /// 本接口 ( DeleteTemplate ) 用于删除信息模板。
    @inlinable
    public func deleteTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTemplateResponse {
        try await self.deleteTemplate(DeleteTemplateRequest(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
