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

extension Tcr {
    /// 创建镜像签名
    ///
    /// 为一个镜像版本创建签名
    @inlinable
    public func createSignature(_ input: CreateSignatureRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSignatureResponse > {
        self.client.execute(action: "CreateSignature", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建镜像签名
    ///
    /// 为一个镜像版本创建签名
    @inlinable
    public func createSignature(_ input: CreateSignatureRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSignatureResponse {
        try await self.client.execute(action: "CreateSignature", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateSignature请求参数结构体
    public struct CreateSignatureRequest: TCRequestModel {
        /// 实例ID
        public let registryId: String
        
        /// 命名空间名称
        public let namespaceName: String
        
        /// 仓库名称
        public let repositoryName: String
        
        /// Tag名称
        public let imageVersion: String
        
        public init (registryId: String, namespaceName: String, repositoryName: String, imageVersion: String) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.repositoryName = repositoryName
            self.imageVersion = imageVersion
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case repositoryName = "RepositoryName"
            case imageVersion = "ImageVersion"
        }
    }
    
    /// CreateSignature返回参数结构体
    public struct CreateSignatureResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}