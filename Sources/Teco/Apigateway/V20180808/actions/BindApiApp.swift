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
    /// 绑定应用到API
    ///
    /// 本接口（BindApiApp）用于绑定应用到API。
    @inlinable
    public func bindApiApp(_ input: BindApiAppRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BindApiAppResponse > {
        self.client.execute(action: "BindApiApp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 绑定应用到API
    ///
    /// 本接口（BindApiApp）用于绑定应用到API。
    @inlinable
    public func bindApiApp(_ input: BindApiAppRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindApiAppResponse {
        try await self.client.execute(action: "BindApiApp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// BindApiApp请求参数结构体
    public struct BindApiAppRequest: TCRequestModel {
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
    
    /// BindApiApp返回参数结构体
    public struct BindApiAppResponse: TCResponseModel {
        /// 绑定操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
