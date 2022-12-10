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

extension Scf {
    /// 删除预置并发
    ///
    /// 删除函数版本的预置并发配置。
    @inlinable
    public func deleteProvisionedConcurrencyConfig(_ input: DeleteProvisionedConcurrencyConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteProvisionedConcurrencyConfigResponse > {
        self.client.execute(action: "DeleteProvisionedConcurrencyConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除预置并发
    ///
    /// 删除函数版本的预置并发配置。
    @inlinable
    public func deleteProvisionedConcurrencyConfig(_ input: DeleteProvisionedConcurrencyConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProvisionedConcurrencyConfigResponse {
        try await self.client.execute(action: "DeleteProvisionedConcurrencyConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteProvisionedConcurrencyConfig请求参数结构体
    public struct DeleteProvisionedConcurrencyConfigRequest: TCRequestModel {
        /// 需要删除预置并发的函数的名称
        public let functionName: String
        
        /// 函数的版本号
        public let qualifier: String
        
        /// 函数所属命名空间，默认为default
        public let namespace: String?
        
        public init (functionName: String, qualifier: String, namespace: String?) {
            self.functionName = functionName
            self.qualifier = qualifier
            self.namespace = namespace
        }
        
        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case qualifier = "Qualifier"
            case namespace = "Namespace"
        }
    }
    
    /// DeleteProvisionedConcurrencyConfig返回参数结构体
    public struct DeleteProvisionedConcurrencyConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}