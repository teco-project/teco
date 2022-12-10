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
    /// 从服务环境解绑使用计划
    ///
    /// 本接口（UnBindEnvironment）用于将使用计划从特定环境解绑。
    @inlinable
    public func unBindEnvironment(_ input: UnBindEnvironmentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UnBindEnvironmentResponse > {
        self.client.execute(action: "UnBindEnvironment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 从服务环境解绑使用计划
    ///
    /// 本接口（UnBindEnvironment）用于将使用计划从特定环境解绑。
    @inlinable
    public func unBindEnvironment(_ input: UnBindEnvironmentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindEnvironmentResponse {
        try await self.client.execute(action: "UnBindEnvironment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UnBindEnvironment请求参数结构体
    public struct UnBindEnvironmentRequest: TCRequestModel {
        /// 绑定类型，取值为 API、SERVICE，默认值为 SERVICE。
        public let bindType: String
        
        /// 待绑定的使用计划唯一 ID 列表。
        public let usagePlanIds: [String]
        
        /// 待解绑的服务环境。
        public let environment: String
        
        /// 待解绑的服务唯一 ID。
        public let serviceId: String
        
        /// API 唯一 ID 数组，当 BindType=API 时，需要传入此参数。
        public let apiIds: [String]?
        
        public init (bindType: String, usagePlanIds: [String], environment: String, serviceId: String, apiIds: [String]?) {
            self.bindType = bindType
            self.usagePlanIds = usagePlanIds
            self.environment = environment
            self.serviceId = serviceId
            self.apiIds = apiIds
        }
        
        enum CodingKeys: String, CodingKey {
            case bindType = "BindType"
            case usagePlanIds = "UsagePlanIds"
            case environment = "Environment"
            case serviceId = "ServiceId"
            case apiIds = "ApiIds"
        }
    }
    
    /// UnBindEnvironment返回参数结构体
    public struct UnBindEnvironmentResponse: TCResponseModel {
        /// 解绑操作是否成功。
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
