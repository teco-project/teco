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
    /// DeleteAPIDoc请求参数结构体
    public struct DeleteAPIDocRequest: TCRequest {
        /// API文档ID
        public let apiDocId: String

        public init(apiDocId: String) {
            self.apiDocId = apiDocId
        }

        enum CodingKeys: String, CodingKey {
            case apiDocId = "ApiDocId"
        }
    }

    /// DeleteAPIDoc返回参数结构体
    public struct DeleteAPIDocResponse: TCResponse {
        /// 操作是否成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除 API 文档
    @inlinable
    public func deleteAPIDoc(_ input: DeleteAPIDocRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAPIDocResponse> {
        self.client.execute(action: "DeleteAPIDoc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除 API 文档
    @inlinable
    public func deleteAPIDoc(_ input: DeleteAPIDocRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAPIDocResponse {
        try await self.client.execute(action: "DeleteAPIDoc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除 API 文档
    @inlinable
    public func deleteAPIDoc(apiDocId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAPIDocResponse> {
        self.deleteAPIDoc(.init(apiDocId: apiDocId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除 API 文档
    @inlinable
    public func deleteAPIDoc(apiDocId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAPIDocResponse {
        try await self.deleteAPIDoc(.init(apiDocId: apiDocId), region: region, logger: logger, on: eventLoop)
    }
}
