//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DeleteRecordTemplate请求参数结构体
    public struct DeleteRecordTemplateRequest: TCRequestModel {
        /// 模板ID
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DeleteRecordTemplate返回参数结构体
    public struct DeleteRecordTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除实时上云模板
    ///
    /// 用于删除实时上云模板
    @inlinable @discardableResult
    public func deleteRecordTemplate(_ input: DeleteRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordTemplateResponse> {
        self.client.execute(action: "DeleteRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实时上云模板
    ///
    /// 用于删除实时上云模板
    @inlinable @discardableResult
    public func deleteRecordTemplate(_ input: DeleteRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordTemplateResponse {
        try await self.client.execute(action: "DeleteRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实时上云模板
    ///
    /// 用于删除实时上云模板
    @inlinable @discardableResult
    public func deleteRecordTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordTemplateResponse> {
        self.deleteRecordTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实时上云模板
    ///
    /// 用于删除实时上云模板
    @inlinable @discardableResult
    public func deleteRecordTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordTemplateResponse {
        try await self.deleteRecordTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}