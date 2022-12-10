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

extension Eiam {
    /// 删除账号组
    ///
    /// 删除账号组
    @inlinable
    public func deleteAccountGroup(_ input: DeleteAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAccountGroupResponse > {
        self.client.execute(action: "DeleteAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除账号组
    ///
    /// 删除账号组
    @inlinable
    public func deleteAccountGroup(_ input: DeleteAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountGroupResponse {
        try await self.client.execute(action: "DeleteAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteAccountGroup请求参数结构体
    public struct DeleteAccountGroupRequest: TCRequestModel {
        /// 账号组ID数组。
        public let accountGroupIdList: [String]
        
        public init (accountGroupIdList: [String]) {
            self.accountGroupIdList = accountGroupIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case accountGroupIdList = "AccountGroupIdList"
        }
    }
    
    /// DeleteAccountGroup返回参数结构体
    public struct DeleteAccountGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}