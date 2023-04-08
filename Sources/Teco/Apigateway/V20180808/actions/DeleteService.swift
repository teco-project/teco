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
    /// DeleteService请求参数结构体
    public struct DeleteServiceRequest: TCRequestModel {
        /// 待删除服务的唯一 ID。
        public let serviceId: String

        /// 跳过删除前置条件校验（仅支持独享实例上的服务）
        public let skipVerification: Int64?

        public init(serviceId: String, skipVerification: Int64? = nil) {
            self.serviceId = serviceId
            self.skipVerification = skipVerification
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case skipVerification = "SkipVerification"
        }
    }

    /// DeleteService返回参数结构体
    public struct DeleteServiceResponse: TCResponseModel {
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

    /// 删除服务
    ///
    /// 本接口（DeleteService）用于删除 API 网关中某个服务。
    @inlinable
    public func deleteService(_ input: DeleteServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceResponse> {
        self.client.execute(action: "DeleteService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除服务
    ///
    /// 本接口（DeleteService）用于删除 API 网关中某个服务。
    @inlinable
    public func deleteService(_ input: DeleteServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceResponse {
        try await self.client.execute(action: "DeleteService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除服务
    ///
    /// 本接口（DeleteService）用于删除 API 网关中某个服务。
    @inlinable
    public func deleteService(serviceId: String, skipVerification: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceResponse> {
        self.deleteService(.init(serviceId: serviceId, skipVerification: skipVerification), region: region, logger: logger, on: eventLoop)
    }

    /// 删除服务
    ///
    /// 本接口（DeleteService）用于删除 API 网关中某个服务。
    @inlinable
    public func deleteService(serviceId: String, skipVerification: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceResponse {
        try await self.deleteService(.init(serviceId: serviceId, skipVerification: skipVerification), region: region, logger: logger, on: eventLoop)
    }
}
