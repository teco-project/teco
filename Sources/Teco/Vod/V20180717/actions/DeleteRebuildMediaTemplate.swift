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

extension Vod {
    /// DeleteRebuildMediaTemplate请求参数结构体
    public struct DeleteRebuildMediaTemplateRequest: TCRequestModel {
        /// 视频重生模板号。
        public let definition: Int64

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: Int64?

        public init(definition: Int64, subAppId: Int64? = nil) {
            self.definition = definition
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
        }
    }

    /// DeleteRebuildMediaTemplate返回参数结构体
    public struct DeleteRebuildMediaTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除视频重生模板
    ///
    /// 删除视频重生模板。
    @inlinable @discardableResult
    public func deleteRebuildMediaTemplate(_ input: DeleteRebuildMediaTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRebuildMediaTemplateResponse> {
        self.client.execute(action: "DeleteRebuildMediaTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除视频重生模板
    ///
    /// 删除视频重生模板。
    @inlinable @discardableResult
    public func deleteRebuildMediaTemplate(_ input: DeleteRebuildMediaTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRebuildMediaTemplateResponse {
        try await self.client.execute(action: "DeleteRebuildMediaTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除视频重生模板
    ///
    /// 删除视频重生模板。
    @inlinable @discardableResult
    public func deleteRebuildMediaTemplate(definition: Int64, subAppId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRebuildMediaTemplateResponse> {
        self.deleteRebuildMediaTemplate(.init(definition: definition, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除视频重生模板
    ///
    /// 删除视频重生模板。
    @inlinable @discardableResult
    public func deleteRebuildMediaTemplate(definition: Int64, subAppId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRebuildMediaTemplateResponse {
        try await self.deleteRebuildMediaTemplate(.init(definition: definition, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
