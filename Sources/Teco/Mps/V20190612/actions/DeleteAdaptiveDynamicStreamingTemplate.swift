//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Mps {
    /// DeleteAdaptiveDynamicStreamingTemplate请求参数结构体
    public struct DeleteAdaptiveDynamicStreamingTemplateRequest: TCRequestModel {
        /// 自适应转码模板唯一标识。
        public let definition: UInt64

        public init(definition: UInt64) {
            self.definition = definition
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
        }
    }

    /// DeleteAdaptiveDynamicStreamingTemplate返回参数结构体
    public struct DeleteAdaptiveDynamicStreamingTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除转自适应码流模板
    @inlinable
    public func deleteAdaptiveDynamicStreamingTemplate(_ input: DeleteAdaptiveDynamicStreamingTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAdaptiveDynamicStreamingTemplateResponse > {
        self.client.execute(action: "DeleteAdaptiveDynamicStreamingTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除转自适应码流模板
    @inlinable
    public func deleteAdaptiveDynamicStreamingTemplate(_ input: DeleteAdaptiveDynamicStreamingTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAdaptiveDynamicStreamingTemplateResponse {
        try await self.client.execute(action: "DeleteAdaptiveDynamicStreamingTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除转自适应码流模板
    @inlinable
    public func deleteAdaptiveDynamicStreamingTemplate(definition: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAdaptiveDynamicStreamingTemplateResponse > {
        self.deleteAdaptiveDynamicStreamingTemplate(DeleteAdaptiveDynamicStreamingTemplateRequest(definition: definition), logger: logger, on: eventLoop)
    }

    /// 删除转自适应码流模板
    @inlinable
    public func deleteAdaptiveDynamicStreamingTemplate(definition: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAdaptiveDynamicStreamingTemplateResponse {
        try await self.deleteAdaptiveDynamicStreamingTemplate(DeleteAdaptiveDynamicStreamingTemplateRequest(definition: definition), logger: logger, on: eventLoop)
    }
}
