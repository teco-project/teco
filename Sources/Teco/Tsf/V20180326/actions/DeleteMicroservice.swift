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
    /// DeleteMicroservice请求参数结构体
    public struct DeleteMicroserviceRequest: TCRequest {
        /// 微服务ID
        public let microserviceId: String

        public init(microserviceId: String) {
            self.microserviceId = microserviceId
        }

        enum CodingKeys: String, CodingKey {
            case microserviceId = "MicroserviceId"
        }
    }

    /// DeleteMicroservice返回参数结构体
    public struct DeleteMicroserviceResponse: TCResponse {
        /// 删除微服务是否成功。
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

    /// 删除微服务
    @inlinable
    public func deleteMicroservice(_ input: DeleteMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMicroserviceResponse> {
        self.client.execute(action: "DeleteMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除微服务
    @inlinable
    public func deleteMicroservice(_ input: DeleteMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMicroserviceResponse {
        try await self.client.execute(action: "DeleteMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除微服务
    @inlinable
    public func deleteMicroservice(microserviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMicroserviceResponse> {
        self.deleteMicroservice(.init(microserviceId: microserviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除微服务
    @inlinable
    public func deleteMicroservice(microserviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMicroserviceResponse {
        try await self.deleteMicroservice(.init(microserviceId: microserviceId), region: region, logger: logger, on: eventLoop)
    }
}
