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

import TecoCore

extension Apigateway {
    /// DeleteApiApp请求参数结构体
    public struct DeleteApiAppRequest: TCRequestModel {
        /// 应用唯一 ID。
        public let apiAppId: String

        public init(apiAppId: String) {
            self.apiAppId = apiAppId
        }

        enum CodingKeys: String, CodingKey {
            case apiAppId = "ApiAppId"
        }
    }

    /// DeleteApiApp返回参数结构体
    public struct DeleteApiAppResponse: TCResponseModel {
        /// 删除操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除应用
    ///
    /// 本接口（DeleteApiApp）用于删除已经创建的应用。
    @inlinable
    public func deleteApiApp(_ input: DeleteApiAppRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiAppResponse> {
        self.client.execute(action: "DeleteApiApp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除应用
    ///
    /// 本接口（DeleteApiApp）用于删除已经创建的应用。
    @inlinable
    public func deleteApiApp(_ input: DeleteApiAppRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApiAppResponse {
        try await self.client.execute(action: "DeleteApiApp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除应用
    ///
    /// 本接口（DeleteApiApp）用于删除已经创建的应用。
    @inlinable
    public func deleteApiApp(apiAppId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiAppResponse> {
        self.deleteApiApp(.init(apiAppId: apiAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除应用
    ///
    /// 本接口（DeleteApiApp）用于删除已经创建的应用。
    @inlinable
    public func deleteApiApp(apiAppId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApiAppResponse {
        try await self.deleteApiApp(.init(apiAppId: apiAppId), region: region, logger: logger, on: eventLoop)
    }
}
