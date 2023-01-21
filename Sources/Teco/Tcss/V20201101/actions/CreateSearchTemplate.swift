//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcss {
    /// CreateSearchTemplate请求参数结构体
    public struct CreateSearchTemplateRequest: TCRequestModel {
        /// 搜索模板
        public let searchTemplate: SearchTemplate

        public init(searchTemplate: SearchTemplate) {
            self.searchTemplate = searchTemplate
        }

        enum CodingKeys: String, CodingKey {
            case searchTemplate = "SearchTemplate"
        }
    }

    /// CreateSearchTemplate返回参数结构体
    public struct CreateSearchTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加检索模板
    @inlinable @discardableResult
    public func createSearchTemplate(_ input: CreateSearchTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSearchTemplateResponse> {
        self.client.execute(action: "CreateSearchTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加检索模板
    @inlinable @discardableResult
    public func createSearchTemplate(_ input: CreateSearchTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSearchTemplateResponse {
        try await self.client.execute(action: "CreateSearchTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加检索模板
    @inlinable @discardableResult
    public func createSearchTemplate(searchTemplate: SearchTemplate, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSearchTemplateResponse> {
        self.createSearchTemplate(CreateSearchTemplateRequest(searchTemplate: searchTemplate), region: region, logger: logger, on: eventLoop)
    }

    /// 添加检索模板
    @inlinable @discardableResult
    public func createSearchTemplate(searchTemplate: SearchTemplate, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSearchTemplateResponse {
        try await self.createSearchTemplate(CreateSearchTemplateRequest(searchTemplate: searchTemplate), region: region, logger: logger, on: eventLoop)
    }
}
