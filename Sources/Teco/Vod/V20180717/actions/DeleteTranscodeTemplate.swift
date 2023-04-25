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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vod {
    /// DeleteTranscodeTemplate请求参数结构体
    public struct DeleteTranscodeTemplateRequest: TCRequestModel {
        /// 转码模板唯一标识。
        public let definition: Int64

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(definition: Int64, subAppId: UInt64? = nil) {
            self.definition = definition
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
        }
    }

    /// DeleteTranscodeTemplate返回参数结构体
    public struct DeleteTranscodeTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除转码模板
    ///
    /// 删除用户自定义转码模板。
    @inlinable @discardableResult
    public func deleteTranscodeTemplate(_ input: DeleteTranscodeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTranscodeTemplateResponse> {
        self.client.execute(action: "DeleteTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除转码模板
    ///
    /// 删除用户自定义转码模板。
    @inlinable @discardableResult
    public func deleteTranscodeTemplate(_ input: DeleteTranscodeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTranscodeTemplateResponse {
        try await self.client.execute(action: "DeleteTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除转码模板
    ///
    /// 删除用户自定义转码模板。
    @inlinable @discardableResult
    public func deleteTranscodeTemplate(definition: Int64, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTranscodeTemplateResponse> {
        self.deleteTranscodeTemplate(.init(definition: definition, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除转码模板
    ///
    /// 删除用户自定义转码模板。
    @inlinable @discardableResult
    public func deleteTranscodeTemplate(definition: Int64, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTranscodeTemplateResponse {
        try await self.deleteTranscodeTemplate(.init(definition: definition, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
