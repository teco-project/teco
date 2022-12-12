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

extension Bmeip {
    /// DeleteEipAcl请求参数结构体
    public struct DeleteEipAclRequest: TCRequestModel {
        /// 待删除的 ACL 实例 ID
        public let aclId: String
        
        public init (aclId: String) {
            self.aclId = aclId
        }
        
        enum CodingKeys: String, CodingKey {
            case aclId = "AclId"
        }
    }
    
    /// DeleteEipAcl返回参数结构体
    public struct DeleteEipAclResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除弹性公网IP ACL
    @inlinable
    public func deleteEipAcl(_ input: DeleteEipAclRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteEipAclResponse > {
        self.client.execute(action: "DeleteEipAcl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除弹性公网IP ACL
    @inlinable
    public func deleteEipAcl(_ input: DeleteEipAclRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEipAclResponse {
        try await self.client.execute(action: "DeleteEipAcl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
