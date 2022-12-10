//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Essbasic {
    /// 生成慧眼API签名
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼慧眼API签名
    @inlinable
    public func createFaceIdSign(_ input: CreateFaceIdSignRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFaceIdSignResponse > {
        self.client.execute(action: "CreateFaceIdSign", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 生成慧眼API签名
    ///
    /// 该接口为第三方平台向电子签平台获取慧眼慧眼API签名
    @inlinable
    public func createFaceIdSign(_ input: CreateFaceIdSignRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFaceIdSignResponse {
        try await self.client.execute(action: "CreateFaceIdSign", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateFaceIdSign请求参数结构体
    public struct CreateFaceIdSignRequest: TCRequestModel {
        /// 调用方信息; 必选
        public let caller: Caller
        
        /// 除api_ticket之外的其它要参与签名的参数值,包括UserId
        public let values: [String]
        
        public init (caller: Caller, values: [String]) {
            self.caller = caller
            self.values = values
        }
        
        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case values = "Values"
        }
    }
    
    /// CreateFaceIdSign返回参数结构体
    public struct CreateFaceIdSignResponse: TCResponseModel {
        /// 慧眼API签名
        public let sign: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sign = "Sign"
            case requestId = "RequestId"
        }
    }
}