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

extension Apigateway {
    /// ModifyAPIDoc请求参数结构体
    public struct ModifyAPIDocRequest: TCRequest {
        /// API文档ID
        public let apiDocId: String

        /// API文档名称
        public let apiDocName: String?

        /// 服务名称
        public let serviceId: String?

        /// 环境名称
        public let environment: String?

        /// 生成文档的API列表
        public let apiIds: [String]?

        public init(apiDocId: String, apiDocName: String? = nil, serviceId: String? = nil, environment: String? = nil, apiIds: [String]? = nil) {
            self.apiDocId = apiDocId
            self.apiDocName = apiDocName
            self.serviceId = serviceId
            self.environment = environment
            self.apiIds = apiIds
        }

        enum CodingKeys: String, CodingKey {
            case apiDocId = "ApiDocId"
            case apiDocName = "ApiDocName"
            case serviceId = "ServiceId"
            case environment = "Environment"
            case apiIds = "ApiIds"
        }
    }

    /// ModifyAPIDoc返回参数结构体
    public struct ModifyAPIDocResponse: TCResponse {
        /// API文档基本信息
        public let result: APIDoc

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改 API 文档
    @inlinable
    public func modifyAPIDoc(_ input: ModifyAPIDocRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAPIDocResponse> {
        self.client.execute(action: "ModifyAPIDoc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改 API 文档
    @inlinable
    public func modifyAPIDoc(_ input: ModifyAPIDocRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAPIDocResponse {
        try await self.client.execute(action: "ModifyAPIDoc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改 API 文档
    @inlinable
    public func modifyAPIDoc(apiDocId: String, apiDocName: String? = nil, serviceId: String? = nil, environment: String? = nil, apiIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAPIDocResponse> {
        self.modifyAPIDoc(.init(apiDocId: apiDocId, apiDocName: apiDocName, serviceId: serviceId, environment: environment, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改 API 文档
    @inlinable
    public func modifyAPIDoc(apiDocId: String, apiDocName: String? = nil, serviceId: String? = nil, environment: String? = nil, apiIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAPIDocResponse {
        try await self.modifyAPIDoc(.init(apiDocId: apiDocId, apiDocName: apiDocName, serviceId: serviceId, environment: environment, apiIds: apiIds), region: region, logger: logger, on: eventLoop)
    }
}
