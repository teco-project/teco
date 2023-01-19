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

extension Vpc {
    /// DeleteServiceTemplate请求参数结构体
    public struct DeleteServiceTemplateRequest: TCRequestModel {
        /// 协议端口模板实例ID，例如：ppm-e6dy460g。
        public let serviceTemplateId: String

        public init(serviceTemplateId: String) {
            self.serviceTemplateId = serviceTemplateId
        }

        enum CodingKeys: String, CodingKey {
            case serviceTemplateId = "ServiceTemplateId"
        }
    }

    /// DeleteServiceTemplate返回参数结构体
    public struct DeleteServiceTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除协议端口模板
    ///
    /// 本接口（DeleteServiceTemplate）用于删除协议端口模板
    @inlinable
    public func deleteServiceTemplate(_ input: DeleteServiceTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceTemplateResponse> {
        self.client.execute(action: "DeleteServiceTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除协议端口模板
    ///
    /// 本接口（DeleteServiceTemplate）用于删除协议端口模板
    @inlinable
    public func deleteServiceTemplate(_ input: DeleteServiceTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceTemplateResponse {
        try await self.client.execute(action: "DeleteServiceTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除协议端口模板
    ///
    /// 本接口（DeleteServiceTemplate）用于删除协议端口模板
    @inlinable
    public func deleteServiceTemplate(serviceTemplateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceTemplateResponse> {
        self.deleteServiceTemplate(DeleteServiceTemplateRequest(serviceTemplateId: serviceTemplateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除协议端口模板
    ///
    /// 本接口（DeleteServiceTemplate）用于删除协议端口模板
    @inlinable
    public func deleteServiceTemplate(serviceTemplateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceTemplateResponse {
        try await self.deleteServiceTemplate(DeleteServiceTemplateRequest(serviceTemplateId: serviceTemplateId), region: region, logger: logger, on: eventLoop)
    }
}
