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

extension Iecp {
    /// 删除命名空间
    ///
    /// 删除命名空间
    @inlinable
    public func deleteNamespace(_ input: DeleteNamespaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteNamespaceResponse > {
        self.client.execute(action: "DeleteNamespace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除命名空间
    ///
    /// 删除命名空间
    @inlinable
    public func deleteNamespace(_ input: DeleteNamespaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespaceResponse {
        try await self.client.execute(action: "DeleteNamespace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteNamespace请求参数结构体
    public struct DeleteNamespaceRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitID: UInt64
        
        /// 命名空间
        public let namespace: String
        
        public init (edgeUnitID: UInt64, namespace: String) {
            self.edgeUnitID = edgeUnitID
            self.namespace = namespace
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case namespace = "Namespace"
        }
    }
    
    /// DeleteNamespace返回参数结构体
    public struct DeleteNamespaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}