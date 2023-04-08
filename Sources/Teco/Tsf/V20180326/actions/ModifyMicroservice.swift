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

extension Tsf {
    /// ModifyMicroservice请求参数结构体
    public struct ModifyMicroserviceRequest: TCRequestModel {
        /// 微服务 ID
        public let microserviceId: String

        /// 微服务备注信息
        public let microserviceDesc: String

        public init(microserviceId: String, microserviceDesc: String) {
            self.microserviceId = microserviceId
            self.microserviceDesc = microserviceDesc
        }

        enum CodingKeys: String, CodingKey {
            case microserviceId = "MicroserviceId"
            case microserviceDesc = "MicroserviceDesc"
        }
    }

    /// ModifyMicroservice返回参数结构体
    public struct ModifyMicroserviceResponse: TCResponseModel {
        /// 修改微服务详情是否成功。
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

    /// 修改微服务详情
    @inlinable
    public func modifyMicroservice(_ input: ModifyMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMicroserviceResponse> {
        self.client.execute(action: "ModifyMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改微服务详情
    @inlinable
    public func modifyMicroservice(_ input: ModifyMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMicroserviceResponse {
        try await self.client.execute(action: "ModifyMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改微服务详情
    @inlinable
    public func modifyMicroservice(microserviceId: String, microserviceDesc: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMicroserviceResponse> {
        self.modifyMicroservice(.init(microserviceId: microserviceId, microserviceDesc: microserviceDesc), region: region, logger: logger, on: eventLoop)
    }

    /// 修改微服务详情
    @inlinable
    public func modifyMicroservice(microserviceId: String, microserviceDesc: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMicroserviceResponse {
        try await self.modifyMicroservice(.init(microserviceId: microserviceId, microserviceDesc: microserviceDesc), region: region, logger: logger, on: eventLoop)
    }
}
