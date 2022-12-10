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
    /// 删除命名空间加签策略
    ///
    /// 删除命名空间加签策略
    @inlinable
    public func deleteSignaturePolicy(_ input: DeleteSignaturePolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteSignaturePolicyResponse > {
        self.client.execute(action: "DeleteSignaturePolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除命名空间加签策略
    ///
    /// 删除命名空间加签策略
    @inlinable
    public func deleteSignaturePolicy(_ input: DeleteSignaturePolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSignaturePolicyResponse {
        try await self.client.execute(action: "DeleteSignaturePolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteSignaturePolicy请求参数结构体
    public struct DeleteSignaturePolicyRequest: TCRequestModel {
        /// 实例ID
        public let registryId: String
        
        /// 命名空间的名称
        public let namespaceName: String
        
        public init (registryId: String, namespaceName: String) {
            self.registryId = registryId
            self.namespaceName = namespaceName
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
        }
    }
    
    /// DeleteSignaturePolicy返回参数结构体
    public struct DeleteSignaturePolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}