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

extension Apigateway {
    /// UnbindApiApp请求参数结构体
    public struct UnbindApiAppRequest: TCRequestModel {
        /// 待绑定的应用唯一 ID 。
        public let apiAppId: String
        
        /// 待绑定的环境。
        public let environment: String
        
        /// 待绑定的服务唯一 ID。
        public let serviceId: String
        
        /// 待绑定的API唯一ID。
        public let apiId: String
        
        public init (apiAppId: String, environment: String, serviceId: String, apiId: String) {
            self.apiAppId = apiAppId
            self.environment = environment
            self.serviceId = serviceId
            self.apiId = apiId
        }
        
        enum CodingKeys: String, CodingKey {
            case apiAppId = "ApiAppId"
            case environment = "Environment"
            case serviceId = "ServiceId"
            case apiId = "ApiId"
        }
    }
    
    /// UnbindApiApp返回参数结构体
    public struct UnbindApiAppResponse: TCResponseModel {
        /// 解除绑定操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 解除应用和API绑定关系
    ///
    /// 本接口（UnbindApiApp）用于解除应用和API绑定。
    @inlinable
    public func unbindApiApp(_ input: UnbindApiAppRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UnbindApiAppResponse > {
        self.client.execute(action: "UnbindApiApp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 解除应用和API绑定关系
    ///
    /// 本接口（UnbindApiApp）用于解除应用和API绑定。
    @inlinable
    public func unbindApiApp(_ input: UnbindApiAppRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindApiAppResponse {
        try await self.client.execute(action: "UnbindApiApp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
