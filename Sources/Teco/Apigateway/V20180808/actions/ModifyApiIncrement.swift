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
    /// 增量更新API接口
    ///
    /// 提供增量更新API能力，主要是给程序调用（区别于ModifyApi，该接口是需要传入API的全量参数，对console使用较友好）
    @inlinable
    public func modifyApiIncrement(_ input: ModifyApiIncrementRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyApiIncrementResponse > {
        self.client.execute(action: "ModifyApiIncrement", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 增量更新API接口
    ///
    /// 提供增量更新API能力，主要是给程序调用（区别于ModifyApi，该接口是需要传入API的全量参数，对console使用较友好）
    @inlinable
    public func modifyApiIncrement(_ input: ModifyApiIncrementRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApiIncrementResponse {
        try await self.client.execute(action: "ModifyApiIncrement", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyApiIncrement请求参数结构体
    public struct ModifyApiIncrementRequest: TCRequestModel {
        /// 服务ID
        public let serviceId: String
        
        /// 接口ID
        public let apiId: String
        
        /// 需要修改的API auth类型(可选择OAUTH-授权API)
        public let businessType: String
        
        /// oauth接口需要修改的公钥值
        public let publicKey: String?
        
        /// oauth接口重定向地址
        public let loginRedirectUrl: String?
        
        public init (serviceId: String, apiId: String, businessType: String, publicKey: String?, loginRedirectUrl: String?) {
            self.serviceId = serviceId
            self.apiId = apiId
            self.businessType = businessType
            self.publicKey = publicKey
            self.loginRedirectUrl = loginRedirectUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case apiId = "ApiId"
            case businessType = "BusinessType"
            case publicKey = "PublicKey"
            case loginRedirectUrl = "LoginRedirectUrl"
        }
    }
    
    /// ModifyApiIncrement返回参数结构体
    public struct ModifyApiIncrementResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
