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
    /// CreateAllGatewayApiAsync请求参数结构体
    public struct CreateAllGatewayApiAsyncRequest: TCRequestModel {
        /// API分组ID
        public let groupId: String

        /// 微服务ID
        public let microserviceId: String

        public init(groupId: String, microserviceId: String) {
            self.groupId = groupId
            self.microserviceId = microserviceId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case microserviceId = "MicroserviceId"
        }
    }

    /// CreateAllGatewayApiAsync返回参数结构体
    public struct CreateAllGatewayApiAsyncResponse: TCResponseModel {
        /// 是否成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 一键导入API分组
    @inlinable
    public func createAllGatewayApiAsync(_ input: CreateAllGatewayApiAsyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAllGatewayApiAsyncResponse> {
        self.client.execute(action: "CreateAllGatewayApiAsync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 一键导入API分组
    @inlinable
    public func createAllGatewayApiAsync(_ input: CreateAllGatewayApiAsyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAllGatewayApiAsyncResponse {
        try await self.client.execute(action: "CreateAllGatewayApiAsync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 一键导入API分组
    @inlinable
    public func createAllGatewayApiAsync(groupId: String, microserviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAllGatewayApiAsyncResponse> {
        self.createAllGatewayApiAsync(CreateAllGatewayApiAsyncRequest(groupId: groupId, microserviceId: microserviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 一键导入API分组
    @inlinable
    public func createAllGatewayApiAsync(groupId: String, microserviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAllGatewayApiAsyncResponse {
        try await self.createAllGatewayApiAsync(CreateAllGatewayApiAsyncRequest(groupId: groupId, microserviceId: microserviceId), region: region, logger: logger, on: eventLoop)
    }
}
