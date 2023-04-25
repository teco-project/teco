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
    /// CreateAPIDoc请求参数结构体
    public struct CreateAPIDocRequest: TCRequestModel {
        /// API文档名称
        public let apiDocName: String

        /// 服务名称
        public let serviceId: String

        /// 环境名称
        public let environment: String

        /// 生成文档的API列表
        public let apiIds: [String]

        public init(apiDocName: String, serviceId: String, environment: String, apiIds: [String]) {
            self.apiDocName = apiDocName
            self.serviceId = serviceId
            self.environment = environment
            self.apiIds = apiIds
        }

        enum CodingKeys: String, CodingKey {
            case apiDocName = "ApiDocName"
            case serviceId = "ServiceId"
            case environment = "Environment"
            case apiIds = "ApiIds"
        }
    }

    /// CreateAPIDoc返回参数结构体
    public struct CreateAPIDocResponse: TCResponseModel {
        /// API文档基本信息
        public let result: APIDoc

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建 API 文档
    @inlinable
    public func createAPIDoc(_ input: CreateAPIDocRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAPIDocResponse> {
        self.client.execute(action: "CreateAPIDoc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 API 文档
    @inlinable
    public func createAPIDoc(_ input: CreateAPIDocRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAPIDocResponse {
        try await self.client.execute(action: "CreateAPIDoc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建 API 文档
    @inlinable
    public func createAPIDoc(apiDocName: String, serviceId: String, environment: String, apiIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAPIDocResponse> {
        self.createAPIDoc(.init(apiDocName: apiDocName, serviceId: serviceId, environment: environment, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建 API 文档
    @inlinable
    public func createAPIDoc(apiDocName: String, serviceId: String, environment: String, apiIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAPIDocResponse {
        try await self.createAPIDoc(.init(apiDocName: apiDocName, serviceId: serviceId, environment: environment, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }
}
