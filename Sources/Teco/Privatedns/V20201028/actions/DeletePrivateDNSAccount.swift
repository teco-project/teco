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

extension Privatedns {
    /// 删除私有域解析账号
    @inlinable
    public func deletePrivateDNSAccount(_ input: DeletePrivateDNSAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeletePrivateDNSAccountResponse > {
        self.client.execute(action: "DeletePrivateDNSAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除私有域解析账号
    @inlinable
    public func deletePrivateDNSAccount(_ input: DeletePrivateDNSAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrivateDNSAccountResponse {
        try await self.client.execute(action: "DeletePrivateDNSAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeletePrivateDNSAccount请求参数结构体
    public struct DeletePrivateDNSAccountRequest: TCRequestModel {
        /// 私有域解析账号
        public let account: PrivateDNSAccount
        
        public init (account: PrivateDNSAccount) {
            self.account = account
        }
        
        enum CodingKeys: String, CodingKey {
            case account = "Account"
        }
    }
    
    /// DeletePrivateDNSAccount返回参数结构体
    public struct DeletePrivateDNSAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
