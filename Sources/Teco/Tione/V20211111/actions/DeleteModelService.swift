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

extension Tione {
    /// DeleteModelService请求参数结构体
    public struct DeleteModelServiceRequest: TCRequestModel {
        /// 服务id
        public let serviceId: String

        public init(serviceId: String) {
            self.serviceId = serviceId
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
        }
    }

    /// DeleteModelService返回参数结构体
    public struct DeleteModelServiceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除模型服务
    ///
    /// 根据服务id删除模型服务
    @inlinable @discardableResult
    public func deleteModelService(_ input: DeleteModelServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteModelServiceResponse> {
        self.client.execute(action: "DeleteModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除模型服务
    ///
    /// 根据服务id删除模型服务
    @inlinable @discardableResult
    public func deleteModelService(_ input: DeleteModelServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModelServiceResponse {
        try await self.client.execute(action: "DeleteModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除模型服务
    ///
    /// 根据服务id删除模型服务
    @inlinable @discardableResult
    public func deleteModelService(serviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteModelServiceResponse> {
        let input = DeleteModelServiceRequest(serviceId: serviceId)
        return self.client.execute(action: "DeleteModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除模型服务
    ///
    /// 根据服务id删除模型服务
    @inlinable @discardableResult
    public func deleteModelService(serviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModelServiceResponse {
        let input = DeleteModelServiceRequest(serviceId: serviceId)
        return try await self.client.execute(action: "DeleteModelService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
