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

extension Apigateway {
    /// BuildAPIDoc请求参数结构体
    public struct BuildAPIDocRequest: TCRequestModel {
        /// API文档ID
        public let apiDocId: String

        public init(apiDocId: String) {
            self.apiDocId = apiDocId
        }

        enum CodingKeys: String, CodingKey {
            case apiDocId = "ApiDocId"
        }
    }

    /// BuildAPIDoc返回参数结构体
    public struct BuildAPIDocResponse: TCResponseModel {
        /// 操作是否成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 构建 API 文档
    @inlinable
    public func buildAPIDoc(_ input: BuildAPIDocRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BuildAPIDocResponse> {
        self.client.execute(action: "BuildAPIDoc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 构建 API 文档
    @inlinable
    public func buildAPIDoc(_ input: BuildAPIDocRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BuildAPIDocResponse {
        try await self.client.execute(action: "BuildAPIDoc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 构建 API 文档
    @inlinable
    public func buildAPIDoc(apiDocId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BuildAPIDocResponse> {
        self.buildAPIDoc(.init(apiDocId: apiDocId), region: region, logger: logger, on: eventLoop)
    }

    /// 构建 API 文档
    @inlinable
    public func buildAPIDoc(apiDocId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BuildAPIDocResponse {
        try await self.buildAPIDoc(.init(apiDocId: apiDocId), region: region, logger: logger, on: eventLoop)
    }
}
