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

extension Cdb {
    /// DeleteAccounts请求参数结构体
    public struct DeleteAccountsRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String
        
        /// 云数据库账号。
        public let accounts: [Account]
        
        public init (instanceId: String, accounts: [Account]) {
            self.instanceId = instanceId
            self.accounts = accounts
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
        }
    }
    
    /// DeleteAccounts返回参数结构体
    public struct DeleteAccountsResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }
    
    /// 删除云数据库的账号
    ///
    /// 本接口(DeleteAccounts)用于删除云数据库的账户。
    @inlinable
    public func deleteAccounts(_ input: DeleteAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAccountsResponse > {
        self.client.execute(action: "DeleteAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除云数据库的账号
    ///
    /// 本接口(DeleteAccounts)用于删除云数据库的账户。
    @inlinable
    public func deleteAccounts(_ input: DeleteAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountsResponse {
        try await self.client.execute(action: "DeleteAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
