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
    /// ResetAPIDocPassword请求参数结构体
    public struct ResetAPIDocPasswordRequest: TCRequestModel {
        /// API文档ID
        public let apiDocId: String

        public init(apiDocId: String) {
            self.apiDocId = apiDocId
        }

        enum CodingKeys: String, CodingKey {
            case apiDocId = "ApiDocId"
        }
    }

    /// ResetAPIDocPassword返回参数结构体
    public struct ResetAPIDocPasswordResponse: TCResponseModel {
        /// API文档基本信息
        public let result: APIDoc

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 重置API文档密码
    @inlinable
    public func resetAPIDocPassword(_ input: ResetAPIDocPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAPIDocPasswordResponse> {
        self.client.execute(action: "ResetAPIDocPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置API文档密码
    @inlinable
    public func resetAPIDocPassword(_ input: ResetAPIDocPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAPIDocPasswordResponse {
        try await self.client.execute(action: "ResetAPIDocPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置API文档密码
    @inlinable
    public func resetAPIDocPassword(apiDocId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAPIDocPasswordResponse> {
        let input = ResetAPIDocPasswordRequest(apiDocId: apiDocId)
        return self.client.execute(action: "ResetAPIDocPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置API文档密码
    @inlinable
    public func resetAPIDocPassword(apiDocId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAPIDocPasswordResponse {
        let input = ResetAPIDocPasswordRequest(apiDocId: apiDocId)
        return try await self.client.execute(action: "ResetAPIDocPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
