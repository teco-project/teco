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

extension Apigateway {
    /// 生成文档和 SDK
    ///
    /// 本接口（GenerateApiDocument）用于自动生成 API 文档和 SDK，一个服务的一个环境生成一份文档和 SDK。
    @inlinable
    public func generateApiDocument(_ input: GenerateApiDocumentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GenerateApiDocumentResponse > {
        self.client.execute(action: "GenerateApiDocument", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 生成文档和 SDK
    ///
    /// 本接口（GenerateApiDocument）用于自动生成 API 文档和 SDK，一个服务的一个环境生成一份文档和 SDK。
    @inlinable
    public func generateApiDocument(_ input: GenerateApiDocumentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateApiDocumentResponse {
        try await self.client.execute(action: "GenerateApiDocument", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GenerateApiDocument请求参数结构体
    public struct GenerateApiDocumentRequest: TCRequestModel {
        /// 待创建文档的服务唯一 ID。
        public let serviceId: String
        
        /// 待创建 SDK 的服务所在环境。
        public let genEnvironment: String
        
        /// 待创建 SDK 的语言。当前只支持 Python 和 JavaScript。
        public let genLanguage: String
        
        public init (serviceId: String, genEnvironment: String, genLanguage: String) {
            self.serviceId = serviceId
            self.genEnvironment = genEnvironment
            self.genLanguage = genLanguage
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case genEnvironment = "GenEnvironment"
            case genLanguage = "GenLanguage"
        }
    }
    
    /// GenerateApiDocument返回参数结构体
    public struct GenerateApiDocumentResponse: TCResponseModel {
        /// api文档&sdk链接。
        public let result: DocumentSDK
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}