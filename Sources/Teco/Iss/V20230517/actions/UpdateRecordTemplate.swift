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
    /// UpdateRecordTemplate请求参数结构体
    public struct UpdateRecordTemplateRequest: TCRequestModel {
        /// 模板ID
        public let templateId: String

        /// 修改内容
        public let mod: UpdateRecordTemplateData

        public init(templateId: String, mod: UpdateRecordTemplateData) {
            self.templateId = templateId
            self.mod = mod
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case mod = "Mod"
        }
    }

    /// UpdateRecordTemplate返回参数结构体
    public struct UpdateRecordTemplateResponse: TCResponseModel {
        /// 返回结果
        public let data: RecordTemplateInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 修改实时上云模板
    ///
    /// 用于修改实时上云模板
    @inlinable
    public func updateRecordTemplate(_ input: UpdateRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRecordTemplateResponse> {
        self.client.execute(action: "UpdateRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实时上云模板
    ///
    /// 用于修改实时上云模板
    @inlinable
    public func updateRecordTemplate(_ input: UpdateRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRecordTemplateResponse {
        try await self.client.execute(action: "UpdateRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实时上云模板
    ///
    /// 用于修改实时上云模板
    @inlinable
    public func updateRecordTemplate(templateId: String, mod: UpdateRecordTemplateData, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRecordTemplateResponse> {
        self.updateRecordTemplate(.init(templateId: templateId, mod: mod), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实时上云模板
    ///
    /// 用于修改实时上云模板
    @inlinable
    public func updateRecordTemplate(templateId: String, mod: UpdateRecordTemplateData, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRecordTemplateResponse {
        try await self.updateRecordTemplate(.init(templateId: templateId, mod: mod), region: region, logger: logger, on: eventLoop)
    }
}