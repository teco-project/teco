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

extension Dnspod {
    /// 增值服务自动续费设置
    ///
    /// 增值服务自动续费设置
    @inlinable
    public func modifyVasAutoRenewStatus(_ input: ModifyVasAutoRenewStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyVasAutoRenewStatusResponse > {
        self.client.execute(action: "ModifyVasAutoRenewStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 增值服务自动续费设置
    ///
    /// 增值服务自动续费设置
    @inlinable
    public func modifyVasAutoRenewStatus(_ input: ModifyVasAutoRenewStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVasAutoRenewStatusResponse {
        try await self.client.execute(action: "ModifyVasAutoRenewStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyVasAutoRenewStatus请求参数结构体
    public struct ModifyVasAutoRenewStatusRequest: TCRequestModel {
        /// 资源ID。可以从控制台查看所有的资源
        public let resourceId: String
        
        /// enable 开启自动续费；disable 关闭自动续费
        public let status: String
        
        public init (resourceId: String, status: String) {
            self.resourceId = resourceId
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case status = "Status"
        }
    }
    
    /// ModifyVasAutoRenewStatus返回参数结构体
    public struct ModifyVasAutoRenewStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}