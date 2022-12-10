//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcr {
    /// 删除镜像加速服务
    @inlinable
    public func deleteImageAccelerateService(_ input: DeleteImageAccelerateServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteImageAccelerateServiceResponse > {
        self.client.execute(action: "DeleteImageAccelerateService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除镜像加速服务
    @inlinable
    public func deleteImageAccelerateService(_ input: DeleteImageAccelerateServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageAccelerateServiceResponse {
        try await self.client.execute(action: "DeleteImageAccelerateService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteImageAccelerateService请求参数结构体
    public struct DeleteImageAccelerateServiceRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String
        
        public init (registryId: String) {
            self.registryId = registryId
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
        }
    }
    
    /// DeleteImageAccelerateService返回参数结构体
    public struct DeleteImageAccelerateServiceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
