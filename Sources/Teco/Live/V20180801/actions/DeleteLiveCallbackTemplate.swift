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

extension Live {
    /// DeleteLiveCallbackTemplate请求参数结构体
    public struct DeleteLiveCallbackTemplateRequest: TCRequest {
        /// 模板 ID。
        /// 1. 在创建回调模板接口 [CreateLiveCallbackTemplate](/document/product/267/32637) 调用的返回值中获取模板 ID。
        /// 2. 可以从接口 [DescribeLiveCallbackTemplates](/document/product/267/32632) 查询已经创建的过的模板列表。
        public let templateId: Int64

        public init(templateId: Int64) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DeleteLiveCallbackTemplate返回参数结构体
    public struct DeleteLiveCallbackTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除回调模板
    ///
    /// 删除回调模板。
    @inlinable @discardableResult
    public func deleteLiveCallbackTemplate(_ input: DeleteLiveCallbackTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLiveCallbackTemplateResponse> {
        self.client.execute(action: "DeleteLiveCallbackTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除回调模板
    ///
    /// 删除回调模板。
    @inlinable @discardableResult
    public func deleteLiveCallbackTemplate(_ input: DeleteLiveCallbackTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveCallbackTemplateResponse {
        try await self.client.execute(action: "DeleteLiveCallbackTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除回调模板
    ///
    /// 删除回调模板。
    @inlinable @discardableResult
    public func deleteLiveCallbackTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLiveCallbackTemplateResponse> {
        self.deleteLiveCallbackTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除回调模板
    ///
    /// 删除回调模板。
    @inlinable @discardableResult
    public func deleteLiveCallbackTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveCallbackTemplateResponse {
        try await self.deleteLiveCallbackTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
