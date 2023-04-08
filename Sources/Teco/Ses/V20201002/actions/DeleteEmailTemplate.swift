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

extension Ses {
    /// DeleteEmailTemplate请求参数结构体
    public struct DeleteEmailTemplateRequest: TCRequestModel {
        /// 模板ID
        public let templateID: UInt64

        public init(templateID: UInt64) {
            self.templateID = templateID
        }

        enum CodingKeys: String, CodingKey {
            case templateID = "TemplateID"
        }
    }

    /// DeleteEmailTemplate返回参数结构体
    public struct DeleteEmailTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除发信模板
    @inlinable @discardableResult
    public func deleteEmailTemplate(_ input: DeleteEmailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEmailTemplateResponse> {
        self.client.execute(action: "DeleteEmailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除发信模板
    @inlinable @discardableResult
    public func deleteEmailTemplate(_ input: DeleteEmailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEmailTemplateResponse {
        try await self.client.execute(action: "DeleteEmailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除发信模板
    @inlinable @discardableResult
    public func deleteEmailTemplate(templateID: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEmailTemplateResponse> {
        self.deleteEmailTemplate(.init(templateID: templateID), region: region, logger: logger, on: eventLoop)
    }

    /// 删除发信模板
    @inlinable @discardableResult
    public func deleteEmailTemplate(templateID: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEmailTemplateResponse {
        try await self.deleteEmailTemplate(.init(templateID: templateID), region: region, logger: logger, on: eventLoop)
    }
}
