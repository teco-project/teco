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

extension Dasb {
    /// 删除访问权限
    ///
    /// 删除访问权限
    @inlinable
    public func deleteAcls(_ input: DeleteAclsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAclsResponse > {
        self.client.execute(action: "DeleteAcls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除访问权限
    ///
    /// 删除访问权限
    @inlinable
    public func deleteAcls(_ input: DeleteAclsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAclsResponse {
        try await self.client.execute(action: "DeleteAcls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteAcls请求参数结构体
    public struct DeleteAclsRequest: TCRequestModel {
        /// 待删除的权限ID集合
        public let idSet: [UInt64]
        
        public init (idSet: [UInt64]) {
            self.idSet = idSet
        }
        
        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
        }
    }
    
    /// DeleteAcls返回参数结构体
    public struct DeleteAclsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}