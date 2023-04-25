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

extension Apigateway {
    /// ImportOpenApi请求参数结构体
    public struct ImportOpenApiRequest: TCRequestModel {
        /// API所在的服务唯一ID。
        public let serviceId: String

        /// openAPI正文内容。
        public let content: String

        /// Content格式，只能是YAML或者JSON，默认是YAML。
        public let encodeType: String?

        /// Content版本，默认是openAPI，目前只支持openAPI。
        public let contentVersion: String?

        public init(serviceId: String, content: String, encodeType: String? = nil, contentVersion: String? = nil) {
            self.serviceId = serviceId
            self.content = content
            self.encodeType = encodeType
            self.contentVersion = contentVersion
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case content = "Content"
            case encodeType = "EncodeType"
            case contentVersion = "ContentVersion"
        }
    }

    /// ImportOpenApi返回参数结构体
    public struct ImportOpenApiResponse: TCResponseModel {
        /// 导入OpenApi返回参数。
        public let result: CreateApiRspSet

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 导入OpenAPI
    ///
    /// 本接口（ImportOpenApi）用于将OpenAPI规范定义的API导入到API网关。
    @inlinable
    public func importOpenApi(_ input: ImportOpenApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportOpenApiResponse> {
        self.client.execute(action: "ImportOpenApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入OpenAPI
    ///
    /// 本接口（ImportOpenApi）用于将OpenAPI规范定义的API导入到API网关。
    @inlinable
    public func importOpenApi(_ input: ImportOpenApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportOpenApiResponse {
        try await self.client.execute(action: "ImportOpenApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入OpenAPI
    ///
    /// 本接口（ImportOpenApi）用于将OpenAPI规范定义的API导入到API网关。
    @inlinable
    public func importOpenApi(serviceId: String, content: String, encodeType: String? = nil, contentVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportOpenApiResponse> {
        self.importOpenApi(.init(serviceId: serviceId, content: content, encodeType: encodeType, contentVersion: contentVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 导入OpenAPI
    ///
    /// 本接口（ImportOpenApi）用于将OpenAPI规范定义的API导入到API网关。
    @inlinable
    public func importOpenApi(serviceId: String, content: String, encodeType: String? = nil, contentVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportOpenApiResponse {
        try await self.importOpenApi(.init(serviceId: serviceId, content: content, encodeType: encodeType, contentVersion: contentVersion), region: region, logger: logger, on: eventLoop)
    }
}
