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

extension Cynosdb {
    /// 创建账号
    ///
    /// 创建账号
    @inlinable
    public func createAccounts(_ input: CreateAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAccountsResponse > {
        self.client.execute(action: "CreateAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建账号
    ///
    /// 创建账号
    @inlinable
    public func createAccounts(_ input: CreateAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountsResponse {
        try await self.client.execute(action: "CreateAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAccounts请求参数结构体
    public struct CreateAccountsRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String
        
        /// 新账户列表
        public let accounts: [NewAccount]
        
        public init (clusterId: String, accounts: [NewAccount]) {
            self.clusterId = clusterId
            self.accounts = accounts
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case accounts = "Accounts"
        }
    }
    
    /// CreateAccounts返回参数结构体
    public struct CreateAccountsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}