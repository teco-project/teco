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

extension Cdb {
    /// DeleteParamTemplate请求参数结构体
    public struct DeleteParamTemplateRequest: TCRequest {
        /// 参数模板ID。
        public let templateId: Int64

        public init(templateId: Int64) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DeleteParamTemplate返回参数结构体
    public struct DeleteParamTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除参数模板
    ///
    /// 该接口（DeleteParamTemplate）用于删除参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable @discardableResult
    public func deleteParamTemplate(_ input: DeleteParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteParamTemplateResponse> {
        self.client.execute(action: "DeleteParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除参数模板
    ///
    /// 该接口（DeleteParamTemplate）用于删除参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable @discardableResult
    public func deleteParamTemplate(_ input: DeleteParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteParamTemplateResponse {
        try await self.client.execute(action: "DeleteParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除参数模板
    ///
    /// 该接口（DeleteParamTemplate）用于删除参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable @discardableResult
    public func deleteParamTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteParamTemplateResponse> {
        self.deleteParamTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除参数模板
    ///
    /// 该接口（DeleteParamTemplate）用于删除参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable @discardableResult
    public func deleteParamTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteParamTemplateResponse {
        try await self.deleteParamTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
