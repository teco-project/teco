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

extension Tcr {
    /// DeleteNamespacePersonal请求参数结构体
    public struct DeleteNamespacePersonalRequest: TCRequestModel {
        /// 命名空间名称
        public let namespace: String
        
        public init (namespace: String) {
            self.namespace = namespace
        }
        
        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
        }
    }
    
    /// DeleteNamespacePersonal返回参数结构体
    public struct DeleteNamespacePersonalResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除个人版命名空间
    ///
    /// 删除共享版命名空间
    @inlinable
    public func deleteNamespacePersonal(_ input: DeleteNamespacePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteNamespacePersonalResponse > {
        self.client.execute(action: "DeleteNamespacePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除个人版命名空间
    ///
    /// 删除共享版命名空间
    @inlinable
    public func deleteNamespacePersonal(_ input: DeleteNamespacePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespacePersonalResponse {
        try await self.client.execute(action: "DeleteNamespacePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
