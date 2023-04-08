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

extension Domain {
    /// DescribeTemplate请求参数结构体
    public struct DescribeTemplateRequest: TCRequestModel {
        /// 模板ID
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribeTemplate返回参数结构体
    public struct DescribeTemplateResponse: TCResponseModel {
        /// 模板信息
        public let template: TemplateInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case template = "Template"
            case requestId = "RequestId"
        }
    }

    /// 获取模板信息
    ///
    /// 本接口 (DescribeTemplate) 用于获取模板信息。
    @inlinable
    public func describeTemplate(_ input: DescribeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateResponse> {
        self.client.execute(action: "DescribeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取模板信息
    ///
    /// 本接口 (DescribeTemplate) 用于获取模板信息。
    @inlinable
    public func describeTemplate(_ input: DescribeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplateResponse {
        try await self.client.execute(action: "DescribeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取模板信息
    ///
    /// 本接口 (DescribeTemplate) 用于获取模板信息。
    @inlinable
    public func describeTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateResponse> {
        self.describeTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取模板信息
    ///
    /// 本接口 (DescribeTemplate) 用于获取模板信息。
    @inlinable
    public func describeTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTemplateResponse {
        try await self.describeTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
