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

import TecoCore

extension Teo {
    /// CreateCustomErrorPage请求参数结构体
    public struct CreateCustomErrorPageRequest: TCRequestModel {
        /// zone的id
        public let zoneId: String

        /// 具体所属实体
        public let entity: String

        /// 自定义页面的文件名
        public let name: String

        /// 自定义页面的内容
        public let content: String

        public init(zoneId: String, entity: String, name: String, content: String) {
            self.zoneId = zoneId
            self.entity = entity
            self.name = name
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case entity = "Entity"
            case name = "Name"
            case content = "Content"
        }
    }

    /// CreateCustomErrorPage返回参数结构体
    public struct CreateCustomErrorPageResponse: TCResponseModel {
        /// 自定义页面上传后的唯一id
        public let pageId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pageId = "PageId"
            case requestId = "RequestId"
        }
    }

    /// 创建自定义页
    ///
    /// 创建自定义规则的自定义页
    @inlinable
    public func createCustomErrorPage(_ input: CreateCustomErrorPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomErrorPageResponse> {
        self.client.execute(action: "CreateCustomErrorPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建自定义页
    ///
    /// 创建自定义规则的自定义页
    @inlinable
    public func createCustomErrorPage(_ input: CreateCustomErrorPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomErrorPageResponse {
        try await self.client.execute(action: "CreateCustomErrorPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建自定义页
    ///
    /// 创建自定义规则的自定义页
    @inlinable
    public func createCustomErrorPage(zoneId: String, entity: String, name: String, content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomErrorPageResponse> {
        self.createCustomErrorPage(.init(zoneId: zoneId, entity: entity, name: name, content: content), region: region, logger: logger, on: eventLoop)
    }

    /// 创建自定义页
    ///
    /// 创建自定义规则的自定义页
    @inlinable
    public func createCustomErrorPage(zoneId: String, entity: String, name: String, content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomErrorPageResponse {
        try await self.createCustomErrorPage(.init(zoneId: zoneId, entity: entity, name: name, content: content), region: region, logger: logger, on: eventLoop)
    }
}
