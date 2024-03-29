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

extension Postgres {
    /// DeleteParameterTemplate请求参数结构体
    public struct DeleteParameterTemplateRequest: TCRequest {
        /// 参数模板ID，用于唯一确认待操作的参数模板
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DeleteParameterTemplate返回参数结构体
    public struct DeleteParameterTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除参数模板
    ///
    /// 本接口（DeleteParameterTemplate）主要用于删除某个参数模板。
    @inlinable @discardableResult
    public func deleteParameterTemplate(_ input: DeleteParameterTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteParameterTemplateResponse> {
        self.client.execute(action: "DeleteParameterTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除参数模板
    ///
    /// 本接口（DeleteParameterTemplate）主要用于删除某个参数模板。
    @inlinable @discardableResult
    public func deleteParameterTemplate(_ input: DeleteParameterTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteParameterTemplateResponse {
        try await self.client.execute(action: "DeleteParameterTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除参数模板
    ///
    /// 本接口（DeleteParameterTemplate）主要用于删除某个参数模板。
    @inlinable @discardableResult
    public func deleteParameterTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteParameterTemplateResponse> {
        self.deleteParameterTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除参数模板
    ///
    /// 本接口（DeleteParameterTemplate）主要用于删除某个参数模板。
    @inlinable @discardableResult
    public func deleteParameterTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteParameterTemplateResponse {
        try await self.deleteParameterTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
