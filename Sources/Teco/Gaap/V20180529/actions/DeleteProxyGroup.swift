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

extension Gaap {
    /// DeleteProxyGroup请求参数结构体
    public struct DeleteProxyGroupRequest: TCRequestModel {
        /// 需要删除的通道组ID。
        public let groupId: String?
        
        /// 强制删除标识。其中：
        /// 0，不强制删除，
        /// 1，强制删除。
        /// 默认为0，当通道组中存在通道或通道组中存在监听器/规则绑定了源站时，且Force为0时，该操作会返回失败。
        public let force: UInt64?
        
        public init (groupId: String? = nil, force: UInt64? = nil) {
            self.groupId = groupId
            self.force = force
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case force = "Force"
        }
    }
    
    /// DeleteProxyGroup返回参数结构体
    public struct DeleteProxyGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除通道组
    ///
    /// 本接口（DeleteProxyGroup）用于删除通道组。
    @inlinable
    public func deleteProxyGroup(_ input: DeleteProxyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteProxyGroupResponse > {
        self.client.execute(action: "DeleteProxyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除通道组
    ///
    /// 本接口（DeleteProxyGroup）用于删除通道组。
    @inlinable
    public func deleteProxyGroup(_ input: DeleteProxyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProxyGroupResponse {
        try await self.client.execute(action: "DeleteProxyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
