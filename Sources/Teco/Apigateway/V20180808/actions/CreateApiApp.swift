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
    /// CreateApiApp请求参数结构体
    public struct CreateApiAppRequest: TCRequestModel {
        /// 用户自定义应用名称。
        public let apiAppName: String
        
        /// 应用描述
        public let apiAppDesc: String?
        
        public init (apiAppName: String, apiAppDesc: String? = nil) {
            self.apiAppName = apiAppName
            self.apiAppDesc = apiAppDesc
        }
        
        enum CodingKeys: String, CodingKey {
            case apiAppName = "ApiAppName"
            case apiAppDesc = "ApiAppDesc"
        }
    }
    
    /// CreateApiApp返回参数结构体
    public struct CreateApiAppResponse: TCResponseModel {
        /// 新增的应用详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiAppInfo?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 创建应用
    ///
    /// 本接口（CreateApiApp）用于创建应用。
    @inlinable
    public func createApiApp(_ input: CreateApiAppRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateApiAppResponse > {
        self.client.execute(action: "CreateApiApp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建应用
    ///
    /// 本接口（CreateApiApp）用于创建应用。
    @inlinable
    public func createApiApp(_ input: CreateApiAppRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiAppResponse {
        try await self.client.execute(action: "CreateApiApp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
