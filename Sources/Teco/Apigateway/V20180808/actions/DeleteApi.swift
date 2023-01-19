//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DeleteApi请求参数结构体
    public struct DeleteApiRequest: TCRequestModel {
        /// API 所在的服务唯一 ID。
        public let serviceId: String

        /// API 接口唯一 ID。
        public let apiId: String

        public init(serviceId: String, apiId: String) {
            self.serviceId = serviceId
            self.apiId = apiId
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case apiId = "ApiId"
        }
    }

    /// DeleteApi返回参数结构体
    public struct DeleteApiResponse: TCResponseModel {
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

    /// 删除API
    ///
    /// 本接口（DeleteApi）用于删除已经创建的API。
    @inlinable
    public func deleteApi(_ input: DeleteApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiResponse> {
        self.client.execute(action: "DeleteApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除API
    ///
    /// 本接口（DeleteApi）用于删除已经创建的API。
    @inlinable
    public func deleteApi(_ input: DeleteApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApiResponse {
        try await self.client.execute(action: "DeleteApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除API
    ///
    /// 本接口（DeleteApi）用于删除已经创建的API。
    @inlinable
    public func deleteApi(serviceId: String, apiId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiResponse> {
        self.deleteApi(DeleteApiRequest(serviceId: serviceId, apiId: apiId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除API
    ///
    /// 本接口（DeleteApi）用于删除已经创建的API。
    @inlinable
    public func deleteApi(serviceId: String, apiId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApiResponse {
        try await self.deleteApi(DeleteApiRequest(serviceId: serviceId, apiId: apiId), region: region, logger: logger, on: eventLoop)
    }
}
