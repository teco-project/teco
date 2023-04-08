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
    /// DescribeLiveRecordTemplate请求参数结构体
    public struct DescribeLiveRecordTemplateRequest: TCRequestModel {
        /// [DescribeLiveRecordTemplates](/document/product/267/32609)接口获取到的模板 ID。
        public let templateId: Int64

        public init(templateId: Int64) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribeLiveRecordTemplate返回参数结构体
    public struct DescribeLiveRecordTemplateResponse: TCResponseModel {
        /// 录制模板信息。
        public let template: RecordTemplateInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case template = "Template"
            case requestId = "RequestId"
        }
    }

    /// 获取单个录制模板
    ///
    /// 获取单个录制模板。
    @inlinable
    public func describeLiveRecordTemplate(_ input: DescribeLiveRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveRecordTemplateResponse> {
        self.client.execute(action: "DescribeLiveRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单个录制模板
    ///
    /// 获取单个录制模板。
    @inlinable
    public func describeLiveRecordTemplate(_ input: DescribeLiveRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveRecordTemplateResponse {
        try await self.client.execute(action: "DescribeLiveRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单个录制模板
    ///
    /// 获取单个录制模板。
    @inlinable
    public func describeLiveRecordTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveRecordTemplateResponse> {
        self.describeLiveRecordTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单个录制模板
    ///
    /// 获取单个录制模板。
    @inlinable
    public func describeLiveRecordTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveRecordTemplateResponse {
        try await self.describeLiveRecordTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
