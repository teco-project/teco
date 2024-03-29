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

extension Zj {
    /// DelTemplate请求参数结构体
    public struct DelTemplateRequest: TCRequest {
        /// 商户证书
        public let license: String

        /// 短信模板ID
        public let templateID: Int64

        public init(license: String, templateID: Int64) {
            self.license = license
            self.templateID = templateID
        }

        enum CodingKeys: String, CodingKey {
            case license = "License"
            case templateID = "TemplateID"
        }
    }

    /// DelTemplate返回参数结构体
    public struct DelTemplateResponse: TCResponse {
        /// 接口返回
        public let data: SmsSuccessResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除短信模板
    @inlinable
    public func delTemplate(_ input: DelTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DelTemplateResponse> {
        self.client.execute(action: "DelTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除短信模板
    @inlinable
    public func delTemplate(_ input: DelTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DelTemplateResponse {
        try await self.client.execute(action: "DelTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除短信模板
    @inlinable
    public func delTemplate(license: String, templateID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DelTemplateResponse> {
        self.delTemplate(.init(license: license, templateID: templateID), region: region, logger: logger, on: eventLoop)
    }

    /// 删除短信模板
    @inlinable
    public func delTemplate(license: String, templateID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DelTemplateResponse {
        try await self.delTemplate(.init(license: license, templateID: templateID), region: region, logger: logger, on: eventLoop)
    }
}
