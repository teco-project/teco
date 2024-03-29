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

extension Tsf {
    /// CreateMicroservice请求参数结构体
    public struct CreateMicroserviceRequest: TCRequest {
        /// 命名空间ID
        public let namespaceId: String

        /// 微服务名称
        public let microserviceName: String

        /// 微服务描述信息
        public let microserviceDesc: String?

        public init(namespaceId: String, microserviceName: String, microserviceDesc: String? = nil) {
            self.namespaceId = namespaceId
            self.microserviceName = microserviceName
            self.microserviceDesc = microserviceDesc
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case microserviceName = "MicroserviceName"
            case microserviceDesc = "MicroserviceDesc"
        }
    }

    /// CreateMicroservice返回参数结构体
    public struct CreateMicroserviceResponse: TCResponse {
        /// 新增微服务是否成功。
        /// true：操作成功。
        /// false：操作失败。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 新增微服务
    @inlinable
    public func createMicroservice(_ input: CreateMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMicroserviceResponse> {
        self.client.execute(action: "CreateMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增微服务
    @inlinable
    public func createMicroservice(_ input: CreateMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMicroserviceResponse {
        try await self.client.execute(action: "CreateMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增微服务
    @inlinable
    public func createMicroservice(namespaceId: String, microserviceName: String, microserviceDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMicroserviceResponse> {
        self.createMicroservice(.init(namespaceId: namespaceId, microserviceName: microserviceName, microserviceDesc: microserviceDesc), region: region, logger: logger, on: eventLoop)
    }

    /// 新增微服务
    @inlinable
    public func createMicroservice(namespaceId: String, microserviceName: String, microserviceDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMicroserviceResponse {
        try await self.createMicroservice(.init(namespaceId: namespaceId, microserviceName: microserviceName, microserviceDesc: microserviceDesc), region: region, logger: logger, on: eventLoop)
    }
}
